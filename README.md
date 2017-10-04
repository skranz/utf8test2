Example for utf8 problems in shiny-server vs no-problem in rstudio-server

Reproducing the problem:
```
# Pull
docker pull skranz/utf8test2
# Alternatively build yourself
docker build github.com/skranz/utf8test2 -t skranz/utf8test2:latest

# Now copy app.R from the github.com/skranz/utf8test2 into a
# new directory on your server

docker run --rm --name utf8test2 -d -p 4103:3838 -v <directory with app.R on your server>:/srv/shiny-server skranz/utf8test2


# Stop and remove container
docker stop utf8test2
docker rm utf8test2
```
