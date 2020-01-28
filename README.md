
 * need
   * docker
   * docker-compose
   * apache2-utils(Ubuntu) or httpd-tools(CentOS)

 * run: ./initstart.sh

 * access: https://\<host>/
   * basic auth: ${GF_SECURITY_ADMIN_USER}/${GF_SECURITY_ADMIN_PASSWORD}
     * see docker-compose.yml
   * add data source: [Prometheus] http://prometheus:9090
   * [sample dashboard json](./grafana_sample_dashboard.json) import for https://\<host>/dashboard/import

