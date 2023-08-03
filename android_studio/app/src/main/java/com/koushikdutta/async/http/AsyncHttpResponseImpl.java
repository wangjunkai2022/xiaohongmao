package com.koushikdutta.async.http;

import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.FilteredDataEmitter;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class AsyncHttpResponseImpl extends FilteredDataEmitter implements DataEmitter, AsyncHttpResponse, AsyncHttpClientMiddleware.ResponseHead {

    /* renamed from: i  reason: collision with root package name */
    private AsyncHttpRequest f44574i;

    /* renamed from: j  reason: collision with root package name */
    private AsyncSocket f44575j;

    /* renamed from: k  reason: collision with root package name */
    protected Headers f44576k;

    /* renamed from: m  reason: collision with root package name */
    int f44578m;

    /* renamed from: n  reason: collision with root package name */
    String f44579n;

    /* renamed from: o  reason: collision with root package name */
    String f44580o;

    /* renamed from: q  reason: collision with root package name */
    DataSink f44582q;

    /* renamed from: h  reason: collision with root package name */
    private CompletedCallback f44573h = new CompletedCallback() { // from class: com.koushikdutta.async.http.AsyncHttpResponseImpl.2
        @Override // com.koushikdutta.async.callback.CompletedCallback
        public void g(Exception exc) {
            if (AsyncHttpResponseImpl.this.f() == null) {
                AsyncHttpResponseImpl.this.v0(new ConnectionClosedException("connection closed before headers received.", exc));
                return;
            }
            if (exc != null) {
                AsyncHttpResponseImpl asyncHttpResponseImpl = AsyncHttpResponseImpl.this;
                if (!asyncHttpResponseImpl.f44577l) {
                    asyncHttpResponseImpl.v0(new ConnectionClosedException("connection closed before response completed.", exc));
                    return;
                }
            }
            AsyncHttpResponseImpl.this.v0(exc);
        }
    };

    /* renamed from: l  reason: collision with root package name */
    boolean f44577l = false;

    /* renamed from: p  reason: collision with root package name */
    private boolean f44581p = true;

    public AsyncHttpResponseImpl(AsyncHttpRequest asyncHttpRequest) {
        this.f44574i = asyncHttpRequest;
    }

    private void B0() {
        this.f44575j.b0(new DataCallback.NullDataCallback() { // from class: com.koushikdutta.async.http.AsyncHttpResponseImpl.3
            @Override // com.koushikdutta.async.callback.DataCallback.NullDataCallback, com.koushikdutta.async.callback.DataCallback
            public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                super.s(dataEmitter, byteBufferList);
                AsyncHttpResponseImpl.this.f44575j.close();
            }
        });
    }

    private void x0() {
        if (this.f44581p) {
            this.f44581p = false;
        }
    }

    protected void A0(Exception exc) {
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead
    public DataEmitter N() {
        return l0();
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead
    public AsyncHttpClientMiddleware.ResponseHead O(String str) {
        this.f44580o = str;
        return this;
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead
    public AsyncHttpClientMiddleware.ResponseHead P(Headers headers) {
        this.f44576k = headers;
        return this;
    }

    @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataEmitter, com.koushikdutta.async.DataSink
    public AsyncServer b() {
        return this.f44575j.b();
    }

    @Override // com.koushikdutta.async.http.AsyncHttpResponse, com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead
    public int c() {
        return this.f44578m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c0(AsyncSocket asyncSocket) {
        this.f44575j = asyncSocket;
        if (asyncSocket == null) {
            return;
        }
        asyncSocket.X(this.f44573h);
    }

    @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataEmitter
    public void close() {
        super.close();
        B0();
    }

    @Override // com.koushikdutta.async.http.AsyncHttpResponse
    public AsyncHttpRequest e() {
        return this.f44574i;
    }

    @Override // com.koushikdutta.async.http.AsyncHttpResponse, com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead
    public Headers f() {
        return this.f44576k;
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead
    public AsyncHttpClientMiddleware.ResponseHead h(int i4) {
        this.f44578m = i4;
        return this;
    }

    @Override // com.koushikdutta.async.http.AsyncHttpResponse, com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead
    public String message() {
        return this.f44580o;
    }

    @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataEmitterBase, com.koushikdutta.async.DataEmitter
    public String n() {
        String string;
        Multimap parseSemicolonDelimited = Multimap.parseSemicolonDelimited(f().g("Content-Type"));
        if (parseSemicolonDelimited == null || (string = parseSemicolonDelimited.getString("charset")) == null || !Charset.isSupported(string)) {
            return null;
        }
        return string;
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead
    public AsyncHttpClientMiddleware.ResponseHead o0(DataSink dataSink) {
        this.f44582q = dataSink;
        return this;
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead
    public DataSink p0() {
        return this.f44582q;
    }

    @Override // com.koushikdutta.async.http.AsyncHttpResponse, com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead
    public String protocol() {
        return this.f44579n;
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead
    public AsyncSocket socket() {
        return this.f44575j;
    }

    public String toString() {
        Headers headers = this.f44576k;
        if (headers == null) {
            return super.toString();
        }
        return headers.o(this.f44579n + " " + this.f44578m + " " + this.f44580o);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.koushikdutta.async.DataEmitterBase
    public void v0(Exception exc) {
        super.v0(exc);
        B0();
        this.f44575j.e0(null);
        this.f44575j.j0(null);
        this.f44575j.X(null);
        this.f44577l = true;
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead
    public AsyncHttpClientMiddleware.ResponseHead y(String str) {
        this.f44579n = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void y0() {
    }

    @Override // com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead
    public AsyncHttpClientMiddleware.ResponseHead z(DataEmitter dataEmitter) {
        G(dataEmitter);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z0() {
        AsyncHttpRequestBody f10 = this.f44574i.f();
        if (f10 != null) {
            f10.q(this.f44574i, this.f44582q, new CompletedCallback() { // from class: com.koushikdutta.async.http.AsyncHttpResponseImpl.1
                @Override // com.koushikdutta.async.callback.CompletedCallback
                public void g(Exception exc) {
                    AsyncHttpResponseImpl.this.A0(exc);
                }
            });
        } else {
            A0(null);
        }
    }
}
