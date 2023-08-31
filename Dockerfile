# Use the official Python 3.10 image as the base image
FROM python:3.10.11

# Set the working directory inside the container
WORKDIR /project-1

# Install Jupyter and other dependencies
RUN pip install --no-cache-dir \
    ipython==8.4.0 \
    ipykernel==6.15.1 \
    ipywidgets==7.7.1 \
    jupyter_client==7.3.4 \
    jupyter_core==4.11.1 \
    nbclient==0.6.6 \
    nbconvert==6.5.3 \
    nbformat==5.4.0 \
    notebook==6.4.12 \
    qtconsole==5.3.1 \
    traitlets==5.3.0 \
    pyodbc \
    pandas \
    seaborn \
    matplotlib

# Expose the Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook server on container launch
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
