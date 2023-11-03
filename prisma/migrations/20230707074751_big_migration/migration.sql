/*
  Warnings:

  - The values [PENDING,FORUM,BUYING] on the enum `requisition_status` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `requisition` ADD COLUMN `approver_id` VARCHAR(191) NULL,
    MODIFY `status` ENUM('REJECTED', 'DRAFT', 'CLERK', 'MOVING', 'APPROVED') NOT NULL DEFAULT 'DRAFT';

-- AddForeignKey
ALTER TABLE `requisition` ADD CONSTRAINT `requisition_approver_id_fkey` FOREIGN KEY (`approver_id`) REFERENCES `user`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
