package com.koushikdutta.async.http.server;

import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.FilteredDataEmitter;
import com.koushikdutta.async.LineEmitter;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.HttpUtil;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public abstract class AsyncHttpServerRequestImpl extends FilteredDataEmitter implements AsyncHttpServerRequest, CompletedCallback {

    /* renamed from: h  reason: collision with root package name */
    private String f44987h;

    /* renamed from: j  reason: collision with root package name */
    AsyncSocket f44989j;

    /* renamed from: n  reason: collision with root package name */
    String f44993n;

    /* renamed from: o  reason: collision with root package name */
    AsyncHttpRequestBody f44994o;

    /* renamed from: i  reason: collision with root package name */
    private Headers f44988i = new Headers();

    /* renamed from: k  reason: collision with root package name */
    private HashMap<String, Object> f44990k = new HashMap<>();

    /* renamed from: l  reason: collision with root package name */
    private CompletedCallback f44991l = new CompletedCallback() { // from class: com.koushikdutta.async.http.server.AsyncHttpServerRequestImpl.1
        @Override // com.koushikdutta.async.callback.CompletedCallback
        public void g(Exception exc) {
            AsyncHttpServerRequestImpl.this.g(exc);
        }
    };

    /* renamed from: m  reason: collision with root package name */
    LineEmitter.StringCallback f44992m = new LineEmitter.StringCallback() { // from class: com.koushikdutta.async.http.server.AsyncHttpServerRequestImpl.2
        @Override // com.koushikdutta.async.LineEmitter.StringCallback
        public void a(String str) {
            if (AsyncHttpServerRequestImpl.this.f44987h == null) {
                AsyncHttpServerRequestImpl.this.f44987h = str;
                if (AsyncHttpServerRequestImpl.this.f44987h.contains("HTTP/")) {
                    return;
                }
                AsyncHttpServerRequestImpl.this.F0();
                AsyncHttpServerRequestImpl.this.f44989j.b0(new DataCallback.NullDataCallback());
                AsyncHttpServerRequestImpl.this.v0(new IOException("data/header received was not not http"));
            } else if (!"\r".equals(str)) {
                AsyncHttpServerRequestImpl.this.f44988i.f(str);
            } else {
                AsyncHttpServerRequestImpl asyncHttpServerRequestImpl = AsyncHttpServerRequestImpl.this;
                DataEmitter c10 = HttpUtil.c(asyncHttpServerRequestImpl.f44989j, Protocol.HTTP_1_1, asyncHttpServerRequestImpl.f44988i, true);
                AsyncHttpServerRequestImpl asyncHttpServerRequestImpl2 = AsyncHttpServerRequestImpl.this;
                asyncHttpServerRequestImpl2.f44994o = asyncHttpServerRequestImpl2.D0(asyncHttpServerRequestImpl2.f44988i);
                AsyncHttpServerRequestImpl asyncHttpServerRequestImpl3 = AsyncHttpServerRequestImpl.this;
                if (asyncHttpServerRequestImpl3.f44994o == null) {
                    asyncHttpServerRequestImpl3.f44994o = HttpUtil.b(c10, asyncHttpServerRequestImpl3.f44991l, AsyncHttpServerRequestImpl.this.f44988i);
                    AsyncHttpServerRequestImpl asyncHttpServerRequestImpl4 = AsyncHttpServerRequestImpl.this;
                    if (asyncHttpServerRequestImpl4.f44994o == null) {
                        asyncHttpServerRequestImpl4.f44994o = asyncHttpServerRequestImpl4.G0(asyncHttpServerRequestImpl4.f44988i);
                        AsyncHttpServerRequestImpl asyncHttpServerRequestImpl5 = AsyncHttpServerRequestImpl.this;
                        if (asyncHttpServerRequestImpl5.f44994o == null) {
                            asyncHttpServerRequestImpl5.f44994o = new UnknownRequestBody(asyncHttpServerRequestImpl5.f44988i.g("Content-Type"));
                        }
                    }
                }
                AsyncHttpServerRequestImpl asyncHttpServerRequestImpl6 = AsyncHttpServerRequestImpl.this;
                asyncHttpServerRequestImpl6.f44994o.K(c10, asyncHttpServerRequestImpl6.f44991l);
                AsyncHttpServerRequestImpl.this.E0();
            }
        }
    };

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequest
    /* renamed from: B0 */
    public HashMap<String, Object> getState() {
        return this.f44990k;
    }

    public String C0() {
        return this.f44987h;
    }

    protected AsyncHttpRequestBody D0(Headers headers) {
        return null;
    }

    protected abstract void E0();

    protected void F0() {
        System.out.println("not http!");
    }

    protected AsyncHttpRequestBody G0(Headers headers) {
        return null;
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequest
    public AsyncSocket a() {
        return this.f44989j;
    }

    @Override // com.koushikdutta.async.DataEmitterBase, com.koushikdutta.async.DataEmitter
    public void b0(DataCallback dataCallback) {
        this.f44989j.b0(dataCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c0(AsyncSocket asyncSocket) {
        this.f44989j = asyncSocket;
        LineEmitter lineEmitter = new LineEmitter();
        this.f44989j.b0(lineEmitter);
        lineEmitter.b(this.f44992m);
        this.f44989j.X(new CompletedCallback.NullCompletedCallback());
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequest
    public Headers d() {
        return this.f44988i;
    }

    public void g(Exception exc) {
        v0(exc);
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequest
    public String get(String str) {
        String string = o().getString(str);
        if (string != null) {
            return string;
        }
        Object obj = i0().get();
        if (obj instanceof Multimap) {
            return ((Multimap) obj).getString(str);
        }
        return null;
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequest
    public String getMethod() {
        return this.f44993n;
    }

    @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataEmitter
    public boolean h0() {
        return this.f44989j.h0();
    }

    @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataEmitter
    public boolean i() {
        return this.f44989j.i();
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequest
    public AsyncHttpRequestBody i0() {
        return this.f44994o;
    }

    @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataEmitter
    public void k() {
        this.f44989j.k();
    }

    @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataEmitter
    public void pause() {
        this.f44989j.pause();
    }

    @Override // com.koushikdutta.async.DataEmitterBase, com.koushikdutta.async.DataEmitter
    public DataCallback r0() {
        return this.f44989j.r0();
    }

    public String toString() {
        Headers headers = this.f44988i;
        if (headers == null) {
            return super.toString();
        }
        return headers.o(this.f44987h);
    }
}
