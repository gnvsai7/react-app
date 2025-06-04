# # Dockerfile
# FROM node:18-alpine as build
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# RUN npm run build

# FROM node:18-alpine
# WORKDIR /app
# RUN npm install -g serve
# COPY --from=build /app/build ./build
# EXPOSE 5000
# CMD ["serve", "-s", "build", "-l", "5000"]


FROM node:latest
RUN mkdir /app/
WORKDIR app/
COPY . /app/
RUN  npm install

EXPOSE 3000

CMD ["npm" , "start"]
