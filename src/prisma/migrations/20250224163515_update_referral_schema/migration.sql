/*
  Warnings:

  - Added the required column `referralCode` to the `Referral` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `referral` ADD COLUMN `referralCode` INTEGER NOT NULL;
