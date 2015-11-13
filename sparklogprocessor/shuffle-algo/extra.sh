# sort shuffle 32 cores, shuffle fraction 0.6
hadoop dfs -rmr /output
~/spark-1.5.1/bin/spark-submit --class org.apache.spark.examples.WordCount --master yarn-client --num-executors 10 --driver-memory 4G --executor-memory 4G --executor-cores 16 --conf spark.eventLog.enabled=true --conf spark.eventLog.dir=hdfs://xeno-62:9000/sparkEventLog --conf "spark.executor.extraJavaOptions=-XX:+PrintFlagsFinal -XX:+PrintReferenceGC -verbose:gc -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintGCDateStamps -XX:+PrintAdaptiveSizePolicy -XX:+UnlockDiagnosticVMOptions -XX:+G1SummarizeConcMark" ~/spark-1.5.1/examples/target/scala-2.10/spark-examples-1.5.1-hadoop2.6.0.jar "hdfs://xeno-62:9000/wordcount-huge" "hdfs://xeno-62:9000/output"

# sort shuffle 32 cores, shuffle fraction 0.6
hadoop dfs -rmr /output
~/spark-1.5.1/bin/spark-submit --class org.apache.spark.examples.SparkPageRank --master yarn-client --num-executors 10 --driver-memory 4G --executor-memory 4G --executor-cores 1 --conf spark.eventLog.enabled=true --conf spark.eventLog.dir=hdfs://xeno-62:9000/sparkEventLog --conf "spark.executor.extraJavaOptions=-XX:+PrintFlagsFinal -XX:+PrintReferenceGC -verbose:gc -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintGCDateStamps -XX:+PrintAdaptiveSizePolicy -XX:+UnlockDiagnosticVMOptions -XX:+G1SummarizeConcMark" ~/spark-1.5.1/examples/target/scala-2.10/spark-examples-1.5.1-hadoop2.6.0.jar "hdfs://xeno-62:9000/pagerank-large/Input/edges" 3

