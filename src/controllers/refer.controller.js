import { PrismaClient, CourseCategory } from "@prisma/client";
import {
  ApiResponse,
  sendOTPThroughEmail,
  referrerEmailContent,
  refereeEmailContent,
} from "../utils/index.js";

const prisma = new PrismaClient();

const referNow = async function (req, res) {
  let {
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
    return res
      .status(401)
      .json(new ApiResponse(401, {}, "Please enter all required fields"));
  }

  let referralCode, referral;
  try {
    // Generating a random referral code associcated with the referrer and sending it to referee. to enroll in the couse with this code to get the discount.
    referralCode = "ACC" + Math.floor(Math.random() * 10000);

    courseName = CourseCategory[courseName.replaceAll(" ", "_")];

    await prisma.referral.deleteMany({
      where: {
        referrerEmail: referrerEmail,
        refereeEmail: refereeEmail,
        courseName: courseName,
      },
    });

    referral = await prisma.referral.create({
      data: {
        referrerName,
        referrerEmail,
        refereeName,
        refereeEmail,
        refereePhone,
        courseName,
        referrerNote,
        referralCode,
      },
    });
  } catch (error) {
    console.error(`Error in creating a referral ${error}`);
    return res
      .status(501)
      .json(new ApiResponse(501, {}, "Error in creating a referral ${error}"));
  }
  // Notifing the referrer and referee via email.
  try {
    const referrerContent = referrerEmailContent({
      referrerName,
      refereeName,
      refereeEmail,
      refereePhone,
      courseName,
      referrerNote,
      referralCode,
    });

    const refereeContent = refereeEmailContent({
      referrerName,
      referrerEmail,
      refereeName,
      refereeEmail,
      refereePhone,
      courseName,
      referrerNote,
      referralCode,
    });

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

    return res
      .status(201)
      .json(
        new ApiResponse(
          201,
          { referral },
          "Your referral has been successfully recorded"
        )
      );
  } catch (error) {
    console.error("Error in sending email notification", error);
    return res
      .status(501)
      .json(new ApiResponse(501, {}, "Error in sending email notification"));
  }
};

export { referNow };
