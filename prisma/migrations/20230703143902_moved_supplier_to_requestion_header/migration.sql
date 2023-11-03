/*
  Warnings:

  - You are about to drop the column `supplier_id` on the `requisitionline` table. All the data in the column will be lost.
  - Made the column `ledger_code` on table `requisitionline` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `requisitionline` DROP FOREIGN KEY `requisitionline_supplier_id_fkey`;

-- AlterTable
ALTER TABLE `requisition` ADD COLUMN `supplier_id` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `requisitionline` DROP COLUMN `supplier_id`,
    MODIFY `ledger_code` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `requisition` ADD CONSTRAINT `requisition_supplier_id_fkey` FOREIGN KEY (`supplier_id`) REFERENCES `supplier`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `requisitionline` ADD CONSTRAINT `requisitionline_ledger_code_fkey` FOREIGN KEY (`ledger_code`) REFERENCES `generalledgercode`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
