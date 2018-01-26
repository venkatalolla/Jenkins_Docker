FROM tomcat:8.0.38

COPY /target/ROOT.war /home/surya/Downloads/apache-tomcat-7.0.82/webapps
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["catalina.sh", "run"]
