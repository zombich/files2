-- task 1
create table Promotion
(
	PromotionId int primary key identity,
	Name nvarchar(50) not null,
	Description nvarchar(200) null,
	DiscountAmount int not null,
	StartDate date DEFAULT GetDate() not null,
	EndDate date null
)

--task 2
create table PromotionalItem
(
	PromotionId int not null,
	BookId int not null,

	constraint PK_PromotionalItem
	primary key (PromotionId, BookId),

	constraint FK_PromotionalItem_Promotion
	foreign key (PromotionId)
	references Promotion
	on delete cascade
	on update cascade,

	constraint FK_PromotionalItem_Book
	foreign key (BookId)
	references Book
	on delete no action
	on update cascade
);

--task 3
	alter table Promotion
	add DiscountType nvarchar(5) null

--task 4
	alter table Promotion
	add constraint DF_DiscountType
	default '%' for DiscountType

--task 5
	alter table Promotion
	add constraint CK_DiscountType
	check (DiscountType = '%' or DiscountType = 'руб.')

	alter table Promotion
	add constraint CK_DiscountAmount
	check (DiscountAmount > 0)

--task 6
	alter table Promotion
	add constraint UQ_Promotion
	unique (Name, StartDate)

--task 7
	alter table PromotionalItem
	drop FK_PromotionalItem_Promotion

	drop table Promotion