/*
  Warnings:

  - A unique constraint covering the columns `[code]` on the table `commoditycodes` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `commoditycodes` ADD COLUMN `family` VARCHAR(191) NULL;

-- CreateIndex
CREATE UNIQUE INDEX `commoditycodes_code_key` ON `commoditycodes`(`code`);
