"""
pyspark_wordcount.py

This Python script demonstrates a basic word count using PySpark.
During this era, big data technologies like Hadoop and Spark were gaining traction,
and Python was increasingly popular for data science and machine learning.
"""

from pyspark import SparkConf, SparkContext

def main():
    # Configure Spark: using local mode for simplicity
    conf = SparkConf().setAppName("WordCountDemo").setMaster("local")
    sc = SparkContext(conf=conf)
    
    # Sample data simulating a collection of text entries
    data = [
        "Big data is transforming industries",
        "Responsive web design adapts to all screens",
        "Python and Spark are key in data science"
    ]
    
    # Parallelize the data into an RDD
    lines = sc.parallelize(data)
    # Split each line into words
    words = lines.flatMap(lambda line: line.split(" "))
    # Create a tuple for each word (word, 1)
    word_pairs = words.map(lambda word: (word, 1))
    # Reduce by key to count occurrences
    word_counts = word_pairs.reduceByKey(lambda a, b: a + b)
    
    # Print the word count results
    for word, count in word_counts.collect():
        print(f"{word}: {count}")
    
    # Stop the SparkContext
    sc.stop()

if __name__ == "__main__":
    main()
