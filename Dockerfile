FROM quay.io/ayanokojix2306/kojixsophia:latest


# Clone the repository
RUN git clone https://github.com/devibraah/BWM-XMD/home/suha

# Change ownership of the directory to the 'node' user
RUN chown -R node:node /home/suha

# Switch to the 'node' user
USER node

# Set the working directory
WORKDIR /home/suha


# Install dependencies
RUN npm install 


# Run the start.sh script
CMD ["npm" , "start" ]
