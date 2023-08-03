package com.koushikdutta.async.parser;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.SimpleFuture;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public class ByteBufferListParser implements AsyncParser<ByteBufferList> {
    @Override // com.koushikdutta.async.parser.AsyncParser
    public Future<ByteBufferList> a(final DataEmitter dataEmitter) {
        final ByteBufferList byteBufferList = new ByteBufferList();
        final SimpleFuture<ByteBufferList> simpleFuture = new SimpleFuture<ByteBufferList>() { // from class: com.koushikdutta.async.parser.ByteBufferListParser.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.koushikdutta.async.future.SimpleCancellable
            public void e() {
                dataEmitter.close();
            }
        };
        dataEmitter.b0(new DataCallback() { // from class: com.koushikdutta.async.parser.ByteBufferListParser.2
            @Override // com.koushikdutta.async.callback.DataCallback
            public void s(DataEmitter dataEmitter2, ByteBufferList byteBufferList2) {
                byteBufferList2.j(byteBufferList);
            }
        });
        dataEmitter.X(new CompletedCallback() { // from class: com.koushikdutta.async.parser.ByteBufferListParser.3
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                if (exc != null) {
                    simpleFuture.b0(exc);
                    return;
                }
                try {
                    simpleFuture.e0(byteBufferList);
                } catch (Exception e4) {
                    simpleFuture.b0(e4);
                }
            }
        });
        return simpleFuture;
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    public String b() {
        return null;
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    /* renamed from: d */
    public void c(DataSink dataSink, ByteBufferList byteBufferList, CompletedCallback completedCallback) {
        Util.m(dataSink, byteBufferList, completedCallback);
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    public Type getType() {
        return ByteBufferList.class;
    }
}
