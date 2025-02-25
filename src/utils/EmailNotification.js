import dotenv from "dotenv";
dotenv.config();
import nodemailer from "nodemailer";

console.log("NODEMAILER_EMAIL : ", process.env.NODEMAILER_EMAIL);
console.log("NODEMAILER_PASSWORD : ", process.env.NODEMAILER_PASSWORD);

const transporter = nodemailer.createTransport({
  service: "gmail",
  host: "smtp.gmail.com",
  port: 587,
  secure: false,
  auth: {
    user: process.env.NODEMAILER_EMAIL,
    pass: process.env.NODEMAILER_PASSWORD,
  },
});

transporter.on("sent", (info) => {
  console.log("Email sent:", info.response);
  if (info.rejected.length > 0) {
    console.log("Some recipients were rejected:", info.rejected);
    return false;
  }
});

const sendOTPThroughEmail = async (email, subject, message) => {
  let mailOptions = {
    from: process.env.NODEMAILER_EMAIL,
    to: email,
    subject: `${subject}`,
    html: `${message}`,
  };

  try {
    let info = await transporter.sendMail(mailOptions);
    return true; // Email sent successfully
  } catch (error) {
    console.error("Error message:", error);
    return false;
  }
};

export { sendOTPThroughEmail };
