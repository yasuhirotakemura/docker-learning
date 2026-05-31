FROM node:18 AS base

CMD ["bash"]

FROM base AS test-and-build
COPY . /workspace
WORKDIR /workspace
ARG REACT_APP_API_SERVER
RUN npm ci && npm run test && npm run build

FROM nginx:latest AS production
COPY --from=test-and-build /workspace/build /var/www
COPY nginx.conf /etc/nginx/conf.d/default.conf