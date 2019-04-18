# Sinatra with GraphQL

## Requirements

* Ruby 2.5.0
* Sqlite3

After have your workcopy cloned into your machine, run
```
$ bundle install
$ rake db:create db:migrate db:seed
```

## Running locally

If you want use shotgun, run
```
$ bundle exec shotgun -p 9292
```

If you want run it with rack, use
```
$ bundle exec rackup -o 0.0.0.0
```

## Getting data consuming this service

Import `GraphQL.postman_collection.json` into your Postman or

```
$ curl -X POST -H 'Content-Type: application/json' http://localhost:9292/graphql  --data '{ "query": "{ artists { name songs { name key duration } } }" }'

$ curl -X POST -H 'Content-Type: application/json' http://localhost:9292/graphql  --data '{ "query": "{ songs { name key duration } }" }'
```

## External references

* [This article](https://medium.com/hash32/graphql-server-with-sinatra-ruby-part-1-fdd664170715)
