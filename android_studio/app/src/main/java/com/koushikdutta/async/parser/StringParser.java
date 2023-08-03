package com.koushikdutta.async.parser;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.ThenCallback;
import java.lang.reflect.Type;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public class StringParser implements AsyncParser<String> {

    /* renamed from: a  reason: collision with root package name */
    Charset f45093a;

    public StringParser() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String e(String str, ByteBufferList byteBufferList) throws Exception {
        Charset charset = this.f45093a;
        if (charset == null && str != null) {
            charset = Charset.forName(str);
        }
        return byteBufferList.L(charset);
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    public Future<String> a(DataEmitter dataEmitter) {
        final String n9 = dataEmitter.n();
        return new ByteBufferListParser().a(dataEmitter).F(new ThenCallback() { // from class: com.koushikdutta.async.parser.c
            @Override // com.koushikdutta.async.future.ThenCallback
            public final Object a(Object obj) {
                String e4;
                e4 = StringParser.this.e(n9, (ByteBufferList) obj);
                return e4;
            }
        });
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    public String b() {
        return null;
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    /* renamed from: f */
    public void c(DataSink dataSink, String str, CompletedCallback completedCallback) {
        new ByteBufferListParser().c(dataSink, new ByteBufferList(str.getBytes()), completedCallback);
    }

    @Override // com.koushikdutta.async.parser.AsyncParser
    public Type getType() {
        return String.class;
    }

    public StringParser(Charset charset) {
        this.f45093a = charset;
    }
}
