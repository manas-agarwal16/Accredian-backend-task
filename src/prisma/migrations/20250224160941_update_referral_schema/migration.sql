/*
  Warnings:

  - You are about to drop the column `appliedJobRole` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `candidateEmail` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `candidateLinkedIn` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `candidateName` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `candidatePhone` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `candidateResumeUrl` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `currentJobTitle` on the `referral` table. All the data in the column will be lost.
  - You are about to drop the column `experienceLevel` on the `referral` table. All the data in the column will be lost.
  - Added the required column `courseName` to the `Referral` table without a default value. This is not possible if the table is not empty.
  - Added the required column `refereeEmail` to the `Referral` table without a default value. This is not possible if the table is not empty.
  - Added the required column `refereeName` to the `Referral` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `referral` DROP COLUMN `appliedJobRole`,
    DROP COLUMN `candidateEmail`,
    DROP COLUMN `candidateLinkedIn`,
    DROP COLUMN `candidateName`,
    DROP COLUMN `candidatePhone`,
    DROP COLUMN `candidateResumeUrl`,
    DROP COLUMN `currentJobTitle`,
    DROP COLUMN `experienceLevel`,
    ADD COLUMN `courseName` ENUM('FULL_STACK_WEB_DEVELOPMENT', 'DATA_STRUCTURES_ALGORITHMS', 'MACHINE_LEARNING_AI', 'MOBILE_APP_DEVELOPMENT', 'CYBERSECURITY', 'CLOUD_COMPUTING', 'BLOCKCHAIN_DEVELOPMENT', 'DIGITAL_MARKETING', 'SEO_SOCIAL_MEDIA', 'BUSINESS_ANALYTICS', 'ENTREPRENEURSHIP', 'FINANCE_INVESTMENT', 'UI_UX_DESIGN', 'GRAPHIC_DESIGN', 'VIDEO_EDITING', 'GAME_DEVELOPMENT', 'PUBLIC_SPEAKING', 'PRODUCTIVITY', 'LANGUAGE_LEARNING') NOT NULL,
    ADD COLUMN `refereeEmail` VARCHAR(191) NOT NULL,
    ADD COLUMN `refereeName` VARCHAR(191) NOT NULL,
    ADD COLUMN `refereePhone` VARCHAR(10) NULL;
