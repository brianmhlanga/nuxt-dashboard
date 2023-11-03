-- AlterTable
ALTER TABLE `approvers` ADD COLUMN `is_co_approver` BOOLEAN NULL DEFAULT false;

-- AlterTable
ALTER TABLE `requisition` ADD COLUMN `co_approved_count` INTEGER NULL;
