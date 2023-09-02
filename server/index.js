const express = require("express");
const http = require("http");
const port = process.env.PORT | 3000;
const app = express();
require('dotenv').config()
const server = http.createServer(app);
const io = require("socket.io")(server);
const {dbConnection} = require("./dbConnection")

io.on("connection",(socket)=>{
    socket.on('createRoom',({nickname})=>{
      console.log(nickname);
    })
})
dbConnection()

app.use(express.json());

server.listen(port, "0.0.0.0", () => {
  console.log(`Server started and running at ${port}`);
});
