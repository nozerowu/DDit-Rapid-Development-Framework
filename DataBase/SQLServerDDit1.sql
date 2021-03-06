USE [DDit2]
GO
CREATE TABLE [UserRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [UserRole] ON
INSERT [UserRole] ([ID], [UserID], [RoleID]) VALUES (33, 31, 2)
INSERT [UserRole] ([ID], [UserID], [RoleID]) VALUES (28, 1, 2)
INSERT [UserRole] ([ID], [UserID], [RoleID]) VALUES (29, 1, 3)
INSERT [UserRole] ([ID], [UserID], [RoleID]) VALUES (30, 30, 2)
INSERT [UserRole] ([ID], [UserID], [RoleID]) VALUES (31, 30, 3)
INSERT [UserRole] ([ID], [UserID], [RoleID]) VALUES (34, 31, 3)
INSERT [UserRole] ([ID], [UserID], [RoleID]) VALUES (32, 1, 1)
INSERT [UserRole] ([ID], [UserID], [RoleID]) VALUES (35, 40, 1)
INSERT [UserRole] ([ID], [UserID], [RoleID]) VALUES (36, 39, 1)
INSERT [UserRole] ([ID], [UserID], [RoleID]) VALUES (41, 41, 3)
INSERT [UserRole] ([ID], [UserID], [RoleID]) VALUES (39, 38, 1)
INSERT [UserRole] ([ID], [UserID], [RoleID]) VALUES (40, 38, 2)
SET IDENTITY_INSERT [UserRole] OFF
/****** Object:  Table [User]    Script Date: 05/22/2017 16:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPassword] [nvarchar](100) NOT NULL,
	[UserReallyname] [nvarchar](50) NOT NULL,
	[HeadPortrait] [nvarchar](500) NULL,
	[DepartmentID] [int] NOT NULL,
	[IsEnable] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[Remark] [nvarchar](500) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [User] ON
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (1, N'admin', N'123456', N'超级管理员', N'20160423heel.jpg', 1, 1, CAST(0x0000A6DA00000000 AS DateTime), CAST(0x0000A6DA00000000 AS DateTime), N'好皇帝')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (2, N'admin1', N'123456', N'管理员1', NULL, 1, 1, CAST(0x0000A5C900A2F02A AS DateTime), CAST(0x0000A5C900A2F02A AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (3, N'admin2', N'123456', N'管理员2', NULL, 1, 1, CAST(0x0000A5C900A30005 AS DateTime), CAST(0x0000A5C900A30005 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (4, N'admin3', N'123456', N'管理员3', NULL, 1, 1, CAST(0x0000A5C900A309EE AS DateTime), CAST(0x0000A5C900A309EE AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (5, N'admin4', N'123456', N'管理员4', NULL, 1, 1, CAST(0x0000A5C900A314D9 AS DateTime), CAST(0x0000A5C900A314D9 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (6, N'admin5', N'123456', N'管理员5', NULL, 1, 1, CAST(0x0000A5C900A322DE AS DateTime), CAST(0x0000A5C900A322DE AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (7, N'admin6', N'123456', N'管理员6', NULL, 1, 1, CAST(0x0000A5C900A32BF2 AS DateTime), CAST(0x0000A5C900A32BF2 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (8, N'admin7', N'123456', N'管理员7', NULL, 1, 1, CAST(0x0000A5C900A33487 AS DateTime), CAST(0x0000A5C900A33487 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (9, N'admin8', N'123456', N'管理员8', NULL, 1, 1, CAST(0x0000A5C900A33E93 AS DateTime), CAST(0x0000A5C900A33E93 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (10, N'admin9', N'123456', N'管理员9', NULL, 1, 1, CAST(0x0000A5C900A347D3 AS DateTime), CAST(0x0000A5C900A347D3 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (11, N'admin10', N'123456', N'管理员10', NULL, 2, 1, CAST(0x0000A5C900A350E6 AS DateTime), CAST(0x0000A5C900A350E6 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (12, N'admin11', N'123456', N'管理员11', NULL, 2, 1, CAST(0x0000A5C900A359B4 AS DateTime), CAST(0x0000A5C900A359B4 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (13, N'admin12', N'123456', N'管理员12', NULL, 2, 1, CAST(0x0000A5C900A362E8 AS DateTime), CAST(0x0000A5C900A362E8 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (14, N'admin13', N'123456', N'管理员13', NULL, 1, 1, CAST(0x0000A5C900A36B01 AS DateTime), CAST(0x0000A5C900A36B01 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (15, N'admin14', N'123456', N'管理员14', NULL, 1, 1, CAST(0x0000A5C900A37427 AS DateTime), CAST(0x0000A5C900A37427 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (16, N'admin15', N'123456', N'管理员15', NULL, 1, 1, CAST(0x0000A5C900A37D78 AS DateTime), CAST(0x0000A5C900A37D78 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (17, N'admin16', N'123456', N'管理员16', NULL, 1, 1, CAST(0x0000A5C900A385D6 AS DateTime), CAST(0x0000A5C900A385D6 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (18, N'moon1', N'123456', N'第五种族', NULL, 2, 0, CAST(0x0000A5C900A38DA3 AS DateTime), CAST(0x0000A5FE00C45D8A AS DateTime), NULL)
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (19, N'admin18', N'123456', N'管理员18', NULL, 1, 0, CAST(0x0000A5C900A396F6 AS DateTime), CAST(0x0000A5C900A396F6 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (20, N'admin19', N'123456', N'管理员19', NULL, 1, 1, CAST(0x0000A5C900A39F6B AS DateTime), CAST(0x0000A5C900A39F6B AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (21, N'admin20', N'123456', N'管理员20', NULL, 1, 1, CAST(0x0000A5C900A3AA12 AS DateTime), CAST(0x0000A5C900A3AA12 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (22, N'admin21', N'123456', N'管理员21', NULL, 1, 1, CAST(0x0000A5C900A3B41F AS DateTime), CAST(0x0000A5C900A3B41F AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (23, N'admin22', N'123456', N'管理员22', NULL, 1, 1, CAST(0x0000A5C900A3BBF4 AS DateTime), CAST(0x0000A5C900A3BBF4 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (24, N'admin23', N'123456', N'管理员23', NULL, 1, 1, CAST(0x0000A5C900A3C43E AS DateTime), CAST(0x0000A5C900A3C43E AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (25, N'admin24', N'123456', N'管理员24', NULL, 1, 1, CAST(0x0000A5C900A3CED4 AS DateTime), CAST(0x0000A5C900A3CED4 AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (26, N'admin25', N'123456', N'管理员25', NULL, 1, 1, CAST(0x0000A5C900A3D7AE AS DateTime), CAST(0x0000A5C900A3D7AE AS DateTime), N'内阁总管')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (27, N'whywhy898', N'123456', N'小红红', NULL, 1, 1, CAST(0x0000A5CB011AE01C AS DateTime), NULL, N'也许吧')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (28, N'whywhy999', N'123456', N'小绿绿', NULL, 1, 0, CAST(0x0000A5CB011EAF08 AS DateTime), NULL, N'你好')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (29, N'laoWang', N'123456', N'老王', NULL, 2, 1, CAST(0x0000A5CB01200562 AS DateTime), CAST(0x0000A5E8011EBD45 AS DateTime), N'老虎来了')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (30, N'xiaoniu', N'123456', N'大妞', NULL, 1, 1, CAST(0x0000A5CC00F60E58 AS DateTime), CAST(0x0000A5CC00FE2A97 AS DateTime), N'这是我的大妞谁都别动！~')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (31, N'nana', N'123456', N'娜就是神', N'20160423-nana.jpg', 1, 0, CAST(0x0000A5E900E74E35 AS DateTime), CAST(0x0000A5F100F53BE7 AS DateTime), N'我去恶趣味')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (32, N'jimi', N'123456', N'吉米1', N'20160423-fd7bc8df93a2c6b56cd328e7b968c6f9.jpg', 2, 1, CAST(0x0000A5F100F66671 AS DateTime), CAST(0x0000A5F1010425DF AS DateTime), N'吉米小子里面的主角')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (33, N'Envrioment', N'123456', N'环境', N'', 2, 0, CAST(0x0000A5FE00BF627B AS DateTime), NULL, NULL)
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (34, N'sky', N'123123', N'天王', N'', 2, 0, CAST(0x0000A5FE00C49AC2 AS DateTime), NULL, NULL)
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (35, N'why778', N'123456', N'小杰', N'', 3, 1, CAST(0x0000A74E00AD17F6 AS DateTime), NULL, N'只是个天才')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (36, N'layer1', N'123456', N'弹出层', N'20170425-u=2264996490,553047999&fm=23&gp=0.jpg', 3, 1, CAST(0x0000A7600128AC41 AS DateTime), CAST(0x0000A76F0121B0A4 AS DateTime), N'第一次请求')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (37, N'layer2', N'123456', N'弹出层2', N'20170425-u=1278896632,2852512441&fm=11&gp=0.jpg', 3, 1, CAST(0x0000A7600129CF6B AS DateTime), NULL, N'123123123123')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (38, N'layer3', N'123456', N'adawd', N'', 3, 0, CAST(0x0000A760012A1882 AS DateTime), NULL, NULL)
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (39, N'layer4', N'123456', N'小鳄鱼1', N'20170426-u=1628747648,1114534703fm=23gp=0.jpg', 3, 0, CAST(0x0000A76100A95E95 AS DateTime), CAST(0x0000A76100EC37CD AS DateTime), N'我是一只鳄鱼王1')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (40, N'layer5', N'123456', N'关羽', N'20170426-u=3022300017,1716944448fm=11gp=0.jpg.png', 3, 0, CAST(0x0000A76100FC5802 AS DateTime), CAST(0x0000A77000F21577 AS DateTime), N'阿斯达是大势')
INSERT [User] ([UserID], [UserName], [UserPassword], [UserReallyname], [HeadPortrait], [DepartmentID], [IsEnable], [CreateTime], [UpdateTime], [Remark]) VALUES (41, N'liubang', N'123456', N'刘邦101', N'20170512-u=2264996490,553047999fm=23gp=0.jpg', 1, 0, CAST(0x0000A77100AD82D7 AS DateTime), CAST(0x0000A77100AD90B4 AS DateTime), N'刘邦牛逼')
SET IDENTITY_INSERT [User] OFF
/****** Object:  Table [test]    Script Date: 05/22/2017 16:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [test](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[age] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [test] ON
INSERT [test] ([ID], [Name], [age]) VALUES (4, N'whywhy898', 31)
SET IDENTITY_INSERT [test] OFF
/****** Object:  Table [SystemInfo]    Script Date: 05/22/2017 16:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SystemInfo](
	[SystemID] [int] IDENTITY(1,1) NOT NULL,
	[SystemTitle] [nvarchar](100) NULL,
	[SystemVersion] [nvarchar](50) NULL,
	[SystemCopyright] [nvarchar](100) NULL,
	[IsValidCode] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [RoleMenu]    Script Date: 05/22/2017 16:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RoleMenu](
	[RoleMenuID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[MenuID] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [RoleMenu] ON
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (24, 1, 34)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (14, 3, 4)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (15, 3, 5)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (4, 1, 8)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (5, 2, 1)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (6, 2, 4)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (10, 2, 5)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (16, 3, 9)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (17, 3, 28)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (18, 3, 30)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (25, 1, 35)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (22, 1, 4)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (23, 1, 33)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (26, 1, 36)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (27, 1, 37)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (28, 1, 38)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (29, 1, 39)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (30, 1, 40)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (31, 1, 41)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (32, 1, 42)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (33, 1, 43)
INSERT [RoleMenu] ([RoleMenuID], [RoleID], [MenuID]) VALUES (34, 1, 1)
SET IDENTITY_INSERT [RoleMenu] OFF
/****** Object:  Table [RoleButton]    Script Date: 05/22/2017 16:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RoleButton](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[MenuID] [int] NULL,
	[ButtonID] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [RoleButton] ON
INSERT [RoleButton] ([ID], [RoleID], [MenuID], [ButtonID]) VALUES (33, 3, 4, 1)
INSERT [RoleButton] ([ID], [RoleID], [MenuID], [ButtonID]) VALUES (34, 3, 4, 2)
INSERT [RoleButton] ([ID], [RoleID], [MenuID], [ButtonID]) VALUES (35, 3, 4, 11)
INSERT [RoleButton] ([ID], [RoleID], [MenuID], [ButtonID]) VALUES (93, 1, 4, 1)
INSERT [RoleButton] ([ID], [RoleID], [MenuID], [ButtonID]) VALUES (94, 1, 4, 2)
INSERT [RoleButton] ([ID], [RoleID], [MenuID], [ButtonID]) VALUES (95, 1, 4, 11)
INSERT [RoleButton] ([ID], [RoleID], [MenuID], [ButtonID]) VALUES (96, 1, 4, 10)
INSERT [RoleButton] ([ID], [RoleID], [MenuID], [ButtonID]) VALUES (36, 3, 4, 10)
INSERT [RoleButton] ([ID], [RoleID], [MenuID], [ButtonID]) VALUES (97, 1, 33, 1)
INSERT [RoleButton] ([ID], [RoleID], [MenuID], [ButtonID]) VALUES (98, 1, 33, 2)
INSERT [RoleButton] ([ID], [RoleID], [MenuID], [ButtonID]) VALUES (99, 1, 33, 3)
INSERT [RoleButton] ([ID], [RoleID], [MenuID], [ButtonID]) VALUES (100, 1, 33, 4)
SET IDENTITY_INSERT [RoleButton] OFF
/****** Object:  Table [Role]    Script Date: 05/22/2017 16:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[RoleDescription] [nvarchar](500) NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Role] ON
INSERT [Role] ([RoleID], [RoleName], [RoleDescription], [CreateTime], [UpdateTime]) VALUES (1, N'管理员', N'超级管理员', CAST(0x0000A5BE00000000 AS DateTime), NULL)
INSERT [Role] ([RoleID], [RoleName], [RoleDescription], [CreateTime], [UpdateTime]) VALUES (2, N'操作员', N'处理申请单的', CAST(0x0000A5BE00000000 AS DateTime), NULL)
INSERT [Role] ([RoleID], [RoleName], [RoleDescription], [CreateTime], [UpdateTime]) VALUES (3, N'部门经理', N'管理者', CAST(0x0000A5BF00000000 AS DateTime), NULL)
SET IDENTITY_INSERT [Role] OFF
/****** Object:  Table [MenuButton]    Script Date: 05/22/2017 16:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MenuButton](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MenuID] [int] NULL,
	[ButtonID] [int] NULL,
	[OrderBy] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [MenuButton] ON
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (22, 35, 3, 1)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (23, 35, 1, 2)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (24, 35, 4, 3)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (25, 35, 2, 4)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (26, 32, 1, 1)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (27, 32, 2, 2)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (28, 32, 3, 3)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (36, 4, 1, 1)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (37, 4, 2, 2)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (38, 4, 11, 3)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (39, 4, 10, 4)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (10, 33, 1, 1)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (11, 33, 2, 2)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (12, 33, 3, 3)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (13, 33, 4, 4)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (50, 43, 1, 1)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (51, 43, 2, 2)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (52, 43, 3, 3)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (53, 5, 9, 1)
INSERT [MenuButton] ([ID], [MenuID], [ButtonID], [OrderBy]) VALUES (54, 5, 10, 2)
SET IDENTITY_INSERT [MenuButton] OFF
/****** Object:  Table [Menu]    Script Date: 05/22/2017 16:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](50) NOT NULL,
	[MenuUrl] [nvarchar](200) NULL,
	[MenuParentID] [int] NULL,
	[MenuOrder] [int] NOT NULL,
	[MenuIcon] [nvarchar](100) NULL,
	[IsVisible] [int] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Menu] ON
INSERT [Menu] ([MenuID], [MenuName], [MenuUrl], [MenuParentID], [MenuOrder], [MenuIcon], [IsVisible], [CreateTime], [UpdateTime]) VALUES (1, N'系统设置', N'youare', NULL, 1, N'glyphicon glyphicon-text59', 1, CAST(0x0000A5D000EFCA3F AS DateTime), NULL)
INSERT [Menu] ([MenuID], [MenuName], [MenuUrl], [MenuParentID], [MenuOrder], [MenuIcon], [IsVisible], [CreateTime], [UpdateTime]) VALUES (4, N'用户管理', N'/User/Index', 1, 1, N'glyphicon glyphicon-text57', 1, CAST(0x0000A5D000EFCA3F AS DateTime), NULL)
INSERT [Menu] ([MenuID], [MenuName], [MenuUrl], [MenuParentID], [MenuOrder], [MenuIcon], [IsVisible], [CreateTime], [UpdateTime]) VALUES (5, N'角色管理', N'/Role/Index', 1, 2, N'glyphicon glyphicon-text57', 1, CAST(0x0000A5D000EFCA3F AS DateTime), NULL)
INSERT [Menu] ([MenuID], [MenuName], [MenuUrl], [MenuParentID], [MenuOrder], [MenuIcon], [IsVisible], [CreateTime], [UpdateTime]) VALUES (9, N'菜单管理', N'/Menu/Index', 1, 4, N'glyphicon glyphicon-text58', 1, CAST(0x0000A5D000EFCA3F AS DateTime), NULL)
INSERT [Menu] ([MenuID], [MenuName], [MenuUrl], [MenuParentID], [MenuOrder], [MenuIcon], [IsVisible], [CreateTime], [UpdateTime]) VALUES (28, N'按钮管理', N'/Button/Index', 1, 5, N'glyphicon glyphicon-text2', 0, CAST(0x0000A5D200A3C2D3 AS DateTime), NULL)
INSERT [Menu] ([MenuID], [MenuName], [MenuUrl], [MenuParentID], [MenuOrder], [MenuIcon], [IsVisible], [CreateTime], [UpdateTime]) VALUES (29, N'统计报表', N'', NULL, 2, N'glyphicon glyphicon-text23', 0, CAST(0x0000A5D200A99051 AS DateTime), NULL)
INSERT [Menu] ([MenuID], [MenuName], [MenuUrl], [MenuParentID], [MenuOrder], [MenuIcon], [IsVisible], [CreateTime], [UpdateTime]) VALUES (30, N'日志管理', N'/Log/Index', 1, 7, N'glyphicon glyphicon-text27', 0, CAST(0x0000A5D200AA0682 AS DateTime), NULL)
INSERT [Menu] ([MenuID], [MenuName], [MenuUrl], [MenuParentID], [MenuOrder], [MenuIcon], [IsVisible], [CreateTime], [UpdateTime]) VALUES (31, N'核心业务', N'', NULL, 3, N'glyphicon glyphicon-text16', 0, CAST(0x0000A5D200E3E632 AS DateTime), NULL)
INSERT [Menu] ([MenuID], [MenuName], [MenuUrl], [MenuParentID], [MenuOrder], [MenuIcon], [IsVisible], [CreateTime], [UpdateTime]) VALUES (32, N'组织结构', N'', 29, 6, N'glyphicon glyphicon-text5', 0, CAST(0x0000A5D200E43CBF AS DateTime), NULL)
INSERT [Menu] ([MenuID], [MenuName], [MenuUrl], [MenuParentID], [MenuOrder], [MenuIcon], [IsVisible], [CreateTime], [UpdateTime]) VALUES (33, N'数据字典', N'/Dictionary/Index', 1, 6, N'glyphicon glyphicon-text', 0, CAST(0x0000A5D200FD07BD AS DateTime), NULL)
SET IDENTITY_INSERT [Menu] OFF
/****** Object:  Table [LoginLog]    Script Date: 05/22/2017 16:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LoginLog](
	[LoginID] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [nvarchar](100) NOT NULL,
	[LoginNicker] [nvarchar](100) NOT NULL,
	[LoginIP] [nvarchar](100) NOT NULL,
	[LoginTime] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [LoginLog] ON
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (122, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5E700BDA23E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (123, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5E7011DFC71 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (3, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BD010E279C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (4, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BD010F019F AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (5, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BD010FD78A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (6, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF00B522CF AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (7, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF00B83B2D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (8, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF00B8A8EB AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (11, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF00C1460C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (12, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF00C17CF4 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (13, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF00C1A2BB AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (16, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF01125CC7 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (17, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF01131ADC AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (18, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF0113E670 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (19, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF011472DB AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (20, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF0116F159 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (21, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5C200EFB97C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (22, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5C200F01574 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (23, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5C200F059CD AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (24, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5C200F24E1B AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (25, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5C200F5C6F6 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (26, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5C200F6191D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (29, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5C201018B79 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (30, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5C201024028 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (31, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C501085D92 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (32, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C50108D90D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (33, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C50108EE17 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (34, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C5010BA02A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (35, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C5012BE309 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (36, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C5012CFB8D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (37, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C600A727EE AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (38, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C600A75EE4 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (39, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C600A81B0E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (40, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C600A95186 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (41, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C600B388B7 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (42, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C600B40487 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (43, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C600B46440 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (44, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C600DF2263 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (45, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C600E17334 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (46, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C600E9A77F AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (47, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C600FDAF17 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (48, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C60102B2CB AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (49, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C900B4A36E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (50, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C900B87C08 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (51, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C900B8B98E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (52, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C900C44F12 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (54, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C900FCD962 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (56, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C90121A2FE AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (58, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C901239C44 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (59, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C90123F1C2 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (60, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C9012436B3 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (64, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C90129F324 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (65, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C9012A42E5 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (66, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C9012BC79A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (67, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00971B02 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (68, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA009BC293 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (69, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA009D0947 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (90, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA011CA509 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (91, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CB01088B0D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (92, N'admin', N'王洪洋', N'::1', CAST(0x0000A5D00096D15F AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (93, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5D000AA1E12 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (94, N'admin', N'王洪洋', N'::1', CAST(0x0000A5D1009C9229 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (95, N'admin', N'王洪洋', N'::1', CAST(0x0000A5D4009CABA7 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (96, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5D4009DCC72 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (97, N'admin', N'王洪洋', N'::1', CAST(0x0000A5D7009E01AB AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (98, N'admin', N'王洪洋', N'::1', CAST(0x0000A5D800BC0584 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (99, N'admin', N'王洪洋', N'::1', CAST(0x0000A5D900A674F0 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (100, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5D900C14987 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (101, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5D900C2ED53 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (103, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5DA00E030A6 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (104, N'admin', N'王洪洋', N'::1', CAST(0x0000A5DF00B761F9 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (105, N'admin', N'王洪洋', N'127.0.0.1', CAST(0x0000A5DF01131662 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (106, N'admin', N'王洪洋', N'127.0.0.1', CAST(0x0000A5DF012548D0 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (107, N'admin', N'王洪洋', N'127.0.0.1', CAST(0x0000A5DF01258762 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (108, N'admin', N'王洪洋', N'127.0.0.1', CAST(0x0000A5DF0126D8AF AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (110, N'admin', N'王洪洋', N'192.168.40.5', CAST(0x0000A5DF012766EB AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (111, N'admin', N'王洪洋', N'::1', CAST(0x0000A5E100A40E09 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (114, N'admin', N'王洪洋', N'::1', CAST(0x0000A5E200AD71E9 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (115, N'admin', N'王洪洋', N'::1', CAST(0x0000A5E50097DF08 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (116, N'admin', N'王洪洋', N'::1', CAST(0x0000A5E50101C537 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (117, N'admin', N'王洪洋', N'::1', CAST(0x0000A5E501022E6A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (118, N'admin', N'王洪洋', N'::1', CAST(0x0000A5E50102E4CC AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (119, N'admin', N'王洪洋', N'::1', CAST(0x0000A5E501039125 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (120, N'admin', N'王洪洋', N'::1', CAST(0x0000A5E501154F27 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (121, N'admin', N'王洪洋', N'::1', CAST(0x0000A5E600A6E3C3 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (125, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5E800AA5A7E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (126, N'admin', N'王洪洋', N'192.168.40.33', CAST(0x0000A5E8012055ED AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (127, N'admin', N'王洪洋', N'::1', CAST(0x0000A5E9009EA603 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (128, N'admin', N'王洪洋', N'::1', CAST(0x0000A5EC00A59A03 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (130, N'admin', N'王洪洋', N'::1', CAST(0x0000A5ED00EC4314 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (131, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5EE00AB48F8 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (132, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5EE00BD52C2 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (133, N'admin', N'王洪洋', N'::1', CAST(0x0000A5EF00B0E640 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (134, N'admin', N'王洪洋', N'::1', CAST(0x0000A5EF0103FF37 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (136, N'admin', N'王洪洋', N'127.0.0.1', CAST(0x0000A5F000A8F29D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (137, N'admin', N'王洪洋', N'127.0.0.1', CAST(0x0000A5F000AB6E73 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (138, N'admin', N'王洪洋', N'::1', CAST(0x0000A5F000E96D16 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (139, N'admin', N'王洪洋', N'::1', CAST(0x0000A5F001101F7C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (140, N'admin', N'王洪洋', N'::1', CAST(0x0000A5F100ED95F5 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (141, N'admin', N'王洪洋', N'::1', CAST(0x0000A5F100EDD187 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (142, N'nana', N'娜娜', N'::1', CAST(0x0000A5F100EFCB4C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (143, N'admin', N'王洪洋', N'::1', CAST(0x0000A5F100F04C4B AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (144, N'nana', N'娜娜', N'::1', CAST(0x0000A5F100F05283 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (145, N'nana', N'娜娜', N'::1', CAST(0x0000A5F100F09C0E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (146, N'nana', N'娜娜', N'::1', CAST(0x0000A5F100F0B85D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (147, N'nana', N'娜神', N'::1', CAST(0x0000A5F100F0ED99 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (148, N'nana', N'娜神', N'192.168.40.53', CAST(0x0000A5F100F103AC AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (149, N'nana', N'娜四一定', N'::1', CAST(0x0000A5F100F1C710 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (155, N'admin', N'超级管理员', N'::1', CAST(0x0000A5F300A2F651 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (9, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF00BE34E4 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (10, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF00BF15DA AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (14, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF00FA3A16 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (15, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5BF00FABCC9 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (109, N'admin', N'王洪洋', N'192.168.40.53', CAST(0x0000A5DF01270625 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (124, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5E7011E71F7 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (135, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5EF0104E2D1 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (27, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5C200F674FD AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (28, N'whywhy898', N'王洪洋', N'::1', CAST(0x0000A5C200F70CDA AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (112, N'admin', N'王洪洋', N'192.168.40.5', CAST(0x0000A5E100AF6441 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (113, N'admin', N'王洪洋', N'192.168.40.2', CAST(0x0000A5E100AFF01A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (129, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5EC00F3E923 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (150, N'nana', N'娜四一定', N'::1', CAST(0x0000A5F100F5244F AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (151, N'nana', N'娜就是神', N'::1', CAST(0x0000A5F100F544D9 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (152, N'jimi', N'吉米', N'::1', CAST(0x0000A5F100F66F7B AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (153, N'admin', N'王洪洋', N'::1', CAST(0x0000A5F100F698F2 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (154, N'admin', N'超级管理员', N'::1', CAST(0x0000A5F100F702A7 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (53, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C900F31EB0 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (55, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C901064300 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (57, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C90122BF64 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (61, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C901258360 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (62, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C90126241C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (63, N'admin', N'王洪洋', N'::1', CAST(0x0000A5C90127E472 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (70, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00B0CC13 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (71, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00B45FEB AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (72, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00BBA55D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (73, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00BC987E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (74, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00BD25C4 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (75, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00BDCFE1 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (76, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00BE41A4 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (77, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00BE8408 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (78, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00BF0900 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (79, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00C22C50 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (80, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00C4CF4C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (81, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00C627FE AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (82, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00D85DB6 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (83, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00D8E077 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (84, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00D9A41F AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (85, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00E7E0F3 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (86, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00E81DB9 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (87, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00E897C2 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (88, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00FD5116 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (89, N'admin', N'王洪洋', N'::1', CAST(0x0000A5CA00FED21C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (102, N'admin', N'王洪洋', N'192.168.40.23', CAST(0x0000A5D900F14E4A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (156, N'admin', N'超级管理员', N'::1', CAST(0x0000A5F3010EA9A0 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (157, N'admin', N'超级管理员', N'::1', CAST(0x0000A5F600A8479E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (158, N'admin', N'超级管理员', N'192.168.40.5', CAST(0x0000A5F600DF7AA3 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (159, N'admin', N'超级管理员', N'192.168.40.5', CAST(0x0000A5F700B469B0 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (160, N'admin', N'超级管理员', N'192.168.40.5', CAST(0x0000A5F700F0EEA6 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (161, N'admin', N'超级管理员', N'192.168.40.23', CAST(0x0000A5F700F232EE AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (162, N'admin', N'超级管理员', N'192.168.40.23', CAST(0x0000A5F700F381A9 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (163, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FD00E5568F AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (164, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00A26772 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (165, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00A9B931 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (166, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00AAD1C2 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (170, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00ACD260 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (171, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00AEE53A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (172, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00AF49C8 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (173, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00AFA3B8 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (174, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00B0493D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (178, N'admin', N'超级管理员', N'::1', CAST(0x0000A63400AA35E0 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (179, N'admin', N'超级管理员', N'::1', CAST(0x0000A63900EDB39C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (180, N'admin', N'超级管理员', N'::1', CAST(0x0000A6390116CE61 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (181, N'admin', N'超级管理员', N'::1', CAST(0x0000A63A009EED64 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (182, N'admin', N'超级管理员', N'::1', CAST(0x0000A63B00A36F2E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (183, N'admin', N'超级管理员', N'::1', CAST(0x0000A63B00A8029D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (184, N'admin', N'超级管理员', N'::1', CAST(0x0000A63B00A88021 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (185, N'admin', N'超级管理员', N'::1', CAST(0x0000A63B00AA0E59 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (186, N'admin', N'超级管理员', N'::1', CAST(0x0000A63B00ACCBC9 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (187, N'admin', N'超级管理员', N'::1', CAST(0x0000A63B00AF0D89 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (188, N'admin', N'超级管理员', N'::1', CAST(0x0000A63B00B061FB AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (189, N'admin', N'超级管理员', N'::1', CAST(0x0000A63B00FF899C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (190, N'admin', N'超级管理员', N'::1', CAST(0x0000A63C00EA8E6C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (191, N'admin', N'超级管理员', N'::1', CAST(0x0000A63C0108EF9D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (192, N'admin', N'超级管理员', N'::1', CAST(0x0000A64400AD705B AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (193, N'admin', N'超级管理员', N'::1', CAST(0x0000A64400AEF1E5 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (194, N'admin', N'超级管理员', N'::1', CAST(0x0000A64400E0DD9B AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (195, N'admin', N'超级管理员', N'::1', CAST(0x0000A64400E2C325 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (198, N'admin', N'超级管理员', N'::1', CAST(0x0000A64700C52400 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (199, N'admin', N'超级管理员', N'::1', CAST(0x0000A64700DA2271 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (200, N'admin', N'超级管理员', N'::1', CAST(0x0000A64700DB66A3 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (201, N'admin', N'超级管理员', N'::1', CAST(0x0000A64700E0580D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (202, N'admin', N'超级管理员', N'::1', CAST(0x0000A64700EB318D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (203, N'admin', N'超级管理员', N'::1', CAST(0x0000A64700EBE51C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (206, N'admin', N'超级管理员', N'::1', CAST(0x0000A64700EE0425 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (207, N'admin', N'超级管理员', N'::1', CAST(0x0000A64700EF15F2 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (208, N'admin', N'超级管理员', N'::1', CAST(0x0000A64700F04CD6 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (209, N'admin', N'超级管理员', N'::1', CAST(0x0000A64700F11450 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (211, N'admin', N'超级管理员', N'::1', CAST(0x0000A648009D8257 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (212, N'admin', N'超级管理员', N'::1', CAST(0x0000A648009F1593 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (213, N'admin', N'超级管理员', N'::1', CAST(0x0000A64800E691DA AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (216, N'admin', N'超级管理员', N'::1', CAST(0x0000A64900DFA416 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (217, N'admin', N'超级管理员', N'::1', CAST(0x0000A64A00EF72A1 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (218, N'admin', N'超级管理员', N'::1', CAST(0x0000A64B009F5044 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (220, N'admin', N'超级管理员', N'::1', CAST(0x0000A64B00E06DFF AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (221, N'admin', N'超级管理员', N'::1', CAST(0x0000A64E00EDD09A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (222, N'admin', N'超级管理员', N'::1', CAST(0x0000A64F00F37679 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (223, N'admin', N'超级管理员', N'::1', CAST(0x0000A65000A8BBFD AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (225, N'admin', N'超级管理员', N'::1', CAST(0x0000A65000C6079C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (226, N'admin', N'超级管理员', N'::1', CAST(0x0000A65000E70BB4 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (227, N'admin', N'超级管理员', N'::1', CAST(0x0000A655011FCF46 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (228, N'admin', N'超级管理员', N'::1', CAST(0x0000A655012601BD AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (229, N'admin', N'超级管理员', N'::1', CAST(0x0000A65600BC7B2E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (230, N'admin', N'超级管理员', N'::1', CAST(0x0000A65600BD0570 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (231, N'admin', N'超级管理员', N'::1', CAST(0x0000A65800B38FEE AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (232, N'admin', N'超级管理员', N'::1', CAST(0x0000A65800B519C7 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (234, N'admin', N'超级管理员', N'::1', CAST(0x0000A65800B60FFC AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (235, N'admin', N'超级管理员', N'::1', CAST(0x0000A65800B894CC AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (236, N'admin', N'超级管理员', N'::1', CAST(0x0000A65C010E2876 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (237, N'admin', N'超级管理员', N'::1', CAST(0x0000A65D00AB5027 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (238, N'admin', N'超级管理员', N'::1', CAST(0x0000A65E011399BA AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (239, N'admin', N'超级管理员', N'::1', CAST(0x0000A66400BB3937 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (241, N'admin', N'超级管理员', N'::1', CAST(0x0000A66500AC3C9A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (242, N'admin', N'超级管理员', N'::1', CAST(0x0000A66500AE404E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (245, N'admin', N'超级管理员', N'::1', CAST(0x0000A66600A14B43 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (246, N'admin', N'超级管理员', N'::1', CAST(0x0000A66600A23A21 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (247, N'admin', N'超级管理员', N'::1', CAST(0x0000A6BE010476C4 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (248, N'admin', N'超级管理员', N'::1', CAST(0x0000A6BF00A23B05 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (249, N'admin', N'超级管理员', N'::1', CAST(0x0000A6BF00A4465C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (251, N'admin', N'超级管理员', N'::1', CAST(0x0000A6C100AFCAF6 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (252, N'admin', N'超级管理员', N'::1', CAST(0x0000A71300B88C32 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (253, N'admin', N'超级管理员', N'::1', CAST(0x0000A71300BA895F AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (254, N'admin', N'超级管理员', N'::1', CAST(0x0000A71400E6EDA0 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (255, N'admin', N'超级管理员', N'::1', CAST(0x0000A7140101D33E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (261, N'admin', N'超级管理员', N'::1', CAST(0x0000A74E00A8AC42 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (262, N'admin', N'超级管理员', N'::1', CAST(0x0000A74E00A91399 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (263, N'admin', N'超级管理员', N'::1', CAST(0x0000A74E00AA864E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (264, N'admin', N'超级管理员', N'::1', CAST(0x0000A74E00AC1BFA AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (265, N'why778', N'小杰', N'::1', CAST(0x0000A74E00AD3DA6 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (266, N'admin', N'超级管理员', N'::1', CAST(0x0000A74E00AF1173 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (267, N'admin', N'超级管理员', N'::1', CAST(0x0000A75C00E0A233 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (268, N'admin', N'超级管理员', N'::1', CAST(0x0000A75C00E5A806 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (270, N'admin', N'超级管理员', N'::1', CAST(0x0000A75C00F549B9 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (271, N'admin', N'超级管理员', N'::1', CAST(0x0000A75C00FD7916 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (272, N'admin', N'超级管理员', N'192.168.40.19', CAST(0x0000A75C01007D91 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (273, N'admin', N'超级管理员', N'::1', CAST(0x0000A75C0100FF9B AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (274, N'admin', N'超级管理员', N'192.168.40.35', CAST(0x0000A75C01011F53 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (275, N'admin', N'超级管理员', N'::1', CAST(0x0000A75C01067C31 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (277, N'admin', N'超级管理员', N'::1', CAST(0x0000A75F00AC65E1 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (278, N'admin', N'超级管理员', N'::1', CAST(0x0000A75F00BAB26A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (280, N'admin', N'超级管理员', N'::1', CAST(0x0000A76000A4105F AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (281, N'admin', N'超级管理员', N'::1', CAST(0x0000A76000A5EF75 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (283, N'admin', N'超级管理员', N'::1', CAST(0x0000A76000A931D1 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (284, N'admin', N'超级管理员', N'::1', CAST(0x0000A76000AB49D8 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (289, N'admin', N'超级管理员', N'127.0.0.1', CAST(0x0000A76000B740A6 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (292, N'admin', N'超级管理员', N'127.0.0.1', CAST(0x0000A76000FEBC21 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (293, N'admin', N'超级管理员', N'::1', CAST(0x0000A7610090C87B AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (299, N'admin', N'超级管理员', N'::1', CAST(0x0000A762009FCB55 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (301, N'admin', N'超级管理员', N'::1', CAST(0x0000A76200AB4C7C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (304, N'admin', N'超级管理员', N'::1', CAST(0x0000A76200DE9745 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (308, N'admin', N'超级管理员', N'::1', CAST(0x0000A763009FACE4 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (309, N'layer5', N'关羽', N'::1', CAST(0x0000A76300A1C061 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (310, N'admin', N'超级管理员', N'::1', CAST(0x0000A76300A1DB1C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (311, N'layer5', N'关羽', N'::1', CAST(0x0000A76300A4C3F9 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (312, N'admin', N'超级管理员', N'::1', CAST(0x0000A76300A4EF05 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (314, N'admin', N'超级管理员', N'::1', CAST(0x0000A767009FF18A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (317, N'admin', N'超级管理员', N'::1', CAST(0x0000A76700EC858B AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (318, N'admin', N'超级管理员', N'::1', CAST(0x0000A76700F435BE AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (321, N'admin', N'超级管理员', N'::1', CAST(0x0000A76800A6E682 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (322, N'admin', N'超级管理员', N'::1', CAST(0x0000A76800A83799 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (325, N'admin', N'超级管理员', N'::1', CAST(0x0000A76800B1B294 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (326, N'admin', N'超级管理员', N'::1', CAST(0x0000A76800DFFF0A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (327, N'admin', N'超级管理员', N'::1', CAST(0x0000A76800E18E79 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (328, N'admin', N'超级管理员', N'::1', CAST(0x0000A76800E1E47D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (330, N'admin', N'超级管理员', N'::1', CAST(0x0000A76900AA3B5C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (332, N'admin', N'超级管理员', N'::1', CAST(0x0000A76900E34668 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (334, N'admin', N'超级管理员', N'::1', CAST(0x0000A76A009D4C6A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (337, N'admin', N'超级管理员', N'::1', CAST(0x0000A76E00B3FA69 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (167, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00ABA18C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (168, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00AC3B0C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (169, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00AC6442 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (175, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00B0F547 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (176, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00B194BA AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (177, N'admin', N'超级管理员', N'::1', CAST(0x0000A5FE00B1D42A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (233, N'admin', N'超级管理员', N'::1', CAST(0x0000A65800B5E98B AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (243, N'admin', N'超级管理员', N'::1', CAST(0x0000A66500AE6F2F AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (250, N'admin', N'超级管理员', N'::1', CAST(0x0000A6BF00B039EC AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (256, N'admin', N'超级管理员', N'::1', CAST(0x0000A71401097809 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (269, N'admin', N'超级管理员', N'::1', CAST(0x0000A75C00EBE1FE AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (279, N'admin', N'超级管理员', N'::1', CAST(0x0000A75F00BEBDA6 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (282, N'admin', N'超级管理员', N'::1', CAST(0x0000A76000A6EF58 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (295, N'admin', N'超级管理员', N'::1', CAST(0x0000A76100FAFCD5 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (302, N'admin', N'超级管理员', N'::1', CAST(0x0000A76200C4B716 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (303, N'admin', N'超级管理员', N'::1', CAST(0x0000A76200C55D1B AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (320, N'admin', N'超级管理员', N'::1', CAST(0x0000A767010F98D2 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (323, N'admin', N'超级管理员', N'::1', CAST(0x0000A76800A928BF AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (324, N'admin', N'超级管理员', N'::1', CAST(0x0000A76800AE6941 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (336, N'admin', N'超级管理员', N'::1', CAST(0x0000A76A00C052C9 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (338, N'admin', N'超级管理员', N'::1', CAST(0x0000A76F00E17B8A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (339, N'admin', N'超级管理员', N'::1', CAST(0x0000A76F00E6FCD6 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (340, N'admin', N'超级管理员', N'::1', CAST(0x0000A76F00EF7785 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (341, N'admin', N'超级管理员', N'::1', CAST(0x0000A77000C20C60 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (342, N'admin', N'超级管理员', N'::1', CAST(0x0000A771009D59A0 AS DateTime))
GO
print 'Processed 300 total records'
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (344, N'admin', N'超级管理员', N'::1', CAST(0x0000A77100AD3ADD AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (346, N'admin', N'超级管理员', N'::1', CAST(0x0000A77100BB5AC7 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (348, N'admin', N'超级管理员', N'::1', CAST(0x0000A77100D8C872 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (349, N'admin', N'超级管理员', N'::1', CAST(0x0000A77100DAD47D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (350, N'admin', N'超级管理员', N'::1', CAST(0x0000A77100E5BA17 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (352, N'admin', N'超级管理员', N'::1', CAST(0x0000A771010B3850 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (353, N'admin', N'超级管理员', N'::1', CAST(0x0000A77400D9B927 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (354, N'admin', N'超级管理员', N'::1', CAST(0x0000A77400E9B937 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (355, N'admin', N'超级管理员', N'::1', CAST(0x0000A77400F1D951 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (356, N'admin', N'超级管理员', N'::1', CAST(0x0000A77400F33057 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (359, N'admin', N'超级管理员', N'::1', CAST(0x0000A774011DD04F AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (360, N'admin', N'超级管理员', N'::1', CAST(0x0000A775009F41E7 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (361, N'admin', N'超级管理员', N'::1', CAST(0x0000A77500A737F5 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (362, N'admin', N'超级管理员', N'::1', CAST(0x0000A77500FEF87B AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (365, N'admin', N'超级管理员', N'::1', CAST(0x0000A775010A4F17 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (368, N'admin', N'超级管理员', N'::1', CAST(0x0000A7750116C53E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (374, N'admin', N'超级管理员', N'::1', CAST(0x0000A776009F76D4 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (375, N'admin', N'超级管理员', N'192.168.40.35', CAST(0x0000A77600A57563 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (376, N'admin', N'超级管理员', N'::1', CAST(0x0000A77600AEF700 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (380, N'admin', N'超级管理员', N'192.168.40.35', CAST(0x0000A77600B23BA7 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (383, N'admin', N'超级管理员', N'192.168.40.35', CAST(0x0000A77600B8C6FD AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (384, N'admin', N'超级管理员', N'::1', CAST(0x0000A777009ECDD1 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (386, N'admin', N'超级管理员', N'::1', CAST(0x0000A77700A8EB2C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (387, N'admin', N'超级管理员', N'::1', CAST(0x0000A77700AE8510 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (388, N'admin', N'超级管理员', N'::1', CAST(0x0000A77700B12AF4 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (389, N'admin', N'超级管理员', N'::1', CAST(0x0000A77700B1AA4A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (390, N'admin', N'超级管理员', N'::1', CAST(0x0000A77700B66931 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (391, N'admin', N'超级管理员', N'::1', CAST(0x0000A77800BC4CD8 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (392, N'admin', N'超级管理员', N'::1', CAST(0x0000A77B00B11536 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (393, N'admin', N'超级管理员', N'::1', CAST(0x0000A77B00FAD1D6 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (196, N'admin', N'超级管理员', N'::1', CAST(0x0000A64400F8919C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (197, N'admin', N'超级管理员', N'::1', CAST(0x0000A64400F95E22 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (204, N'admin', N'超级管理员', N'::1', CAST(0x0000A64700ECBDB8 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (205, N'admin', N'超级管理员', N'::1', CAST(0x0000A64700ED1CF7 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (210, N'admin', N'超级管理员', N'::1', CAST(0x0000A64700F207D8 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (219, N'admin', N'超级管理员', N'::1', CAST(0x0000A64B00A731DD AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (224, N'admin', N'超级管理员', N'::1', CAST(0x0000A65000B16207 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (240, N'admin', N'超级管理员', N'::1', CAST(0x0000A66400F4BA86 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (294, N'admin', N'超级管理员', N'::1', CAST(0x0000A76100A78160 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (296, N'admin', N'超级管理员', N'::1', CAST(0x0000A76100FC0119 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (297, N'layer5', N'关羽', N'::1', CAST(0x0000A76100FC6505 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (298, N'admin', N'超级管理员', N'::1', CAST(0x0000A76100FC7433 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (300, N'admin', N'超级管理员', N'::1', CAST(0x0000A76200A6E225 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (305, N'admin', N'超级管理员', N'::1', CAST(0x0000A76200FBA97E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (306, N'admin', N'超级管理员', N'::1', CAST(0x0000A762011DBAC3 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (307, N'admin', N'超级管理员', N'::1', CAST(0x0000A762011EC4D2 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (331, N'admin', N'超级管理员', N'::1', CAST(0x0000A76900BD111F AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (333, N'admin', N'超级管理员', N'::1', CAST(0x0000A76900E5668E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (335, N'admin', N'超级管理员', N'::1', CAST(0x0000A76A00BCC505 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (214, N'admin', N'超级管理员', N'::1', CAST(0x0000A64800EC0BA9 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (215, N'admin', N'超级管理员', N'127.0.0.1', CAST(0x0000A64800F0594B AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (343, N'admin', N'超级管理员', N'::1', CAST(0x0000A77100A2424E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (345, N'admin', N'超级管理员', N'::1', CAST(0x0000A77100BA92BA AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (347, N'admin', N'超级管理员', N'::1', CAST(0x0000A77100C49C8A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (351, N'admin', N'超级管理员', N'::1', CAST(0x0000A77100E8F353 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (385, N'admin', N'超级管理员', N'::1', CAST(0x0000A77700A09D28 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (244, N'admin', N'超级管理员', N'::1', CAST(0x0000A66500AEC5A4 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (257, N'admin', N'超级管理员', N'::1', CAST(0x0000A714010A190E AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (258, N'admin', N'超级管理员', N'::1', CAST(0x0000A714010A7485 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (259, N'admin', N'超级管理员', N'::1', CAST(0x0000A714010B9E0F AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (260, N'admin', N'超级管理员', N'::1', CAST(0x0000A714010C1F8D AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (276, N'admin', N'超级管理员', N'::1', CAST(0x0000A75C0107FEEE AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (285, N'admin', N'超级管理员', N'127.0.0.1', CAST(0x0000A76000B21BF3 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (286, N'admin', N'超级管理员', N'127.0.0.1', CAST(0x0000A76000B27CD8 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (287, N'admin', N'超级管理员', N'127.0.0.1', CAST(0x0000A76000B4FF82 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (288, N'admin', N'超级管理员', N'127.0.0.1', CAST(0x0000A76000B53C24 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (290, N'admin', N'超级管理员', N'127.0.0.1', CAST(0x0000A76000E4CB7A AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (291, N'admin', N'超级管理员', N'127.0.0.1', CAST(0x0000A76000F6DA48 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (313, N'admin', N'超级管理员', N'::1', CAST(0x0000A76300AAB4AA AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (315, N'admin', N'超级管理员', N'::1', CAST(0x0000A76700C032B3 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (316, N'admin', N'超级管理员', N'::1', CAST(0x0000A76700DEA397 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (319, N'admin', N'超级管理员', N'::1', CAST(0x0000A76700FF7D40 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (329, N'admin', N'超级管理员', N'::1', CAST(0x0000A7680104E706 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (357, N'admin', N'超级管理员', N'::1', CAST(0x0000A774010BFCA7 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (358, N'admin', N'超级管理员', N'::1', CAST(0x0000A774010E2476 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (363, N'admin', N'超级管理员', N'::1', CAST(0x0000A7750103FEFB AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (364, N'admin', N'超级管理员', N'::1', CAST(0x0000A775010955D7 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (366, N'admin', N'超级管理员', N'192.168.40.35', CAST(0x0000A7750113F79F AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (367, N'admin', N'超级管理员', N'192.168.40.35', CAST(0x0000A77501152C39 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (369, N'admin', N'超级管理员', N'192.168.40.35', CAST(0x0000A77501168694 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (370, N'admin', N'超级管理员', N'192.168.40.35', CAST(0x0000A7750116A4DE AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (371, N'admin', N'超级管理员', N'::1', CAST(0x0000A775011C56D9 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (372, N'admin', N'超级管理员', N'::1', CAST(0x0000A77501202CC5 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (373, N'admin', N'超级管理员', N'::1', CAST(0x0000A77501251C1C AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (377, N'admin', N'超级管理员', N'::1', CAST(0x0000A77600AFEFF0 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (378, N'admin', N'超级管理员', N'::1', CAST(0x0000A77600B054E5 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (379, N'admin', N'超级管理员', N'::1', CAST(0x0000A77600B13C32 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (381, N'admin', N'超级管理员', N'::1', CAST(0x0000A77600B39841 AS DateTime))
INSERT [LoginLog] ([LoginID], [LoginName], [LoginNicker], [LoginIP], [LoginTime]) VALUES (382, N'admin', N'超级管理员', N'192.168.40.35', CAST(0x0000A77600B84454 AS DateTime))
SET IDENTITY_INSERT [LoginLog] OFF
/****** Object:  Table [DictionaryCategory]    Script Date: 05/22/2017 16:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [DictionaryCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [varchar](100) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [DictionaryCategory] ON
INSERT [DictionaryCategory] ([ID], [Category], [Enabled], [CreateTime], [UpdateTime]) VALUES (1, N'部门', 1, CAST(0x0000A5EF00000000 AS DateTime), CAST(0x0000A76800E9CAAD AS DateTime))
INSERT [DictionaryCategory] ([ID], [Category], [Enabled], [CreateTime], [UpdateTime]) VALUES (16, N'测试用的', 1, CAST(0x0000A76800B45490 AS DateTime), NULL)
SET IDENTITY_INSERT [DictionaryCategory] OFF
/****** Object:  Table [Dictionary]    Script Date: 05/22/2017 16:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Dictionary](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DicCategoryID] [int] NOT NULL,
	[DicValue] [varchar](200) NOT NULL,
	[Enabled] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [Dictionary] ON
INSERT [Dictionary] ([ID], [DicCategoryID], [DicValue], [Enabled], [CreateTime], [UpdateTime]) VALUES (1, 1, N'市场部', 1, CAST(0x0000A5EF00000000 AS DateTime), CAST(0x0000A76900B0C434 AS DateTime))
INSERT [Dictionary] ([ID], [DicCategoryID], [DicValue], [Enabled], [CreateTime], [UpdateTime]) VALUES (2, 1, N'技术部', 0, CAST(0x0000A5EF00000000 AS DateTime), CAST(0x0000A76900B0D205 AS DateTime))
INSERT [Dictionary] ([ID], [DicCategoryID], [DicValue], [Enabled], [CreateTime], [UpdateTime]) VALUES (3, 1, N'客服部', 1, CAST(0x0000A5F000000000 AS DateTime), NULL)
INSERT [Dictionary] ([ID], [DicCategoryID], [DicValue], [Enabled], [CreateTime], [UpdateTime]) VALUES (4, 1, N'服务部', 1, CAST(0x0000A5F100000000 AS DateTime), CAST(0x0000A5F700B58D20 AS DateTime))
INSERT [Dictionary] ([ID], [DicCategoryID], [DicValue], [Enabled], [CreateTime], [UpdateTime]) VALUES (12, 16, N'测试1', 1, CAST(0x0000A76800C4DA5C AS DateTime), NULL)
INSERT [Dictionary] ([ID], [DicCategoryID], [DicValue], [Enabled], [CreateTime], [UpdateTime]) VALUES (13, 16, N'测试3', 1, CAST(0x0000A76800FA0F12 AS DateTime), CAST(0x0000A76800FD1722 AS DateTime))
INSERT [Dictionary] ([ID], [DicCategoryID], [DicValue], [Enabled], [CreateTime], [UpdateTime]) VALUES (14, 16, N'测试4', 0, CAST(0x0000A76800FA85A5 AS DateTime), CAST(0x0000A76800FD2B03 AS DateTime))
INSERT [Dictionary] ([ID], [DicCategoryID], [DicValue], [Enabled], [CreateTime], [UpdateTime]) VALUES (15, 16, N'测试2', 1, CAST(0x0000A76800FC40FF AS DateTime), NULL)
INSERT [Dictionary] ([ID], [DicCategoryID], [DicValue], [Enabled], [CreateTime], [UpdateTime]) VALUES (16, 16, N'测试2', 1, CAST(0x0000A76800FC6051 AS DateTime), NULL)
INSERT [Dictionary] ([ID], [DicCategoryID], [DicValue], [Enabled], [CreateTime], [UpdateTime]) VALUES (17, 16, N'测试3', 1, CAST(0x0000A76800FCED17 AS DateTime), NULL)
INSERT [Dictionary] ([ID], [DicCategoryID], [DicValue], [Enabled], [CreateTime], [UpdateTime]) VALUES (18, 16, N'测试3', 1, CAST(0x0000A7680107F595 AS DateTime), NULL)
SET IDENTITY_INSERT [Dictionary] OFF
/****** Object:  Table [Button]    Script Date: 05/22/2017 16:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Button](
	[ButtonID] [int] IDENTITY(1,1) NOT NULL,
	[ButtonOpID] [nvarchar](100) NULL,
	[ButtonName] [nvarchar](100) NOT NULL,
	[ButtonOperation] [nvarchar](100) NULL,
	[ButtonMagic] [nvarchar](100) NULL,
	[ButtonDescribe] [nvarchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Button] ON
INSERT [Button] ([ButtonID], [ButtonOpID], [ButtonName], [ButtonOperation], [ButtonMagic], [ButtonDescribe], [CreateTime], [UpdateTime]) VALUES (1, N'Create', N'新增', N'CreateModal', N'glyphicon glyphicon-plus', N'用于创建信息', CAST(0x0000A5D400FE5B56 AS DateTime), CAST(0x0000A5E900A0E6E8 AS DateTime))
INSERT [Button] ([ButtonID], [ButtonOpID], [ButtonName], [ButtonOperation], [ButtonMagic], [ButtonDescribe], [CreateTime], [UpdateTime]) VALUES (2, N'Edit', N'编辑', NULL, N'glyphicon glyphicon-pencil', N'用于编辑信息', CAST(0x0000A5D400FE5B56 AS DateTime), NULL)
INSERT [Button] ([ButtonID], [ButtonOpID], [ButtonName], [ButtonOperation], [ButtonMagic], [ButtonDescribe], [CreateTime], [UpdateTime]) VALUES (3, N'Delete', N'删除', NULL, N'glyphicon glyphicon-remove', N'用于删除信息', CAST(0x0000A5D400FE5B56 AS DateTime), NULL)
INSERT [Button] ([ButtonID], [ButtonOpID], [ButtonName], [ButtonOperation], [ButtonMagic], [ButtonDescribe], [CreateTime], [UpdateTime]) VALUES (4, N'DownLoad', N'下载', NULL, N'glyphicon glyphicon-download', N'用于下载信息', CAST(0x0000A5D400FE5B56 AS DateTime), NULL)
INSERT [Button] ([ButtonID], [ButtonOpID], [ButtonName], [ButtonOperation], [ButtonMagic], [ButtonDescribe], [CreateTime], [UpdateTime]) VALUES (7, N'export', N'导出', N'#wdaw', N'glyphicon glyphicon-export', N'导出相关Execl', CAST(0x0000A5D400FE5B56 AS DateTime), CAST(0x0000A5D700BBAEDB AS DateTime))
INSERT [Button] ([ButtonID], [ButtonOpID], [ButtonName], [ButtonOperation], [ButtonMagic], [ButtonDescribe], [CreateTime], [UpdateTime]) VALUES (9, N'import', N'导入', NULL, N'glyphicon glyphicon-import', N'导入相关数据', CAST(0x0000A5D70113E565 AS DateTime), NULL)
INSERT [Button] ([ButtonID], [ButtonOpID], [ButtonName], [ButtonOperation], [ButtonMagic], [ButtonDescribe], [CreateTime], [UpdateTime]) VALUES (10, N'distributionRole', N'分配角色', NULL, N'glyphicon glyphicon-user', NULL, CAST(0x0000A5E8010E7ABE AS DateTime), NULL)
INSERT [Button] ([ButtonID], [ButtonOpID], [ButtonName], [ButtonOperation], [ButtonMagic], [ButtonDescribe], [CreateTime], [UpdateTime]) VALUES (11, N'Disabled', N'禁用', NULL, N'glyphicon glyphicon-ban-circle', N'不删除修改状态', CAST(0x0000A5E900A6ECB6 AS DateTime), CAST(0x0000A5FE00DB0725 AS DateTime))
INSERT [Button] ([ButtonID], [ButtonOpID], [ButtonName], [ButtonOperation], [ButtonMagic], [ButtonDescribe], [CreateTime], [UpdateTime]) VALUES (5, N'UpLoad', N'上传', NULL, N'glyphicon glyphicon-upload', N'用户上传文件', CAST(0x0000A5D400FE5B56 AS DateTime), NULL)
SET IDENTITY_INSERT [Button] OFF
/****** Object:  Table [Account]    Script Date: 05/22/2017 16:02:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[TestID] [int] NULL,
	[Total] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Account] ON
INSERT [Account] ([AccountID], [TestID], [Total]) VALUES (1, 4, 800)
SET IDENTITY_INSERT [Account] OFF
/****** Object:  Default [DFUserIsEnable]    Script Date: 05/22/2017 16:02:47 ******/
ALTER TABLE [User] ADD  CONSTRAINT [DFUserIsEnable]  DEFAULT ((1)) FOR [IsEnable]
GO
/****** Object:  Default [DFMenuIsVisible]    Script Date: 05/22/2017 16:02:47 ******/
ALTER TABLE [Menu] ADD  CONSTRAINT [DFMenuIsVisible]  DEFAULT ((1)) FOR [IsVisible]
GO
/****** Object:  Default [DFDictionaryCategoryEnabled]    Script Date: 05/22/2017 16:02:47 ******/
ALTER TABLE [DictionaryCategory] ADD  CONSTRAINT [DFDictionaryCategoryEnabled]  DEFAULT ((1)) FOR [Enabled]
GO
/****** Object:  Default [DFDictionaryCategoryCreateTime]    Script Date: 05/22/2017 16:02:47 ******/
ALTER TABLE [DictionaryCategory] ADD  CONSTRAINT [DFDictionaryCategoryCreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DFDictionaryEnabled]    Script Date: 05/22/2017 16:02:47 ******/
ALTER TABLE [Dictionary] ADD  CONSTRAINT [DFDictionaryEnabled]  DEFAULT ((1)) FOR [Enabled]
GO
/****** Object:  Default [DFDictionaryCreateTime]    Script Date: 05/22/2017 16:02:47 ******/
ALTER TABLE [Dictionary] ADD  CONSTRAINT [DFDictionaryCreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
