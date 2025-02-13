"""
aws_list_buckets.py

This Python script demonstrates the early stages of cloud computing with AWS.
It uses the boto3 library to interact with AWS S3, highlighting how Python was 
increasingly popular for web development and data analysis during this period.

Note: Ensure your AWS credentials are set up in your environment, or replace with your keys.
"""

import boto3

def list_s3_buckets():
    # Create an S3 client. AWS credentials can be configured via environment variables or AWS config files.
    s3 = boto3.client('s3')
    response = s3.list_buckets()
    
    print("Available S3 Buckets:")
    for bucket in response.get('Buckets', []):
        print(f"  - {bucket['Name']}")

if __name__ == "__main__":
    try:
        list_s3_buckets()
    except Exception as e:
        print("Error fetching bucket list:", e)
