#we will build the React.js application using Node as the base image
FROM node:18-alpine
#creates a working directory that will store the Containerized application
WORKDIR /app
#copying the React.js application libraries and dependencies to the working directory
COPY package.json .
#installs all the copied React.js application libraries and dependencies in the Docker container
RUN npm install
#copies all the files for the React.js application into the working directory
COPY . .
#The Ract.js application will run on this port
EXPOSE 3000
#command to start the React.js containerized application
CMD ["npm", "start"]