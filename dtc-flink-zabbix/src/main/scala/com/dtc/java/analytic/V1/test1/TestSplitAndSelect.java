package com.dtc.java.analytic.V1.test1;

import org.apache.flink.streaming.api.collector.selector.OutputSelector;
import org.apache.flink.streaming.api.datastream.DataStream;
import org.apache.flink.streaming.api.datastream.SplitStream;
import org.apache.flink.streaming.api.environment.StreamExecutionEnvironment;

import java.util.ArrayList;
import java.util.List;

/**
 * Created on 2019-12-20
 *
 * @author :hao.li
 */
public class TestSplitAndSelect {


    public static void main(String[] args) throws Exception {

        final StreamExecutionEnvironment env = StreamExecutionEnvironment.getExecutionEnvironment();

        DataStream<Long> input = env.generateSequence(0, 10);

        SplitStream<Long> splitStream = input.split(new OutputSelector<Long>() {

            @Override
            public Iterable<String> select(Long value) {
                List<String> output = new ArrayList<String>();
                if (value % 2 == 0) {
                    output.add("even");
                } else {
                    output.add("odd");
                }
                return output;
            }
        });
        //splitStream.print();
        DataStream<Long> even = splitStream.select("even");
        DataStream<Long> odd = splitStream.select("odd");
        DataStream<Long> all = splitStream.select("even", "odd");
        even.print("偶数");
        odd.print("奇数");
        all.print();
        env.execute();

    }

}
