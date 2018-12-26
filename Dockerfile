# Installs the current application on a Node Image.
FROM node:10.5

# Sets the path where the app is going to be installed
ENV NODE_ROOT /usr/src/app/

# Creates the directory and all the parents (if they don’t exist)
RUN mkdir -p $NODE_ROOT

# Sets the /usr/app as the active directory
WORKDIR $NODE_ROOT

# Copies all the content
COPY . .

# Install all the packages
RUN npm install -g @angular/cli
RUN yarn install

EXPOSE 4200 4915