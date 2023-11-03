/*
  Warnings:

  - You are about to drop the column `buyer_id` on the `requisitionline` table. All the data in the column will be lost.
  - You are about to drop the column `tax_code_id` on the `requisitionline` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `requisitionline` DROP FOREIGN KEY `requisitionline_tax_code_id_fkey`;

-- AlterTable
ALTER TABLE `requisitionline` DROP COLUMN `buyer_id`,
    DROP COLUMN `tax_code_id`;
