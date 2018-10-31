# README

## DB setup

### Dev

```
CREATE DATABASE memair_ihealth_development;
CREATE USER memair_ihealth_development WITH PASSWORD 'password';
ALTER USER memair_ihealth_development WITH SUPERUSER;
GRANT ALL PRIVILEGES ON DATABASE "memair_ihealth_development" to memair_ihealth_development;
```

### Test

```
CREATE DATABASE memair_ihealth_test;
CREATE USER memair_ihealth_test WITH PASSWORD 'password';
ALTER USER memair_ihealth_test WITH SUPERUSER;
GRANT ALL PRIVILEGES ON DATABASE "memair_ihealth_test" to memair_ihealth_test;
```

### db restarting

bundle exec rake db:drop RAILS_ENV=development
bundle exec rake db:create RAILS_ENV=development
bundle exec rake db:migrate RAILS_ENV=development
