const mongoose = require("mongoose");
const DB_CONNECTION = process.env.DB_CONNECTION
require("dotenv").config()
exports.dbConnection = () =>{
    mongoose
  .connect(DB_CONNECTION)
  .then(() => {
    console.log("Connected to DB");
  })
  .catch((e) => {
    console.log(e);
  })
}