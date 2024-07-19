### Set Up & Run Locally: 

> Expects node v22.2.0

#### Ensure the following in ```.env``` at root of project

> DATABASE_URL="mysql://root:[PASSWORD]@127.0.0.1:3306/nesjs_prisma"
MYSQL_DATABASE=nestjs_prisma
MYSQL_ROOT_PASSWORD=[PASSWORD]

#### To Run Locally
1) ```npm install``` 
2) Set up database: 

    ```docker compose up```

    ```npx prisma migrate``` 

    Seed Data: 

    ```npm run prisma:seed```

    DB overview (not exhaustive): 

    ![Schema Overview](images/overview.png "This is a rough layout of the schema")

3) Start server

    ```npm run start:dev``` 
