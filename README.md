# AngContainer

## Example of dockerizing an angular application through nginx

Build the image with: docker build -t fraricce/ang-app .

run the container with: docker run -d -it -p 4300:80/tcp --name ang-app fraricce/ang-app
