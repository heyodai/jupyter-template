Build the Docker image:
```
docker build -t my-jupyter-notebook .
```

Run the Docker container:
```
docker run -p 8888:8888 -v /path/to/notebook/directory:/app my-jupyter-notebook
```

Kill the process if it gets stuck:
```
npx kill-port 8080
```
