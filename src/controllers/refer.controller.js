import { PrismaClient } from "@prisma/client";
import {
  ApiResponse,
  uploadOncloudinary,
  sendOTPThroughEmail,
  referrerEmailContent,
  refereeEmailContent,
} from "../utils/index.js";

const prisma = new PrismaClient();

const referNow = async function (req, res) {
  const {
    referrerName,
    referrerEmail,
    refereeName,
    refereeEmail,
    refereePhone,
    courseName,
    referrerNote,
  } = req.body;

  if (
    !referrerName ||
    !referrerEmail ||
    !refereeName ||
    !refereeEmail ||
    !courseName
  ) {
    return ApiResponse(401, {}, "Please enter all required fields");
  }

  let referralCode;
  try {
    // Generating a random referral code associcated with the referrer and sending it to referee. to enroll in the couse with this code to get the discount.
    referralCode = "ACC" + Math.floor(Math.random() * 10000);

    await prisma.referral.create({
      referrerName,
      referrerEmail,
      refereeName,
      refereeEmail,
      refereePhone,
      courseName,
      referrerNote,
      referralCode,
    });
  } catch (error) {
    console.error(`Error in creating a referral ${error}`);
    return ApiResponse(501, {}, "Error in creating a referral ${error}");
  }
  // Notifing the referrer and referee via email.
  try {
    const referrerContent = referrerEmailContent(
      referrerName,
      refereeName,
      refereeEmail,
      refereePhone,
      courseName,
      referrerNote
    );

    const refereeContent = refereeEmailContent(
      referrerName,
      referrerEmail,
      refereeName,
      refereeEmail,
      refereePhone,
      courseName,
      referrerNote,
      referralCode
    );

    await sendOTPThroughEmail(
      referrerEmail,
      "Your Referral has been Sent Successfully!",
      referrerContent
    );
    await sendOTPThroughEmail(
      refereeEmail,
      `You've Been Referred for a Course!`,
      refereeContent
    );

    return ApiResponse(
      201,
      { referral },
      "Your referral has been successfully recorded"
    );
  } catch (error) {
    console.error("Error in sending email notification", error);
    return ApiResponse(501, {}, "Error in sending email notification");
  }
};

export { referNow };
