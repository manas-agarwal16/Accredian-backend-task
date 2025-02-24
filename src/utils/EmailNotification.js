import nodemailer from "nodemailer";

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
    from: "manas.agarwal1604@gmail.com",
    to: email,
    subject: `${subject}`,
    html: `${message}`,
  };

  try {
    let info = await transporter.sendMail(mailOptions);
    return true; // Email sent successfully
  } catch (error) {
    console.error("Error message:", error.message);
    return false;
  }
};

export { sendOTPThroughEmail };
