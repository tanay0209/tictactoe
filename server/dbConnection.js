const mongoose = require("mongoose");
require('dotenv').config()
const DB_CONNECTION = process.env.DB_CONNECTION

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