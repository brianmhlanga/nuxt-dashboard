/*
  Warnings:

  - You are about to drop the column `supplier_id` on the `requisition` table. All the data in the column will be lost.
  - You are about to drop the column `type` on the `requisitionrouting` table. All the data in the column will be lost.
  - Added the required column `type_id` to the `requisitionrouting` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `requisition` DROP FOREIGN KEY `requisition_supplier_id_fkey`;

-- DropIndex
DROP INDEX `commoditycodes_buyer_id_fkey` ON `commoditycodes`;

-- DropIndex
DROP INDEX `requisitionline_buyer_id_fkey` ON `requisitionline`;

-- AlterTable
ALTER TABLE `requisition` DROP COLUMN `supplier_id`,
    MODIFY `status` ENUM('HISTORY', 'REJECTED', 'DRAFT', 'CLERK', 'MOVING', 'APPROVED') NOT NULL DEFAULT 'DRAFT';

-- AlterTable
ALTER TABLE `requisitionline` ADD COLUMN `supplier_id` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `requisitionrouting` DROP COLUMN `type`,
    ADD COLUMN `type_id` VARCHAR(191) NOT NULL;

-- CreateTable
CREATE TABLE `History` (
    `id` VARCHAR(191) NOT NULL,
    `requisition_id` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `RequisitionType` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `MandatoryAttachments` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `type_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_CommodityCodesToSupplier` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_CommodityCodesToSupplier_AB_unique`(`A`, `B`),
    INDEX `_CommodityCodesToSupplier_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `History` ADD CONSTRAINT `History_requisition_id_fkey` FOREIGN KEY (`requisition_id`) REFERENCES `requisition`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `requisitionrouting` ADD CONSTRAINT `requisitionrouting_type_id_fkey` FOREIGN KEY (`type_id`) REFERENCES `RequisitionType`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MandatoryAttachments` ADD CONSTRAINT `MandatoryAttachments_type_id_fkey` FOREIGN KEY (`type_id`) REFERENCES `RequisitionType`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `requisitionline` ADD CONSTRAINT `requisitionline_supplier_id_fkey` FOREIGN KEY (`supplier_id`) REFERENCES `supplier`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_CommodityCodesToSupplier` ADD CONSTRAINT `_CommodityCodesToSupplier_A_fkey` FOREIGN KEY (`A`) REFERENCES `commoditycodes`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_CommodityCodesToSupplier` ADD CONSTRAINT `_CommodityCodesToSupplier_B_fkey` FOREIGN KEY (`B`) REFERENCES `supplier`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
