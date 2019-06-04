import sys
from pyspark import SparkContext
sc = SparkContext(appName="WordCountExample")
lines = sc.textFile(sys.argv[1])
counts = lines.flatMap(lambda x: x.split(' ')) \
                  .map(lambda x: (x, 1)) \
                  .reduceByKey(lambda x,y:x+y)
output = counts.collect()
for (word, count) in output:
    print ("%s: %i" % (word, count))
sc.stop()
