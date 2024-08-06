const express = require("express");
const path = require("path");
const app = express();
app.use(express.static(path.join(__dirname, "public")));
const PORT = process.env.PORT || 3000;

app.get("/", function (req, res) {
  res.sendFile(path.join(__dirname, "public", "home.html"));
});

app.listen(PORT, () => {
  console.log(`APP LISTENING ON : ${PORT}`);
});
