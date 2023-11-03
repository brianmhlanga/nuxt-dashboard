/*
  Warnings:

  - Added the required column `cost_center_id` to the `normal` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `normal` ADD COLUMN `commodity_access` JSON NULL,
    ADD COLUMN `cost_center_id` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `normal` ADD CONSTRAINT `normal_cost_center_id_fkey` FOREIGN KEY (`cost_center_id`) REFERENCES `costcenter`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
