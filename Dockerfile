# Use an official Python runtime as a parent image
FROM jupyter/base-notebook:notebook-6.5.3

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 8888 for Jupyter notebooks
EXPOSE 8888

# Run jupyter when the container launches
# "--NotebookApp.allow_origin='*'" is needed to allow the notebook to be accessed from VSCode
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.allow_origin='*'"]
