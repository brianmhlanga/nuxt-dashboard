-- DropForeignKey
ALTER TABLE `requisitionline` DROP FOREIGN KEY `requisitionline_tax_code_id_fkey`;

-- AlterTable
ALTER TABLE `requisitionline` MODIFY `tax_code_id` VARCHAR(191) NULL;

-- AddForeignKey
ALTER TABLE `requisitionline` ADD CONSTRAINT `requisitionline_tax_code_id_fkey` FOREIGN KEY (`tax_code_id`) REFERENCES `taxcode`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
