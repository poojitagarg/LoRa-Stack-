docker-compose pull
docker-compose run --rm stack is-db init
docker-compose run --rm stack is-db create-admin-user \
  --id admin \
  --email poojita8garg@email.com                            #password=1234
docker-compose run --rm stack is-db create-oauth-client \
  --id cli \
  --name "Command Line Interface" \
  --owner admin \
  --no-secret \
  --redirect-uri "local-callback" \
  --redirect-uri "code"
docker-compose run --rm stack is-db create-oauth-client \
  --id console \
  --name "Console" \
  --owner admin \
  --secret console \
  --redirect-uri "https://thethings.example.com/console/oauth/callback" \
  --redirect-uri "/console/oauth/callback" \
  --logout-redirect-uri "https://thethings.example.com/console" \
  --logout-redirect-uri "/console" \
