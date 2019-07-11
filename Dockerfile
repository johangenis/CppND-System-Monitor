# Get the GCC preinstalled image from Docker Hub
FROM gcc:latest

# Install ncurses.
RUN apt-get install libncurses5-dev
# libncursesw5-dev

# Label the image.
LABEL Name=cppnd-system-monitor Version=0.0.1

# Setup directory structure
# RUN mkdir /CppND-System-Monitor
# Specify the working directory
WORKDIR /CppND-System-Monitor

# Setup directory structure
# RUN mkdir /CppND-System-Monitor

# Copy the current folder which contains C++ source code to the Docker image
# COPY ./CppND-System-Monitor/ /CppND-System-Monitor
COPY . /CppND-System-Monitor

# Create a user.
RUN adduser johan
USER johan
 
# Use GCC to compile the Test.cpp source file
# RUN g++ -o Test Test.cpp
 
# Run the program output from the previous step
# CMD ["./Test"]
