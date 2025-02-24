import express from "express";
const app = express();

const PORT = process.env.PORT;
console.log("PORT ", PORT);

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));

import { referNow } from "./controllers/refer.controller.js";

app.post("/refer-now", referNow);

app.listen(PORT, () => {
  console.log(`server is running on the port ${PORT}`);
});

export { app };
