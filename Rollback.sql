USE FantasyTavern;


begin tran

update FantasyTaverns set Name = 'Pain Train';
Select * from FantasyTaverns;

rollback tran
