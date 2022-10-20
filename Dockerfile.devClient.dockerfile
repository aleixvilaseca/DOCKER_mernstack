# Pull the Node image from Docker Hub
FROM node:14-slim

# Setting Working Directory
WORKDIR /usr/app

# Copying only package.json
COPY package.json ./

# Install Dependencies
RUN npm install

# Copy rest of the code to container
COPY . .

EXPOSE 3000

# Run the React app
CMD ["npm", "start"]



#1.We are starting from the base image node:104-slim.
#2.Set the working directory as /usr/app
#3.copy the package.json to install all the dependencies
#4.We need to install all the dependencies
#5.Exposing the port 3000
#6.Finally, we run the command npm start