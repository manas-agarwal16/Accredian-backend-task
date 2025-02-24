import { v2 as cloudinary } from "cloudinary";
import fs from "fs";

cloudinary.config({
  cloud_name: process.env.CLOUDINARY_CLOUD_NAME,
  api_key: process.env.CLOUDINARY_API_KEY,
  api_secret: process.env.CLOUDINARY_API_SECRET,
});

const uploadOncloudinary = async (localFilePath) => {
  try {
    const upload = await cloudinary.uploader.upload(localFilePath, {
      resource_type: "auto",
    });

    console.log(`file is uploaded successfully on cloudinary: ${upload?.url}`);
    fs.unlinkSync(localFilePath);

    return upload;
  } catch (error) {
    console.log("error in uploading file to cloudinary: ", error);

    if (!localFilePath) {
      fs.unlinkSync(localFilePath);
    }

    return null;
  }
};

const deleteFileFromCloudinary = async (public_id) => {
  try {
    const result = await cloudinary.uploader.destroy(public_id);

    console.log("deletion of cloudinay information: ", result);

    return result;
  } catch (error) {
    console.log("error in deleting file from cloudinary");
    
    throw error;
  }
};

export { uploadOncloudinary, deleteFileFromCloudinary };
