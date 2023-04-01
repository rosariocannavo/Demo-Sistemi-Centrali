# Orchestrazione e Monitoring di Cluster di Container
Questo repository contiene una serie di demo che mostrano come utilizzare Docker, Docker Compose e Kubernetes per eseguire applicazioni in modo isolato, scalabile e riproducibile.
<p align="center">
<img src="https://www.cloudzero.com/hubfs/blog/container-orchestration.jpg" style="zoom:-15%;" >
</p>
 
## <img src="https://cdn.worldvectorlogo.com/logos/docker.svg" style="zoom:4%;" > Demo 1 - Utilizzo di Docker
La prima demo mostra come utilizzare Docker per creare un'immagine di un server Express e quindi eseguirlo in un contenitore Docker. La demo è composta da:

* Dockerfile - il file di definizione dell'immagine Docker
* server.js - il codice del server Express
* package.json - il file di dipendenze di Node.js

Per eseguire la demo, seguire questi passaggi:

* Installare Docker sul proprio computer
* Clonare il repository: git clone https://github.com/rosariocannavo/Demo-Sistemi-Centrali.git
* Navigare nella directory demo1-docker
* Creare l'immagine Docker eseguendo il comando `docker build -t express-api-docker .`
* Eseguire il contenitore Docker con il comando `docker run -p 3000:3000 express-api-docker`
* Aprire un browser e visitare http://localhost:3000 per vedere il server Express in esecuzione

## <img src="https://raw.githubusercontent.com/github/explore/92ad94b82139838b94e2fa7ffc8b461315d6a452/topics/docker-compose/docker-compose.png" style="zoom:40%;" > Demo 2 - Utilizzo di Docker Compose
La seconda demo mostra come utilizzare Docker Compose per creare un'infrastruttura composta da più contenitori Docker. In particolare, la demo crea un server Express e un'istanza di MongoDB e li connette tra loro. La demo è composta da:

* Dockerfile - il dockerfile del server Express.js
* docker-compose.yml - il file di definizione dell'infrastruttura Docker
* index.js - il codice del server Express
* package.json - il file di dipendenze di Node.js

Per eseguire la demo, seguire questi passaggi:

* Installare Docker e Docker Compose sul proprio computer
* Clonare il repository: git clone https://github.com/rosariocannavo/Demo-Sistemi-Centrali.git
* Navigare nella directory demo2-docker-compose
* Creare e avviare l'infrastruttura Docker con il comando `docker-compose up -d`
* Aprire un browser e visitare http://localhost:3000 per vedere il server Express in esecuzione

## <img src="https://cdn.worldvectorlogo.com/logos/kubernets.svg" style="zoom:4%;" >Demo 3 - Utilizzo di Kubernetes
La terza demo mostra un esempio di come utilizzare Kubernetes per creare un'infrastruttura complessa e altamente scalabile. In particolare, la demo crea un cluster Kubernetes composto da due nodi:
* un nodo Kubernetes master
* un nodi worker

Il cluster esegue un'applicazione di messaggistica basata su una coda. L'applicazione è composta da un producer che scrive messaggi su una coda e tre consumer che leggono i messaggi dalla coda. Il cluster è monitorato da un pod Prometheus che raccoglie metriche sull'utilizzo delle risorse dei nodi e dell'applicazione.

Per eseguire la demo, seguire questi passaggi:
* Installare Minikube sul proprio computer al link [Minikube](https://minikube.sigs.k8s.io/docs/start/)
* Clonare il repository: git clone https://github.com/rosariocannavo/Demo-Sistemi-Centrali.git
* Navigare nella directory demo3-kubernetes/Kubernetes
* Lanciare il comando `bash startkube.sh`
* Aprire un browser e visitare http://localhost:9090 per vedere la dashboard prometheus
