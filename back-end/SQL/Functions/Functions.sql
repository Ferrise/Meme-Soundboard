--Function that checks whether an account exists with a given username and password
--usage SELECT userExists('Username','Password');
create or replace function userExists(u varchar, p varchar) returns boolean as
$$
select exists(select 1 from users where userName = u AND pass = p) AS "exists";
$$ language sql;

--Function that returns the filePath for the sound file with the given name if it exists
--usage SELECT soundExists('Name');
create or replace function soundExists(snd varchar) returns varchar as
$$
select sF.filePath
from soundFiles sF
where exists(select 1 from soundFiles where fileName = snd);
$$ language sql;

