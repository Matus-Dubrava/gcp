-   **gcloud config set <property> <value>**
    -   sets value of chosen property
-   **gcloud config get-value <value>**
    -   gets value
-   **gcloud config unset <property>**

    -   removes property from config

-   ex.

    -   glcoud config set project <value>
    -   glcoud config set compute/region <value>
    -   glcoud config set compute/zone <value>

-   gcloud config list
    -   show the current configuration
    -   to show configuraton that is not active we can use global flag
        -   gcloud --configuration=<name> config list
        -   or we can use describe command
        -   gcloud config configurations describe <name>
-   gcloud config configurations list
    -   lists all the configurations that we have
-   gcloud config configurations create <name>
    -   creates new configuration
-   glcoud config configurations activate <name>

    -   switches to specified configuration

-   we can also use specific configuration with just a single command, then instead of switching between configurations, we can use global flag
    -   --configuration=<name>
