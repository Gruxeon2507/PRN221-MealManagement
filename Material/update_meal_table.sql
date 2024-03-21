alter table meals
add [message] nvarchar(MAX)

alter table meals
drop column [date]

alter table meals
drop constraint FK__meals__createdBy__2E1BDC42

alter table meals
drop column createdBy

alter table meals
add [createdBy] datetime

alter table meals
add userId int

alter table meals
add foreign key (userId) references users(id)

