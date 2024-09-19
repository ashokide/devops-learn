## Application Communication Patterns
- Synchronous Communications (Application to Application)
- Asynchronous/Event Based (Application to Queue to Application)

### Better to Decouple Applications
- SQS: Queue Model
- SNS: Pub/Sub Model
- Kinesis: Real-Time Data Streaming Model

## Simple Queue Service (SQS)
### Amazon SQS - Standard Queue
- Fully managed service
- Serverless
- Used to decouple applications
- Default retention of messages: 4 days to maximum of 14 days
- No message limit in queue
- Messages are deleted after they're read by consumers
- Low latency (< 10ms on publish and receive)

### Amazon SQS - FIFO Queue
- FIFO - First In First Out (ordering of messages in the queue)
- Messages are processed in order by the consumer

## Amazon Kinesis
- Real time big data streaming
- Managed service
- Collect, process and analyze real time streaming data at any scale
- Kinesis Data Streams - Low latency streaming to ingest data at scale from hundreds of thousands of sources
- Kinesis Data Firehose - Load streams into S3, Redshift, ElastiSearch, etc.,
- Kinesis Data Analytics - real-time analytics on streams using SQL
- Kinesis Video Streams - monitor real-time video streams for analytics or ML

<img width="700" alt="image" src="https://github.com/user-attachments/assets/f07381f9-b96c-4a10-9381-f4ffe59cdd39">

## Amazon SNS (Simple Notification Service)
- Notification service
- Subcribers: Email, Lambda, SQS, HTTP, etc.,
- Event publishers only sends message to one SNS topic
- Event subscribers listen to the SNS topic notifications
- Each subscriber subscribed to the topic will get all the messages
- Upto 12,500,000 subscriptions per topic, 100,000 topics limit
- No message retention

## Amazon MQ (Message Queue)
- Managed message broker service for Rabbit MQ, Active MQ
- Amazon MQ doesn't scale as much as SQS, SNS
- Amazon MQ runs on servers, can run in multi-az with failover
- Amazon MQ has both queue feature (SQS) and topic features (SNS)
