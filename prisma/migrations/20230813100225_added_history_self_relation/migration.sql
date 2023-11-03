/*
  Warnings:

  - You are about to drop the `history` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[history_id]` on the table `requisition` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE `history` DROP FOREIGN KEY `History_requisition_id_fkey`;

-- AlterTable
ALTER TABLE `requisition` ADD COLUMN `history_id` VARCHAR(191) NULL;

-- DropTable
DROP TABLE `history`;

-- CreateIndex
CREATE UNIQUE INDEX `requisition_history_id_key` ON `requisition`(`history_id`);

-- AddForeignKey
ALTER TABLE `requisition` ADD CONSTRAINT `requisition_history_id_fkey` FOREIGN KEY (`history_id`) REFERENCES `requisition`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
