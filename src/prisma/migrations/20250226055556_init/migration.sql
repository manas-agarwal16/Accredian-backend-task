-- CreateTable
CREATE TABLE `Referral` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `referrerName` VARCHAR(191) NOT NULL,
    `referrerEmail` VARCHAR(191) NOT NULL,
    `refereeName` VARCHAR(191) NOT NULL,
    `refereeEmail` VARCHAR(191) NOT NULL,
    `refereePhone` VARCHAR(10) NULL,
    `courseName` ENUM('Digital_Transformation', 'Product_Management', 'Strategic_Product_Management', 'Data_Analyst', 'Data_Structures_and_Algorithms', 'Cyber_Security', 'Blockchain_Development') NOT NULL,
    `referrerNote` VARCHAR(191) NULL,
    `referralCode` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
