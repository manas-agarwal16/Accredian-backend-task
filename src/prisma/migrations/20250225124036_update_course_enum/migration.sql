/*
  Warnings:

  - The values [FULL_STACK_WEB_DEVELOPMENT,DATA_STRUCTURES_ALGORITHMS,MACHINE_LEARNING_AI,MOBILE_APP_DEVELOPMENT,CYBERSECURITY,CLOUD_COMPUTING,BLOCKCHAIN_DEVELOPMENT,DIGITAL_MARKETING,SEO_SOCIAL_MEDIA,BUSINESS_ANALYTICS,ENTREPRENEURSHIP,FINANCE_INVESTMENT,UI_UX_DESIGN,GRAPHIC_DESIGN,VIDEO_EDITING,GAME_DEVELOPMENT,PUBLIC_SPEAKING,PRODUCTIVITY,LANGUAGE_LEARNING] on the enum `Referral_courseName` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `referral` MODIFY `courseName` ENUM('Digital_Transformation', 'Product_Management', 'Strategic_Product_Management', 'Data_Analyst', 'Data_Structures_and_Algorithms', 'Cyber_Security', 'Blockchain_Development') NOT NULL;
