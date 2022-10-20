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

EXPOSE 3080

# Run the API on Nodemon
CMD ["npm", "run", "dev"]

#1.We are starting from the base image node:14-slim.
#2.Set the working directory as /usr/app.
#3.copy the package.json to install all the dependencies
#4.Install all the dependencies
#5.We need to put this expose command for documentation purposes so that other developers know this service runs on port 3080.
#6.Finally, we run the command npm run dev