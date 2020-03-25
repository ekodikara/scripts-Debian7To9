# scripts-Debian7To9
Update Debian 7 to 9

Some times this script will dump lot of errors related to postgresql.
Then try to execute this:
`sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list' ` 

And run the script again.
