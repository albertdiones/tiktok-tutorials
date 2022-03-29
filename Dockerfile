FROM mattrayner/lamp:latest-1804
ENV CREATE_MYSQL_USER=true
ENV MYSQL_USER_NAME=admin
ENV MYSQL_USER_PASS=IcedCoffee
ENV MYSQL_USER_DB=earth

CMD ["/run.sh"]
