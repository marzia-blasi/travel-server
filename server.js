// 1 IMPORT EXPRESS

const express = require("express");
const app = express();
const PORT = process.env.PORT;

// 2 import CORS
const cors = require("cors");
app.use(express.json());
app.use(cors());

//3 static asset
app.use(express.static("img"));

// 4 router

const postsRouter = require("./Routers/postsRouter.js");

app.use("/posts", postsRouter);

/*
app.get("/", (req, res) => {
  console.log("ciao");
  res.send("Hello World!, Marzia!");
});
*/

app.listen(PORT, () => {
  console.log(`Example app listening on port ${PORT}`);
});
