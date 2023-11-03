/*
  Warnings:

  - You are about to drop the column `budget_id` on the `costcenter` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[cost_id]` on the table `Budget` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `cost_id` to the `Budget` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `costcenter` DROP FOREIGN KEY `costcenter_budget_id_fkey`;

-- AlterTable
ALTER TABLE `budget` ADD COLUMN `cost_id` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `costcenter` DROP COLUMN `budget_id`;

-- CreateIndex
CREATE UNIQUE INDEX `Budget_cost_id_key` ON `Budget`(`cost_id`);

-- AddForeignKey
ALTER TABLE `Budget` ADD CONSTRAINT `Budget_cost_id_fkey` FOREIGN KEY (`cost_id`) REFERENCES `costcenter`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
