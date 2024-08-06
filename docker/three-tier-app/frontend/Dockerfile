ARG NODE_VERSION=20-alpine
FROM node:${NODE_VERSION} AS builder
WORKDIR /app
COPY package.json .
RUN npm install --omit=dev

# distroless nodejs image
FROM gcr.io/distroless/nodejs20-debian12
WORKDIR /app 
COPY --from=builder /app/node_modules /app/node_modules
COPY . .
EXPOSE 3000
CMD ["index.js"]