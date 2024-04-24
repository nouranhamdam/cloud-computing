# Use the official Jupyter Docker image as base
FROM jupyter/datascience-notebook

# Copy notebook files into the container
COPY . /home/jovyan/work

# Set the working directory
WORKDIR /home/jovyan/work

# Expose port 8888 to allow communication to/from Jupyter notebook server
EXPOSE 8888

# Command to run Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]