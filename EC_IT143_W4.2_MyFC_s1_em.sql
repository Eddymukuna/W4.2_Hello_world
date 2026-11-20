USE [EC_IT143_DA]
GO

/****** Object:  Table [dbo].[class_history]    Script Date: 11/20/2026 2:04:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[class_history](
	[student_id] [int] NULL,
	[class_id] [int] NULL,
	[semester] [varchar](50) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[class_history]  WITH CHECK ADD  CONSTRAINT [FK_Student_ClassHistory] FOREIGN KEY([student_id])
REFERENCES [dbo].[student] ([student_id])
GO

ALTER TABLE [dbo].[class_history] CHECK CONSTRAINT [FK_Student_ClassHistory]
GO


