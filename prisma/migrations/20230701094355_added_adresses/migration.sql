/*
  Warnings:

  - You are about to drop the column `delivery_address` on the `requisitionline` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `requisitionline` DROP COLUMN `delivery_address`;

-- CreateTable
CREATE TABLE `address` (
    `id` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `address_number` VARCHAR(191) NOT NULL,
    `requisition_id` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `address_requisition_id_key`(`requisition_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `address` ADD CONSTRAINT `address_requisition_id_fkey` FOREIGN KEY (`requisition_id`) REFERENCES `requisition`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
