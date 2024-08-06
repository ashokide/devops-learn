const mongodb = require("mongodb");
const MONGO_URI = process.env.MONGO_URI || "mongodb://localhost:27017";

module.exports.db_connection = async () => {
  const client = new mongodb.MongoClient(MONGO_URI);
  await client.connect();
  return client;
};
