package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.FilteredDataSink;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class ChunkedOutputFilter extends FilteredDataSink {
    public ChunkedOutputFilter(DataSink dataSink) {
        super(dataSink);
    }

    @Override // com.koushikdutta.async.FilteredDataSink
    public ByteBufferList E(ByteBufferList byteBufferList) {
        byteBufferList.e(ByteBuffer.wrap((Integer.toString(byteBufferList.P(), 16) + "\r\n").getBytes()));
        byteBufferList.b(ByteBuffer.wrap("\r\n".getBytes()));
        return byteBufferList;
    }

    @Override // com.koushikdutta.async.BufferedDataSink, com.koushikdutta.async.DataSink
    public void j() {
        B(Integer.MAX_VALUE);
        a0(new ByteBufferList());
        B(0);
    }
}
