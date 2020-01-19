
 * need: docker, docker-compose, apache2-utils(Ubuntu) or httpd-tools(CentOS)

 * ./initstart.sh

 * access: http://<host>/
   * basic auth: ${GF_SECURITY_ADMIN_USER}/${GF_SECURITY_ADMIN_PASSWORD}
     * see docker-compose.yml
   * add data source: [Prometheus] http://prometheus:9090

