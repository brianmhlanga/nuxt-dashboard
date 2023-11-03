/*
  Warnings:

  - You are about to drop the column `requisition_id` on the `attachments` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `attachments` DROP FOREIGN KEY `attachments_requisition_id_fkey`;

-- AlterTable
ALTER TABLE `attachments` DROP COLUMN `requisition_id`;

-- AlterTable
ALTER TABLE `requisition` ADD COLUMN `attachments` JSON NULL;
