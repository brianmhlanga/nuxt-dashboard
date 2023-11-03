/*
  Warnings:

  - Added the required column `due_date` to the `requisition` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `requisition` ADD COLUMN `due_date` DATETIME(3) NOT NULL;
