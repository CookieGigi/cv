# Use the official Python image as a base
FROM python:3.13-slim

# Install RenderCV:
RUN pip install "rendercv[full]"

# install fontconfig
RUN apt-get update; apt-get install -y fontconfig

COPY ./font/* /root/.local/share/fonts/

# refresh system font cache
RUN fc-cache -f -v

# Create a directory for the app
WORKDIR /rendercv

# Set the entrypoint to /bin/sh instead of Python
ENTRYPOINT ["/bin/bash"]

