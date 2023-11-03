/*
  Warnings:

  - A unique constraint covering the columns `[name]` on the table `RequisitionType` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `description` to the `RequisitionType` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `requisitiontype` ADD COLUMN `description` LONGTEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `RequisitionType_name_key` ON `RequisitionType`(`name`);
