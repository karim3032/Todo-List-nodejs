FROM node:18-alpine
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
WORKDIR /app
RUN chown -R appuser:appgroup /app
USER appuser
COPY --chown=appuser:appgroup package*.json ./
RUN npm install
COPY --chown=appuser:appgroup . .
EXPOSE 4000
CMD ["npm", "start"]
