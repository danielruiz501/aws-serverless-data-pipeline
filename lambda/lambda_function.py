import boto3

glue = boto3.client('glue')

def lambda_handler(event, context):

    glue.start_crawler(
        Name='sales-crawler'
    )

    return {
        'statusCode': 200,
        'body': 'Crawler iniciado correctamente'
    }