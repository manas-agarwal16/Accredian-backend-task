import express from "express";
const app = express();
import cors from "cors";

const origin = process.env.CORS_ORIGIN;
console.log("CORS_ORIGIN", origin);

app.use(
  cors({
    origin,
    credentials: true,
    optionsSuccessStatus: 200,
  })
);

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));

import { referNow } from "./controllers/refer.controller.js";

app.post("/refer-now", referNow);

app.get("/", (req, res) => {
  res.send("Hello World");
});

export { app };
