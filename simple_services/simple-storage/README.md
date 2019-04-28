-   simple storage uses buckets

    -   bucket names much be universally unique
    -   similar to S3
    -   we can add permissions to each object individually or at a bucket level (to target every user we need to specify _allUsers_)

-   gcloud config list

    -   show the current project
    -   **gcloud config get-value project**
        -   show name of current project

-   **gsutil ls**

    -   whow buckets in a current project

    -   **gsutil ls gs://name-of-the-bucket**

        -   use list files in the bucket
        -   nested files are not shown

        -   **gsutil ls gs://name-of-the-bucket/\*\***

            -   use to return flat list of files, including files that are nested

        -   **gsutil ls -a gs://bucket**
            -   see archived files

-   **gsutil mb**

    -   create new bucket

    -   **gsutil mb -l northamerica-northeast1 gs://name-of-the-bucket**

-   **gsutil label get gs://name-of-the-bucket**

    -   return json representation of bucket labels

-   **gsutil label set labels.json gs://bucket**

    -   use json file to set bucket labels

-   **gsutil label ch -l "extrakey:extravalue" gs://bucket**

    -   add additional label to bucket

-   **gsutil versioning**

    -   **gsutil versioning get gs://bucket**
        -   see versioning status of a bucket
    -   **gsutil versioning set on gs://bucket**
        -   enable versioning on a bucket

-   **gsutil cp source gs://bucket**

    -   copy file from source to bucket
    -   this does not copy ACL of the object

    -   **gsutil cp -r gs://source-bucket gs://dest-bucket**
        -   copy files recursively (including folder structure) from one bucket to another

-   **gsutil acl ch -u allUsers:R gs://bucket/object**

    -   set ACL of the specified object to public read

    -   **gsutil acl ch -d allUsers gs://bucket/object**
        -   remove permissions for this group of allUsers
