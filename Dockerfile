FROM node:alpine

# RUN npm install -g @open-rpc/generator@1.22.3 jest ts-jest typescript @types/jest @types/node ts-interface-builder 
# RUN npm install -g @open-rpc/client-js@1.8.1 @open-rpc/meta-schema@1.14.2 @open-rpc/schema-utils-js@1.15.0 lodash @types/json-schema
# RUN npm install -g ts-loader


WORKDIR /app
COPY package.json /app/package.json
COPY jest.config.js /app/jest.config.js
COPY tsconfig.json /app/tsconfig.json

RUN npm install
RUN npm install -g jest
RUN mkdir /app/generated
# FROM node

COPY entrypoint.sh /app/entrypoint.sh

# #  exclude node_modules
# COPY ./ /app
# RUN rm -rf /app/node_modules
# WORKDIR /app
# RUN npm install
# CMD ["npm", "run", "test"]
RUN chmod +x /app/entrypoint.sh 
# ENTRYPOINT [ "/app/entrypoint.sh" ]