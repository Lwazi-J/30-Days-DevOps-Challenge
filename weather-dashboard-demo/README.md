# 🌤️ Weather Dashboard with NBA API Integration

A DevOps project demonstrating the integration of OpenWeather API with AWS S3 storage, featuring an additional NBA data pipeline.

## 🏗️ System Architecture

![NBA API Architecture](images/architecture.png)

The system utilizes AWS serverless architecture with:
- NBA API (SportsDataIO) integration
- Amazon EventBridge for scheduling
- AWS Lambda for processing
- Amazon SNS for notifications
- Both Email and SMS capabilities

## 📋 Project Structure

```
weather-dashboard/
├── src/
│   ├── __init__.py          # Python package indicator
│   └── weather_dashboard.py  # Main application script
├── tests/                    # Test cases directory
├── data/                    # Processed weather data
├── .env                     # Environment variables
├── .gitignore              # Git ignore rules
├── requirements.txt        # Project dependencies
└── README.md              # Project documentation
```

## 🔧 Prerequisites

- OpenWeather API access key
- AWS credentials (access key ID and secret key)
- Python 3.x installed
- AWS CLI configured
- Git installed

## 🚀 Setup Instructions

1. **Initialize Git Repository**
```bash
cd weather-dashboard
git init
git branch -M main
```

2. **Configure .gitignore**
```bash
echo ".env" >> .gitignore
echo "**pycache**/" >> .gitignore
echo "*.zip" >> .gitignore
```

3. **Set Up Dependencies**
```bash
echo "boto3==1.26.137" >> requirements.txt
echo "python-dotenv==1.0.0" >> requirements.txt
echo "requests==2.28.2" >> requirements.txt
```

4. **Install Dependencies**
```bash
pip install -r requirements.txt
```

5. **Configure AWS**
```bash
aws configure
```

6. **Set Environment Variables**
Create `.env` file with:
```env
OPENWEATHER_API_KEY=replace_with_your_api_key
AWS_BUCKET_NAME=replace_with_your_bucket_name
```

## 🛠️ Component Details

### 📦 Key Dependencies
- `boto3`: AWS SDK for Python
- `python-dotenv`: Environment variable management
- `requests`: HTTP request handling

### 📁 Directory Structure
- `src/`: Core application code
- `tests/`: Test suite
- `data/`: Storage for processed data
- `.env`: Configuration file
- `.gitignore`: Git exclusion rules

## 🚀 Execution

Run the application:
```bash
python src/weather_dashboard.py
```

## 🔄 AWS Service Integration

The architecture leverages several AWS services:
1. **EventBridge**: Schedules data collection
2. **Lambda**: Processes weather and NBA data
3. **SNS**: Handles notifications
4. **S3**: Stores processed data

## ⚠️ Best Practices

1. **Security**
   - Environment variables for sensitive data
   - .gitignore to prevent credential exposure
   - AWS IAM best practices

2. **Code Organization**
   - Modular structure
   - Clear separation of concerns
   - Proper package initialization

3. **Documentation**
   - Comprehensive README
   - Code comments
   - Version control

## 🎉 Success Criteria

Upon successful execution:
- Weather data is collected from OpenWeather API
- Data is processed and formatted
- Information is stored in AWS S3
- Notifications are sent via configured channels

Congratulations! Upon successful execution of these steps, you've created a professional DevOps pipeline integrating multiple APIs and cloud services! 🎊

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 📫 Support

For support, please open an issue in the GitHub repository or contact the maintenance team.
