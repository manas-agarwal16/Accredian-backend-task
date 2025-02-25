import dotenv from "dotenv";
dotenv.config();
import { app } from "./app.js";

const PORT = process.env.PORT;
console.log("PORT ", PORT);

app.listen(PORT, () => {
  console.log(`server is running on the port ${PORT}`);
});
