# Advanced app

This microservice app has two components: frontend and backend part. Frontend part is a simple web UI written on JS where you click on button and it returns random quote. Backend is a python-based code which works on Fast API and stores three quotes which randomly choosen and sent by demand from frontend.

Your task here to dockerize this application: you can use separate docker-compose files or one for both services. Check comments for detailed information how it works. Possibly you need to check how to dockerize JS and Python application.

## Advanced task

- [ ] For backend, write two dockerfiles - one for based image, second for app image
- [ ] For frontend, write dockerfile which use multistage approach
