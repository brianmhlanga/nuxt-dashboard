/*
  Warnings:

  - Added the required column `total` to the `requisition` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `requisition` ADD COLUMN `total` DOUBLE NOT NULL;
