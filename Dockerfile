FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# for typescript
RUN npm run build

CMD ["npm", "start"]