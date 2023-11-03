/*
  Warnings:

  - You are about to alter the column `price_uom` on the `requisitionline` table. The data in that column could be lost. The data in that column will be cast from `Double` to `VarChar(191)`.

*/
-- AlterTable
ALTER TABLE `requisitionline` MODIFY `price_uom` VARCHAR(191) NULL;
