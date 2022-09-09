
# ensure we've built all our containers
docker build -f .\frontend\Dockerfile -t zaidbel/globoticket-dapr-frontend .
docker build -f .\catalog\Dockerfile -t zaidbel/globoticket-dapr-catalog .
docker build -f .\ordering\Dockerfile -t zaidbel/globoticket-dapr-ordering .

# and push them to Docker hub 
# (real world would use ACR instead for private hosting and faster download in Azure)
docker push zaidbel/globoticket-dapr-frontend
docker push zaidbel/globoticket-dapr-catalog
docker push zaidbel/globoticket-dapr-ordering
