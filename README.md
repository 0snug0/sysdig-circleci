# sysdig-circleci

Using Google Container Registry (GCR)  
Take note of your GCP Project name, and replace all instances of `${PROJECT_NAME}` in this document  
Create a Service Account on GCP  
Name: `sysdig-anchore`  
This gives you the SA as `sysdig-anchore@${PROJECT_NAME}.iam.gserviceaccount.com`, and download the JSON file  

Go to the bucket where your GCR container images are stored, the name of the bucket would be `artifacts.${PROJECT_NAME}.appspot.com` and add your user `sysdig-anchore@${PROJECT_NAME}.iam.gserviceaccount.com` as a `Storage Object Admin`

Create a new registry in [Sysdig Secure](https://secure.sysdig.com/#/scanning/registries/new), add a new registry

Registry: `gcr.io`  
Type: `Google Container Registry`  
JSON: Copy and paste the JSON from the file you downloaded when creating the Service Account

You can quickly test this by [scanning](https://secure.sysdig.com/#/scanning/repositories) an image, go to your GCR repo and copy the full container URI, ex: `gcr.io/${PROJECT_NAME}/${CONTAINER_NAME}:${TAG}`

