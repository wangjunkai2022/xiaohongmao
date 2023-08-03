package com.koushikdutta.async.http.server;

import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.http.AsyncHttpResponse;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.parser.AsyncParser;
import java.io.File;
import java.io.InputStream;
import java.nio.ByteBuffer;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface AsyncHttpServerResponse extends DataSink, CompletedCallback {
    void D(JSONArray jSONArray);

    void I(AsyncHttpResponse asyncHttpResponse);

    void L(InputStream inputStream, long j4);

    void Q(String str, String str2);

    <T> void R(AsyncParser<T> asyncParser, T t9);

    void T(String str, ByteBuffer byteBuffer);

    void U();

    AsyncSocket a();

    int c();

    void c0(AsyncSocket asyncSocket);

    Headers d();

    AsyncHttpServerRequest e();

    @Override // com.koushikdutta.async.callback.CompletedCallback
    void g(Exception exc);

    AsyncHttpServerResponse h(int i4);

    @Override // com.koushikdutta.async.DataSink
    void j();

    String k0();

    void p(String str);

    void r(JSONObject jSONObject);

    void s0(String str, ByteBufferList byteBufferList);

    void send(String str);

    void t(String str, byte[] bArr);

    void u(String str);

    void u0(String str);

    void x(File file);
}
