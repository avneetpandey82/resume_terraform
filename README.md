# Portfolio Website Deployment

This repository contains the files and documentation for deploying a portfolio website using Vercel, with Google Cloud Platform (GCP) as an alternative deployment option.

## Project Overview

This project demonstrates the process of hosting a static portfolio website using Vercel's platform, which provides automatic deployments, global CDN, and zero-configuration setup. The website features a modern, responsive design with sections for home, about, projects, and contact.

## Files in this Repository

- `index.html`: The main HTML file for the portfolio website, featuring a responsive design with sections for home, about, projects, and contact.
- `styles.css`: The CSS file containing modern styling, animations, and responsive design elements.
- `.gitignore`: Specifies files that should be ignored by Git.

## Deployment Steps

1. _Website Structure_:

   - Created a responsive portfolio website with modern design
   - Implemented sections for home, about, projects, and contact
   - Added social media links and contact form

2. _Local Development_:

   - Developed and tested the website locally
   - Ensured responsive design works across different devices
   - Verified all interactive elements function correctly

3. _Vercel Deployment_:

   - Created a Vercel account
   - Connected GitHub repository to Vercel (https://github.com/avneetpandey82/resume_terraform)
   - Automatic deployment configured

4. _Deployment Process_: (https://resume-terraform.vercel.app/)

   - Push changes to GitHub repository
   - Vercel automatically detects changes
   - Automatic deployment to production
   - Preview deployments for pull requests

## Benefits of Vercel Deployment

- Zero configuration needed
- Automatic HTTPS
- Automatic deployments from Git
- Preview deployments for pull requests
- Free tier available
- Built-in analytics

## Getting Started

1. Clone the repository
2. Make your changes locally
3. Push to GitHub
4. Vercel will automatically deploy your changes

## Terraform Implementation (GCP Deployment)

### What is Terraform?

Terraform is a tool that helps us create and manage cloud infrastructure using code. Think of it as a blueprint for your cloud resources.

### What We Did with Terraform

1. **Created a Storage Bucket**

   - A storage bucket is like a folder in the cloud where we store our website files
   - We named it `avneet-resume-cv-bucket`
   - Set it up in the `us-central1` region (Google's data center in central US)

2. **Made the Bucket Public**

   - By default, cloud storage is private
   - We added special permissions to make our website files readable by everyone
   - This is necessary so people can view your website

3. **Uploaded Website Files**

   - Uploaded `index.html` and `styles.css` to the bucket
   - Set the correct file types (HTML and CSS)
   - Made sure the files are accessible via the web

4. **Website Configuration**
   - Set `index.html` as the main page
   - Configured error handling
   - Enabled website hosting on the bucket

### How to Use the Terraform Files

1. **main.tf**

   - This is our main configuration file
   - It tells Terraform what resources to create
   - Defines the bucket and its settings

2. **variables.tf**

   - Contains configurable settings
   - Project ID, region, and bucket name
   - Makes it easy to change settings without editing the main file

3. **outputs.tf**

   - Shows the website URL after deployment
   - Makes it easy to find your website

4. **terraform.tfvars**
   - Contains the actual values for our variables
   - Here's what we used:
   ```hcl
   project_id  = "demo-project-name"(hide)
   region      = "us-central1"
   bucket_name = "avneet-resume-cv-bucket"
   ```

### Deployment Process

1. Create a `terraform.tfvars` file with your settings (as shown above)
2. Run `terraform init` to set up Terraform
3. Run `terraform apply` to create the resources
4. Your website will be available at the URL shown in the output

### Cleanup

- Run `terraform destroy` to remove all created resources
- This is useful when you want to start fresh or remove the website

### Why Use Terraform?

- Infrastructure as Code: Everything is defined in files
- Reproducible: Easy to recreate the same setup
- Version Control: Track changes to your infrastructure
- Automation: No manual steps needed
- Cost Control: Easy to remove resources when not needed
