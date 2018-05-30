# fontanero
Serie de pruebas para depurar problemas de despliegue con Plumber

## atomicos
Una imagen on CentOS AtomicOS.

    sudo docker build -it atomicos .    
    sudo docker run --rm -p 8080:8080 -t atomicos   

### / GET hola mundo

    curl localhost:8080/

> {"Hola":["fontanero"]}

### /1 GET simple ascii

    curl localhost:8080/1

> {"get":["sin acentos"]} 

    curl -d "data=23" -X POST localhost:8080/1

> {"error":["404 - Resource Not Found"]}

### /2 GET simple con non-ascii

    curl localhost:8080/2

> {"get":["<c3><b1> <c3><a9> <c3><ad> <c3><b3> - algunos ejemplos"]}%   

    curl -d "data=23" -X POST localhost:8080/2

> {"error":["404 - Resource Not Found"]}

### /3 GET nombre variable non-ascii

    curl localhost:8080/1

>[23]    

    curl -d "data=23" -X POST localhost:8080/3

> {"error":["404 - Resource Not Found"]}

### /4 GET endpoint repetido (valores 23 y 46)

    curl localhost:8080/4

>[23]    

    curl -d "data=23" -X POST localhost:8080/4

> {"error":["404 - Resource Not Found"]}

### /5 POST simple 

    curl localhost:8080/5

> {"error":["404 - Resource Not Found"]} 

    curl -d "data=23" -X POST localhost:8080/5

>[23]    

### /6 POST simple con non-ascii

    curl localhost:8080/6

> {"error":["404 - Resource Not Found"]} 

    curl -d "data=23" -X POST localhost:8080/6

>["<c3><b1> <c3><a9> <c3><ad> <c3><b3> - algunos ejemplos"]    

### /7 POST nombre variable non-ascii

    curl localhost:8080/7

>{"error":["500 - Internal server error"]}

    curl -d "data=23" -X POST localhost:8080/7

> {"error":["404 - Resource Not Found"]} 

### /8 POST endpoint repetido

    curl localhost:8080/8

>{"error":["500 - Internal server error"]}

    curl -d "data=23" -X POST localhost:8080/8

> {"error":["404 - Resource Not Found"]} 

