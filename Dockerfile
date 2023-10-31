# Use the official ubuntu:18.04 image as the base image
FROM ubuntu:18.04

RUN apt update
RUN apt-get install sudo
RUN sudo apt update

RUN sudo apt install -y python3-pip python3-dev
RUN sudo -H pip3 install --upgrade pip

# Copy file into containers working dir 
COPY requirements.txt .

# Install jupyter and python packages
RUN pip install jupyter
RUN pip install -r requirements.txt

# Create and enter project folder
RUN mkdir project
WORKDIR /project

# Start Jupyter Notebook server on container launch
CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--no-browser", "--allow-root"]
