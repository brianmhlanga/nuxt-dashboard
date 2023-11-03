/*
  Warnings:

  - The values [BUYER] on the enum `forum_type` will be removed. If these variants are still used in the database, this will fail.
  - The values [BUYER] on the enum `forum_type` will be removed. If these variants are still used in the database, this will fail.
  - The values [BUYER] on the enum `forum_type` will be removed. If these variants are still used in the database, this will fail.
  - The values [BUYER] on the enum `forum_type` will be removed. If these variants are still used in the database, this will fail.
  - You are about to drop the `buyer` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[budget_id]` on the table `costcenter` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `budget_id` to the `costcenter` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `buyer` DROP FOREIGN KEY `buyer_user_id_fkey`;

-- DropForeignKey
ALTER TABLE `commoditycodes` DROP FOREIGN KEY `commoditycodes_buyer_id_fkey`;

-- DropForeignKey
ALTER TABLE `requisitionline` DROP FOREIGN KEY `requisitionline_buyer_id_fkey`;

-- AlterTable
ALTER TABLE `admin` MODIFY `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'CLERK') NOT NULL DEFAULT 'ADMIN';

-- AlterTable
ALTER TABLE `clerk` MODIFY `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'CLERK') NOT NULL DEFAULT 'CLERK';

-- AlterTable
ALTER TABLE `costcenter` ADD COLUMN `budget_id` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `forum` MODIFY `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'CLERK') NOT NULL DEFAULT 'FORUM';

-- AlterTable
ALTER TABLE `normal` MODIFY `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'CLERK') NOT NULL DEFAULT 'NORMAL';

-- DropTable
DROP TABLE `buyer`;

-- CreateTable
CREATE TABLE `Budget` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `yearlyBudget` DOUBLE NOT NULL,
    `remainingBudget` DOUBLE NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE UNIQUE INDEX `costcenter_budget_id_key` ON `costcenter`(`budget_id`);

-- AddForeignKey
ALTER TABLE `costcenter` ADD CONSTRAINT `costcenter_budget_id_fkey` FOREIGN KEY (`budget_id`) REFERENCES `Budget`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
