package com.koushikdutta.async.http.server;

import android.annotation.TargetApi;
import android.util.Log;
import com.facebook.common.statfs.StatFsHelper;
import com.google.mlkit.common.MlKitException;
import com.koushikdutta.async.AsyncSSLSocket;
import com.koushikdutta.async.AsyncSSLSocketWrapper;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.AsyncServerSocket;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.ListenCallback;
import com.koushikdutta.async.callback.ValueCallback;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.HttpUtil;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.WebSocket;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;
import com.koushikdutta.async.http.server.AsyncHttpServerRouter;
import io.sentry.h4;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import javax.net.ssl.SSLContext;

@TargetApi(5)
/* loaded from: classes3.dex */
public class AsyncHttpServer extends AsyncHttpServerRouter {

    /* renamed from: h  reason: collision with root package name */
    private static Hashtable<Integer, String> f44964h;

    /* renamed from: e  reason: collision with root package name */
    ArrayList<AsyncServerSocket> f44965e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    ListenCallback f44966f = new AnonymousClass1();

    /* renamed from: g  reason: collision with root package name */
    CompletedCallback f44967g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.koushikdutta.async.http.server.AsyncHttpServer$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements ListenCallback {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.koushikdutta.async.http.server.AsyncHttpServer$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C03841 extends AsyncHttpServerRouter.AsyncHttpServerRequestImpl {
            final Runnable A;
            final ValueCallback<Exception> B;
            final /* synthetic */ AsyncSocket C;

            /* renamed from: r  reason: collision with root package name */
            AsyncHttpServerRouter.AsyncHttpServerRequestImpl f44969r;

            /* renamed from: s  reason: collision with root package name */
            HttpServerRequestCallback f44970s;

            /* renamed from: t  reason: collision with root package name */
            String f44971t;

            /* renamed from: u  reason: collision with root package name */
            String f44972u;

            /* renamed from: v  reason: collision with root package name */
            boolean f44973v;

            /* renamed from: w  reason: collision with root package name */
            boolean f44974w;

            /* renamed from: x  reason: collision with root package name */
            AsyncHttpServerResponseImpl f44975x;

            /* renamed from: y  reason: collision with root package name */
            boolean f44976y;

            /* renamed from: z  reason: collision with root package name */
            boolean f44977z;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C03841(AsyncSocket asyncSocket) {
                super();
                this.C = asyncSocket;
                this.f44969r = this;
                this.A = new Runnable() { // from class: com.koushikdutta.async.http.server.AsyncHttpServer.1.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.i("HTTP", "Done");
                    }
                };
                this.B = new ValueCallback<Exception>() { // from class: com.koushikdutta.async.http.server.AsyncHttpServer.1.1.2
                    @Override // com.koushikdutta.async.callback.ValueCallback
                    /* renamed from: b */
                    public void a(Exception exc) {
                        Log.e("HTTP", h4.b.f83287e, exc);
                    }
                };
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void J0() {
                if (this.f44974w && this.f44973v && !AsyncHttpServer.this.G(this.f44975x)) {
                    if (AsyncHttpServer.this.F(this.f44969r, this.f44975x)) {
                        AnonymousClass1.this.d0(this.C);
                    } else {
                        this.C.close();
                    }
                }
            }

            @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequestImpl
            protected AsyncHttpRequestBody D0(Headers headers) {
                String[] split = C0().split(" ");
                String str = split[1];
                this.f44971t = str;
                String decode = URLDecoder.decode(str.split("\\?")[0]);
                this.f44972u = decode;
                String str2 = split[0];
                this.f44993n = str2;
                AsyncHttpServerRouter.RouteMatch a10 = AsyncHttpServer.this.a(str2, decode);
                if (a10 == null) {
                    return null;
                }
                this.f45022p = a10.f45031c;
                this.f44970s = a10.f45032d;
                AsyncHttpRequestBodyProvider asyncHttpRequestBodyProvider = a10.f45033e;
                if (asyncHttpRequestBodyProvider == null) {
                    return null;
                }
                return asyncHttpRequestBodyProvider.a(headers);
            }

            @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequestImpl
            protected void E0() {
                Headers d4 = d();
                if (!this.f44976y && "100-continue".equals(d4.g(com.google.common.net.b.f34645r))) {
                    pause();
                    Util.n(this.f44989j, "HTTP/1.1 100 Continue\r\n\r\n".getBytes(), new CompletedCallback() { // from class: com.koushikdutta.async.http.server.AsyncHttpServer.1.1.3
                        @Override // com.koushikdutta.async.callback.CompletedCallback
                        public void g(Exception exc) {
                            C03841.this.k();
                            if (exc != null) {
                                C03841.this.v0(exc);
                                return;
                            }
                            C03841 c03841 = C03841.this;
                            c03841.f44976y = true;
                            c03841.E0();
                        }
                    });
                    return;
                }
                AsyncHttpServerResponseImpl asyncHttpServerResponseImpl = new AsyncHttpServerResponseImpl(this.C, this) { // from class: com.koushikdutta.async.http.server.AsyncHttpServer.1.1.4
                    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponseImpl
                    protected void S() {
                        C03841.this.f44973v = true;
                        super.S();
                        this.f44999c.X(null);
                        AsyncHttpServer.this.M(e(), C03841.this.f44975x);
                        C03841.this.J0();
                    }

                    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponseImpl
                    protected void W(Exception exc) {
                        super.W(exc);
                        if (exc != null) {
                            C03841.this.C.b0(new DataCallback.NullDataCallback());
                            C03841.this.C.X(new CompletedCallback.NullCompletedCallback());
                            C03841.this.C.close();
                        }
                    }
                };
                this.f44975x = asyncHttpServerResponseImpl;
                boolean L = AsyncHttpServer.this.L(this, asyncHttpServerResponseImpl);
                this.f44977z = L;
                if (L) {
                    return;
                }
                if (this.f44970s == null) {
                    this.f44975x.h(404);
                    this.f44975x.j();
                } else if (!i0().t0() || this.f44974w) {
                    K0();
                }
            }

            @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequestImpl
            protected AsyncHttpRequestBody G0(Headers headers) {
                return AsyncHttpServer.this.N(headers);
            }

            void K0() {
                AsyncHttpServer.this.K(this.f44970s, this, this.f44975x);
            }

            @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequestImpl, com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                if (AsyncHttpServer.this.G(this.f44975x)) {
                    return;
                }
                this.f44974w = true;
                super.g(exc);
                this.f44989j.b0(new DataCallback.NullDataCallback() { // from class: com.koushikdutta.async.http.server.AsyncHttpServer.1.1.5
                    @Override // com.koushikdutta.async.callback.DataCallback.NullDataCallback, com.koushikdutta.async.callback.DataCallback
                    public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                        super.s(dataEmitter, byteBufferList);
                        C03841.this.f44989j.close();
                    }
                });
                if (exc != null) {
                    this.f44989j.close();
                    return;
                }
                J0();
                if (!i0().t0() || this.f44977z) {
                    return;
                }
                K0();
            }

