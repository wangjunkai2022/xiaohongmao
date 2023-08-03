package com.koushikdutta.async;

/* loaded from: classes3.dex */
public class FilteredDataSink extends BufferedDataSink {
    public FilteredDataSink(DataSink dataSink) {
        super(dataSink);
        B(0);
    }

    public ByteBufferList E(ByteBufferList byteBufferList) {
        return byteBufferList;
    }

    @Override // com.koushikdutta.async.BufferedDataSink
    protected void s(ByteBufferList byteBufferList) {
        ByteBufferList E = E(byteBufferList);
        if (E != byteBufferList) {
            byteBufferList.O();
            E.j(byteBufferList);
        }
    }
}
