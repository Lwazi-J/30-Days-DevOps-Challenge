# NBA Alerts System

## 📱 Live Sports Updates Delivered to Your Device

A serverless application that delivers real-time NBA score updates directly to fans via SMS and email notifications.

![AWS Architecture](https://via.placeholder.com/800x400?text=NBA+Alerts+Architecture)

## 🏀 What This System Does

NBA Alerts monitors live basketball games and automatically sends score updates to subscribers. Built entirely on AWS cloud infrastructure and deployed through Terraform, this system demonstrates modern DevOps practices while providing a practical service for sports enthusiasts.

## 🛠️ Technology Stack

| Component | Technology |
|-----------|------------|
| Cloud Platform | Amazon Web Services (AWS) |
| Deployment | Terraform v1.10.5 |
| Notification Service | Amazon SNS |
| Serverless Computing | AWS Lambda |
| Scheduling | Amazon EventBridge |
| Data Source | SportsData.io NBA API |
| Programming | Python 3.x |
| Secret Management | AWS Systems Manager Parameter Store |

## 🔐 Security First Approach

This project implements AWS security best practices:
- IAM roles with minimal required permissions
- Secure API key storage in Parameter Store
- No hardcoded credentials in code

## 🗂️ Repository Structure

```
.
├── nba_notifications.py     # Lambda function source code
├── nba_notifications.zip    # Packaged Lambda function
├── game_day_notifications.tf # Terraform infrastructure definition
├── LICENSE
├── .gitignore
└── README.md
```

## 🚀 Getting Started

### Before You Begin

You'll need:
- A SportsData.io account with NBA API access
- An AWS account with administrative access
- Terraform 1.10.5+ installed locally
- AWS CLI configured with your credentials

### Deployment Steps

1. **Get the code**
   ```bash
   git clone https://github.com/ifeanyiro9/game-day-notifications.git
   cd game-day-notifications
   ```

2. **Store your API credentials securely**
   ```bash
   aws ssm put-parameter \
     --name "nba-api-key" \
     --value "YOUR_API_KEY_HERE" \
     --type "SecureString"
   ```

3. **Deploy with Terraform**
   ```bash
   # Initialize Terraform
   terraform init
   
   # Validate configuration
   terraform validate
   
   # Preview changes
   terraform plan
   
   # Deploy infrastructure
   terraform apply
   ```

4. **Set up your subscriptions**
   - Navigate to the created SNS topic in AWS Console
   - Add new subscriptions:
     - For email alerts: Select protocol "Email" and enter your address
     - For text messages: Select protocol "SMS" and enter your phone number with country code
   - Confirm subscription via the link sent to your email

5. **When you're finished**
   ```bash
   # Remove all created resources
   terraform destroy
   ```

## ⚡ Testing Your Deployment

1. Open the deployed Lambda function in AWS Console
2. Create a test event with an empty JSON object `{}`
3. Execute the test and check CloudWatch logs for function output
4. Verify that notifications arrive at your subscribed endpoints

## 📊 Implementation Details

This project orchestrates several AWS services to provide seamless notifications:

1. **EventBridge** triggers the Lambda function on a schedule
2. **Lambda** fetches game data from the NBA API
3. **Parameter Store** securely provides the API key to Lambda
4. **SNS** delivers formatted notifications to subscribers

## 📚 Learning Outcomes

Building this project demonstrates skills in:

- Serverless application architecture
- Infrastructure as Code with Terraform
- AWS service integration
- API consumption and data processing
- Security-conscious cloud development
- Event-driven programming

## 🤝 Contributing

Contributions welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the terms included in the LICENSE file.
