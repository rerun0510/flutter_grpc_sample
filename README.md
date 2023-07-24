# flutter_grpc_sample 🚀💙

This is a sample for Flutter and gRPC Server for Dart. This project requires Docker to be installed.

## Start up a project

Please follow the steps below in the root directory.

1. Resolving dependencies

   ```
   melos bs
   ```

2. Start a Redis server

   ```
   docker compose up -d
   ```

3. Start a gRPC server

   ```
   melos run server
   ```

If the following log is output to the console, the startup is successful.

```
Server listening on port 8080...
```

## Generating code from a proto file

Please follow the steps below in the root directory.

- lint
  ```
  melos run pb:lint
  ```
- format
  ```
  melos run pb:format
  ```
- generate
  ```
  melos run pb:gen
  ```
- execute all
  ```
  melos run pb:all
  ```
