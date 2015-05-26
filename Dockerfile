## Start with ropensci image
FROM rocker/ropensci
MAINTAINER Chris Bogart cbogartdenver@gmail.com


## just install scimapClient
ADD Rprofile /home/rstudio/.Rprofile
RUN installGithub.r cbogart/cleanup@usr1
RUN installGithub.r cbogart/scimapClient@rocker
ADD supervisord.conf /etc/supervisor/conf.d/supervisor.conf
ADD usersignal.sh /home/rstudio/usersignal.sh
CMD ["/home/rstudio/usersignal.sh"]

