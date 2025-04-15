def handler(event, context):
    print("Hello World")
    return {
        'statusCode': 200,
        'body': 'Hello Balu your lambda function is working'
    }