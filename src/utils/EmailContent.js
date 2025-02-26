//Email content for the referrer
const referrerEmailContent = ({
  referrerName,
  refereeName,
  refereeEmail,
  refereePhone,
  courseName,
  referrerNote,
  referralCode,
}) => {
  return `<h2>Thank you for referring ${refereeName}!</h2>
  <p>You have successfully referred <strong>${refereeName}</strong> for the <strong>${courseName}</strong> course.</p>
  <p>Your referral code is: <strong>${referralCode}</strong>. We have also shared this code with the referee so they can claim their referral bonus</p>
  <p>${referrerNote ? `Your note: "${referrerNote}"` : ""}</p>
  <p>We appreciate your effort in helping others learn!</p>
  <p>We’ll update you once they enroll. Stay tuned for exciting rewards!</p>
  <p>Best Regards, <br><strong>The Accredian Team</strong></p>`;
};

// Email content for the referee
const refereeEmailContent = ({
  referrerName,
  referrerEmail,
  refereeName,
  refereeEmail,
  refereePhone,
  courseName,
  referrerNote,
  referralCode,
}) => {
  return `<h2>Hello ${refereeName},</h2>
      <p><strong>${referrerName}</strong> has referred you to join the <strong>${courseName}</strong> course.</p>
      <p>Enroll in the ${courseName} course using the code <strong>${referralCode}</strong></p>
      <p>${
        referrerNote ? `They left a note for you: "${referrerNote}"` : ""
      }</p>
      <p>Looking forward to welcoming you to the Accredian community!</p>
      <p>Best Regards, <br><strong>The Accredian Team</strong></p>`;
};

export { refereeEmailContent, referrerEmailContent };
