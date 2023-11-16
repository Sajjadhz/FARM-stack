# => Build container
FROM node:21-alpine3.17 as build

WORKDIR /home/node/frontend

COPY package.json /home/node/frontend/package.json

RUN npm install

RUN npm install react-scripts -g

COPY . .

RUN npm run build

# => Run container
FROM nginx:1.16.0

COPY --from=build /home/node/frontend/build /usr/share/nginx/html

COPY nginx/nginx-default.conf.template /etc/nginx/conf.d/default.conf.template

COPY nginx/docker-entrypoint.sh /home/node/frontend/
ENTRYPOINT ["/home/node/frontend/docker-entrypoint.sh"]

EXPOSE 80

# Start Nginx server
CMD ["/bin/bash", "-c", "nginx -g \"daemon off;\""]