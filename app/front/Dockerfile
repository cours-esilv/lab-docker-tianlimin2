FROM nginx:alpine

ENV WS_BACK_URL=http://backend:5000

# Corrected COPY command
COPY . /usr/share/nginx/html

# Copy entrypoint.sh to the root directory
COPY entrypoint.sh /entrypoint.sh

# Make entrypoint.sh executable
RUN chmod +rx /entrypoint.sh

# Corrected ENTRYPOINT path
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 80
