/*
  Warnings:

  - A unique constraint covering the columns `[tax_code]` on the table `taxcode` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `taxcode_tax_code_key` ON `taxcode`(`tax_code`);
