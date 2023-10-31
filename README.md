# MTB-data-project

## How to run the program
  #### 1. Building the image
  Use the following command to build docker image:
  We are going to use `docker build -t <name>` . We use Docker build because we are building with docker the `-t` means we are going to name it something else within `<name>`. The `.` just specifices the directory inwhich the dockerfile exist.

  #### 2. Starting the container
  Use the following command to start the container:
  `docker run -it -p 8888:8888 -v "$(pwd)/project:/project" <name>`
  
  #### 3. Accessing the notebook
  Open the link `http://127.0.0.1:8888/?token=...`

  #### 4. Stopping the container
  If you want to stop the container just simply press `CTRL+C` then confirm with `y`
  
## Project Summary

  #### Tech Stack:
  Python, Docker, pandas, jupyter notebook, pyodbc

  #### General Information
  This program is created to showcase the cleaning of data and its upload to the cloud.
