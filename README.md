# Portfolio Website with GCP Deployment

This is a simple portfolio website deployed using Google Cloud Platform (GCP) and Terraform.

## Prerequisites

3. Create a GCP project and enable billing
4. Enable the Cloud Storage API in your GCP project

## Setup

1. Initialize GCP authentication:

```bash
gcloud auth application-default login
```

2. Create a `terraform.tfvars` file with your configuration:

```hcl
project_id  = "your-project-id"
region      = "us-central1"
bucket_name = "your-unique-bucket-name"
```

3. Initialize Terraform:

```bash
terraform init
```

4. Deploy the website:

```bash
terraform apply
```

5. After successful deployment, the website URL will be displayed in the outputs.

## Website Structure

- `index.html` - Main portfolio page
- `styles.css` - Styling for the website

## Customization

1. Modify the HTML and CSS files to customize the content and styling
2. Run `terraform apply` again to update the deployed website

## Cleanup

To remove all resources:

```bash
terraform destroy
```
