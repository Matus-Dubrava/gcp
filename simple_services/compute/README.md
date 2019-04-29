-   **gcloud services list** (--enabled/--available)

    -   show list of services that are enabled or available for this project

-   **gcloud services enable <serivce>**

    -   enable service

-   **glcoud compute instances list**

    -   list current instances

-   **gcloud compute instances create <vm_name>**

    -   create vm
    -   **gcloud compute instance create --machine-type=f1.micro myvm**

-   **gcloud compute instances delete <vm_name>**

    -   delete vm

-   see free trier eligible compute instances

    -   **gcloud compute machine-types list --filter="NAME:f1-micro AND ZONE~us-west"**

    -   set free zone in a project configuration

        -   **gcloud config set compute/zone us-west2-b**

    -   and to set region
        -   **gcloud config set compute/region us-west2**

-   connect to instance via ssh from console

    -   **gcloud compute ssh <instance_name>**

-   accessing instance metadata from within the instance
    -   **curl -H "Metadata-Flavor:Google" metadata.google.internal/computeMetadata**
