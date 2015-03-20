 DROP PROCEDURE IF EXISTS `add_hits`;
 CREATE DEFINER=`root`@`localhost` PROCEDURE `add_hits`( In id varchar(255))
 BEGIN
 declare hits_bk int;
 select hits into hits_bk from db_books where Book_ID = id;
 update db_books set hits=hits_bk+1 where Book_ID = id;
 END;
