# Operation Hambone

## Setup

### Database

Nuclear option:

```
rm -rf /usr/local/var/postgres && initdb /usr/local/var/postgres -E utf8
```

### PWS

```
cf create-service elephantsql turtle rails-postgres
```

## Deploy

```
./script/deploy
```
