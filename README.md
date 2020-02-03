# Big Data Analysis

## Overview
A company named Big Market needs help with their data analysis efforts. The company helps buisinesses optimize their marketing efforts. The client is a company is about to release a large catalog of products on a leading retail website. Before launching, the client wants to know how their products compare to similar products sold by their competitors. 

## Reseources
Software:
- PySpark 4.2.2

Data Sources:
- https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt

## Summary
In order to fulfill the clients requests, it will be necessary to use Spark, a cloud database, and aspects of NLP (Natural Language Processing) to extract meaningful conclusions from the big data provided. Spark is a unified analytics engine designed for big data that can be run within a Google Colab notebook. Spark uses lazy evaluation which makes it a good fit for a web-based Notebook app. Also, because the data will contain a large amount of text, it will be necessary to perform NLP on the reviews of all the products. The basic NLP pipeline involves starting wtih the raw text, tokenizing words or sentences, filter stop words, calculate the term frequency-inverse document frequency, and finally apply a machine learning algorithm. Finally, an ETL pipeline needs to be set up between the database provided and the company's cloud database.

## Challenge
Amazon shoppers place a lot of weight on product reviews. The databases containing these reviews is made public by the company. The task is to analyze the reviews and determine if there are any biases present. Specifically with those being written as a part of the "Vine" program.

## Challenge Summary
The first step was creating the cloud database through AWS. A PostreSQL database was used in this instance. Next, an ETL pipeline was set up in a Google Colab notebook. The pipeline started by reading in the data from the amazon S3 bucket. The data was then transformed to fit the PostgreSQL database and removed any duplicates. Finally, the data was loaded into the AWS database. 