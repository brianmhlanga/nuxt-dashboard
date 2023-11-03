-- CreateTable
CREATE TABLE `RequisitionForumApprovers` (
    `id` VARCHAR(191) NOT NULL,
    `requisition_id` VARCHAR(191) NOT NULL,
    `approver_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `RequisitionForumApprovers` ADD CONSTRAINT `RequisitionForumApprovers_requisition_id_fkey` FOREIGN KEY (`requisition_id`) REFERENCES `requisition`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `RequisitionForumApprovers` ADD CONSTRAINT `RequisitionForumApprovers_approver_id_fkey` FOREIGN KEY (`approver_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
