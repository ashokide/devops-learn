ARG NODE_VERSION=20-alpine
FROM node:${NODE_VERSION} AS builder
WORKDIR /app
COPY package.json .
RUN npm install --omit=dev

# distroless nodejs image
FROM gcr.io/distroless/nodejs20-debian12
COPY --from=builder /app /app
WORKDIR /app 
COPY . .
EXPOSE 8000
CMD ["index.js"]