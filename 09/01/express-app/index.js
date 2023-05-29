const express = require("express");
const app = express();
const port = 3000;

app.use(express.json());

app.get("/live", (req, res) => {
  res.status(200).send("Status: Live");
});

app.get("/ready", async (req, res) => {
  try {
    res.status(200).send("Status: Ready");
  } catch (error) {
    res.status(500).send("Status: Not Ready");
  }
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});