CREATE FUNCTION dbo.Split2 ( @strString varchar(4000)) 

RETURNS  @Result TABLE(Value varchar(1000)) 


AS 

begin 

    WITH StrCTE(start, stop) AS 

    ( 

      SELECT  1, CHARINDEX(',' , @strString ) 

      UNION ALL 


      SELECT  stop + 1, CHARINDEX(',' ,@strString  , stop + 1) 

      FROM StrCTE 

      WHERE stop > 0 

    ) 


    

    insert into @Result 

    SELECT   SUBSTRING(@strString , start, CASE WHEN stop > 0 THEN stop-start ELSE 4000 END) AS stringValue 

    FROM StrCTE 

    

    return 


end    


 