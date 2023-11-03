/*
  Warnings:

  - Made the column `tax_code_id` on table `requisitionline` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `requisitionline` DROP FOREIGN KEY `requisitionline_tax_code_id_fkey`;

-- AlterTable
ALTER TABLE `requisitionline` MODIFY `tax_code_id` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `requisitionline` ADD CONSTRAINT `requisitionline_tax_code_id_fkey` FOREIGN KEY (`tax_code_id`) REFERENCES `taxcode`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