            @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequest
            public String getPath() {
                return this.f44972u;
            }

            @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequest
            public String getUrl() {
                return this.f44971t;
            }

            @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequest
            public Multimap o() {
                String[] split = this.f44971t.split("\\?", 2);
                if (split.length < 2) {
                    return new Multimap();
                }
                return Multimap.parseQuery(split[1]);
            }
        }

        AnonymousClass1() {
        }

        @Override // com.koushikdutta.async.callback.ListenCallback
        public void E(AsyncServerSocket asyncServerSocket) {
            AsyncHttpServer.this.f44965e.add(asyncServerSocket);
        }

        @Override // com.koushikdutta.async.callback.ListenCallback
        public void d0(AsyncSocket asyncSocket) {
            new C03841(asyncSocket).c0(asyncSocket);
            asyncSocket.k();
        }

        @Override // com.koushikdutta.async.callback.CompletedCallback
        public void g(Exception exc) {
            AsyncHttpServer.this.O(exc);
        }
    }

    /* loaded from: classes3.dex */
    public interface WebSocketRequestCallback {
        void a(WebSocket webSocket, AsyncHttpServerRequest asyncHttpServerRequest);
    }

    static {
        Hashtable<Integer, String> hashtable = new Hashtable<>();
        f44964h = hashtable;
        hashtable.put(200, "OK");
        f44964h.put(Integer.valueOf((int) MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED), "Accepted");
        f44964h.put(Integer.valueOf((int) MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR), "Partial Content");
        f44964h.put(101, "Switching Protocols");
        f44964h.put(301, "Moved Permanently");
        f44964h.put(302, "Found");
        f44964h.put(304, "Not Modified");
        f44964h.put(Integer.valueOf((int) StatFsHelper.f11024h), "Bad Request");
        f44964h.put(404, "Not Found");
        f44964h.put(500, "Internal Server Error");
    }

    public static String E(int i4) {
        String str = f44964h.get(Integer.valueOf(i4));
        return str == null ? "Unknown" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(Exception exc) {
        CompletedCallback completedCallback = this.f44967g;
        if (completedCallback != null) {
            completedCallback.g(exc);
        }
    }

    public CompletedCallback C() {
        return this.f44967g;
    }

    public ListenCallback D() {
        return this.f44966f;
    }

    protected boolean F(AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
        return HttpUtil.e(asyncHttpServerResponse.k0(), asyncHttpServerRequest.d());
    }

    protected boolean G(AsyncHttpServerResponse asyncHttpServerResponse) {
        return asyncHttpServerResponse.c() == 101;
    }

    public AsyncServerSocket H(int i4) {
        return I(AsyncServer.E(), i4);
    }

    public AsyncServerSocket I(AsyncServer asyncServer, int i4) {
        return asyncServer.U(null, i4, this.f44966f);
    }

    public void J(final int i4, final SSLContext sSLContext) {
        AsyncServer.E().U(null, i4, new ListenCallback() { // from class: com.koushikdutta.async.http.server.AsyncHttpServer.2
            @Override // com.koushikdutta.async.callback.ListenCallback
            public void E(AsyncServerSocket asyncServerSocket) {
                AsyncHttpServer.this.f44966f.E(asyncServerSocket);
            }

            @Override // com.koushikdutta.async.callback.ListenCallback
            public void d0(AsyncSocket asyncSocket) {
                AsyncSSLSocketWrapper.y0(asyncSocket, null, i4, sSLContext.createSSLEngine(), null, null, false, new AsyncSSLSocketWrapper.HandshakeCallback() { // from class: com.koushikdutta.async.http.server.AsyncHttpServer.2.1
                    @Override // com.koushikdutta.async.AsyncSSLSocketWrapper.HandshakeCallback
                    public void a(Exception exc, AsyncSSLSocket asyncSSLSocket) {
                        if (asyncSSLSocket != null) {
                            AsyncHttpServer.this.f44966f.d0(asyncSSLSocket);
                        }
                    }
                });
            }

            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                AsyncHttpServer.this.f44966f.g(exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void K(HttpServerRequestCallback httpServerRequestCallback, AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
        if (httpServerRequestCallback != null) {
            try {
                httpServerRequestCallback.b(asyncHttpServerRequest, asyncHttpServerResponse);
            } catch (Exception e4) {
                Log.e("AsyncHttpServer", "request callback raised uncaught exception. Catching versus crashing process", e4);
                asyncHttpServerResponse.h(500);
                asyncHttpServerResponse.j();
            }
        }
    }

    protected boolean L(AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
        return false;
    }

    protected void M(AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
    }

    protected AsyncHttpRequestBody N(Headers headers) {
        return new UnknownRequestBody(headers.g("Content-Type"));
    }

    public void P(CompletedCallback completedCallback) {
        this.f44967g = completedCallback;
    }

    public void Q() {
        ArrayList<AsyncServerSocket> arrayList = this.f44965e;
        if (arrayList != null) {
            Iterator<AsyncServerSocket> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().stop();
            }
        }
    }
}
