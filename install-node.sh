# If you have a 64-bit system then download binary package:
wget https://nodejs.org/dist/v10.14.0/node-v10.14.0-linux-x64.tar.gz

# Extract what you downloaded:
tar xzvf node-v10.14.0-linux-x64.tar.gz

# Change the file ownership:
chown -Rv root.root node-v10.14.0-linux-x64

# Install files in /opt/node-6.7.0
cp -Rvi node-v10.14.0-linux-x64 /opt/node-6.7.0








wget https://nodejs.org/dist/v10.14.0/node-v10.14.0-linux-x64.tar.gz && \
tar xzvf node-v10.14.0-linux-x64.tar.gz && \
chown -Rv root.root node-v10.14.0-linux-x64 && \
cp -Rvi node-v10.14.0-linux-x64 /opt/node-6.7.0








# # Install files in /usr/local
# sudo cp -Rvi node-v10.14.0-linux-x64/{bin,include,lib,share} /usr/local
# # (change -Rvi to -Rvf if you want to overwrite existing files)

# # Install files in /opt/node
# sudo cp -Rvi node-v10.14.0-linux-x64 /opt/node



