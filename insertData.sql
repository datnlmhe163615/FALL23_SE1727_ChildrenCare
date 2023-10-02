USE [ChildCare]
GO

INSERT INTO [dbo].[ServiceCategory]
           ([title]
           ,[thumbnail]
           ,[description]
           ,[createdAt]
           ,[updatedAt])
     VALUES
           (N'Teeth Check up'
           ,N'image\SerCate1.jpg'
           ,N'Regular dental examinations should be performed every 6 months to detect dental problems early.'
           ,N'2023-02-27 17:25:12'
           ,N'2023-08-27 17:25:12')
GO


INSERT INTO [dbo].[Service]
           ([categoryId]
           ,[thumbnail]
           ,[title]
           ,[price]
           ,[salePrice]
           ,[briefInformation]
           ,[description]
           ,[status]
           ,[createdAt]
           ,[updatedAt])
     VALUES
           (1
           ,N'image\1.jpg'
           ,N'Regular dental examinations should be performed every 6 months to detect dental problems early.'
           ,3000000
           ,2500000
           ,N'The examination lasts about 30-60 minutes and includes: examination, teeth cleaning, X-rays, fluoride coating, tooth polishing, etc.
Regular dental check-ups help prevent dental diseases, save on treatment costs, keep teeth healthy and breath fresh.'
           ,N'When you go for a dental check-up, your dentist should ask questions about your general health and medications. Many health conditions have an effect on your oral health and vice versa. Some medicines can affect your mouth or need to be taken into consideration before dental treatment.

Your dentist will check each tooth using small instruments, such as a mirror and probe (a fine, pick-like tool). The dentist looks for issues such as tooth decay, gum disease and other conditions.
'
           ,1
           ,N'2023-02-27 17:25:12'
           ,N'2023-08-27 17:25:12')
GO