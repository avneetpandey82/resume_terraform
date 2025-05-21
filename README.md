# Portfolio Website Deployment

This is a simple portfolio website that can be deployed using either Google Cloud Platform (GCP) or Vercel.

## Deployment Options

### Option 1: Deploy with GCP (using Terraform)

#### Prerequisites

1. Create a GCP project and enable billing
2. Enable the Cloud Storage API in your GCP project

#### Setup

1. Initialize GCP authentication:

```bash
gcloud auth application-default login
```

2. Create a `terraform.tfvars` file with your configuration (this file is gitignored for security):

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

### Option 2: Deploy with Vercel

#### Prerequisites

1. Create a [Vercel account](https://vercel.com/signup)
2. Install [Vercel CLI](https://vercel.com/docs/cli) (optional)

#### Setup

1. **Using Vercel Dashboard (Recommended)**:

   - Go to [Vercel Dashboard](https://vercel.com/dashboard)
   - Click "New Project"
   - Import your Git repository or drag and drop your project folder
   - Vercel will automatically detect it's a static website
   - Click "Deploy"

2. **Using Vercel CLI**:

   ```bash
   # Install Vercel CLI
   npm i -g vercel

   # Login to Vercel
   vercel login

   # Deploy
   vercel
   ```

3. **Automatic Deployments**:
   - Connect your GitHub repository to Vercel
   - Any push to your main branch will trigger automatic deployments
   - Preview deployments are created for pull requests

## Website Structure

- `index.html` - Main portfolio page
- `styles.css` - Styling for the website

## Customization

1. Modify the HTML and CSS files to customize the content and styling
2. For GCP: Run `terraform apply` again to update the deployed website
3. For Vercel: Changes will be automatically deployed if using GitHub integration, or run `vercel` again if deploying manually

## Cleanup

### GCP Cleanup

To remove all GCP resources:

```bash
terraform destroy
```

### Vercel Cleanup

- Go to your project settings in Vercel Dashboard
- Click "Delete Project" to remove the deployment

## Benefits of Each Platform

### GCP Benefits

- Full control over infrastructure
- Cost-effective for static websites
- Global CDN
- Custom domain support

### Vercel Benefits

- Zero configuration needed
- Automatic HTTPS
- Global CDN
- Automatic deployments from Git
- Preview deployments for pull requests
- Free tier available
- Built-in analytics
- Easy custom domain setup
