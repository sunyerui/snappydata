#!/usr/bin/env bash
source PerfRun.conf

#scala -cp "$TPCHJar:/home/kishor/snappy/snappydata/load_snappydata/build-artifacts/scala-2.11/snappy/jars:/home/kishor/snappy/snappydata/load_snappydata/build-artifacts/scala-2.11/snappy/jars/snappydata-client-1.5.3.jar" io.snappydata.benchmark.snappy.TPCH_Snappy_Query_JDBC $locator $port $queries  $ResultCollection $WarmupRuns $AverageRuns

scala -cp "$TPCHJar:/home/kishor/SNAPPY/CHECKOUT/snappydata/build-artifacts/scala-2.11/snappy/jars:/home/kishor/SNAPPY/CHECKOUT/snappydata/build-artifacts/scala-2.11/snappy/jars/snappydata-client-1.5.3.jar" io.snappydata.benchmark.snappy.tpch.QueryExecutionJdbc $locator $port $queries $ResultCollection $WarmupRuns $AverageRuns $IsDynamic
