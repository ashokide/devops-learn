const express = require("express");
const dotenv = require("dotenv").config();
const cors = require("cors");
const app = express();
const dbConnection = require("./db_connection");
const jsonData = require("./data.json");
app.use(cors());

const PORT = process.env.PORT || 8000;
let client;

app.get("/api", (req, res) => {
  res.status(200).json({
    msg: `server is up and running on port ${PORT}`,
  });
});

app.get("/get-data", async (req, res) => {
  try {
    const dbName = "three_tier_db";
    const db = client.db(dbName);
    const collection = db.collection("list_of_fruits");
    const result = await collection.find({}).toArray();
    res.status(200).send(result);
  } catch (err) {
    res.status(400).send(err);
  }
});

app.get("/set-data", async (req, res) => {
  try {
    const dbName = "three_tier_db";
    const db = client.db(dbName);
    const collection = db.collection("list_of_fruits");
    const insertedResult = await collection.insertMany(jsonData);
    res.status(200).json({
      insertedResult,
    });
  } catch (err) {
    res.status(400).send(err);
  }
});

app.listen(PORT, async () => {
  console.log(`SERVER LISTENING ON : ${PORT}`);
  try {
    client = await dbConnection.db_connection();
    console.log(`MONGODB LISTENING ON : ${process.env.MONGO_URI}`);
  } catch (err) {
    console.log(`MONGODB FAILED TO START : ${err}`);
  }
});
