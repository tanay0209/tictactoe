const express = require("express");
const http = require("http");
const port = process.env.PORT | 3000;
const app = express();
require("dotenv").config();
const server = http.createServer(app);
const io = require("socket.io")(server);
const { dbConnection } = require("./dbConnection");
const Room = require("./models/room");

io.on("connection", (socket) => {
  console.log("Connected");

  socket.on("createRoom", async ({ nickname }) => {
    console.log(nickname);
    try {
      let room = new Room();
      let player = {
        socketId: socket.id,
        nickname,
        playerType: "X",
      };
      room.players.push(player);
      room.turn = player;
      room = await room.save();
      const roomId = room._id.toString();
      socket.join(roomId);
      io.to(roomId).emit("createRoomSuccess", room);
    } catch (error) {
      console.log(error);
    }
  });

  socket.on("joinRoom", async ({ nickname, roomId }) => {
    try {
      if (!roomId.match(/^[0-9a-fA-F]{24}$/)) {
        socket.emit("errorOccurred",'Please enter valid roomId')
        return
      }
      let room = await Room.findById(roomId)
      if (room.isJoin) {
        let player = {
          nickname,
          socketID: socket.id,
          playerType:'O'
        }
        socket.join(roomId);
        room.players.push(player)
        room.isJoin = false
        room = await room.save()
        io.to(roomId).emit("joinRoomSuccess",room)
        io.to(roomId).emit("updatePlayers",room.players)
        io.to(roomId).emit('updateRoom',room);
      }else{
        socket.emit('errorOccurred',"Game is in progress try again later")
      }
    } catch (error) {
      console.log(error);
    }
  });
});
dbConnection();

app.use(express.json());

server.listen(port, "0.0.0.0", () => {
  console.log(`Server started and running at ${port}`);
});
