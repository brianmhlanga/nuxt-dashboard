/*
  Warnings:

  - You are about to drop the column `requisition_id` on the `address` table. All the data in the column will be lost.
  - Added the required column `address_id` to the `requisition` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `address` DROP FOREIGN KEY `address_requisition_id_fkey`;

-- AlterTable
ALTER TABLE `address` DROP COLUMN `requisition_id`;

-- AlterTable
ALTER TABLE `requisition` ADD COLUMN `address_id` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `requisition` ADD CONSTRAINT `requisition_address_id_fkey` FOREIGN KEY (`address_id`) REFERENCES `address`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
