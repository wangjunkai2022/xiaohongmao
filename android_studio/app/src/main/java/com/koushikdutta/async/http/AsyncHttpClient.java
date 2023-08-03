package com.koushikdutta.async.http;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.text.TextUtils;
import com.koushikdutta.async.AsyncSSLException;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.ConnectCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.future.SimpleFuture;
import com.koushikdutta.async.http.AsyncHttpClient;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware;
import com.koushikdutta.async.http.callback.HttpConnectCallback;
import com.koushikdutta.async.http.callback.RequestCallback;
import com.koushikdutta.async.parser.AsyncParser;
import com.koushikdutta.async.parser.ByteBufferListParser;
import com.koushikdutta.async.parser.JSONArrayParser;
import com.koushikdutta.async.parser.JSONObjectParser;
import com.koushikdutta.async.parser.StringParser;
import com.koushikdutta.async.stream.OutputStreamDataCallback;
import io.sentry.instrumentation.file.l;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URL;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class AsyncHttpClient {

    /* renamed from: f  reason: collision with root package name */
    private static AsyncHttpClient f44483f = null;

    /* renamed from: g  reason: collision with root package name */
    private static final String f44484g = "AsyncHttp";

    /* renamed from: a  reason: collision with root package name */
    final List<AsyncHttpClientMiddleware> f44485a = new CopyOnWriteArrayList();

    /* renamed from: b  reason: collision with root package name */
    AsyncSSLSocketMiddleware f44486b;

    /* renamed from: c  reason: collision with root package name */
    AsyncSocketMiddleware f44487c;

    /* renamed from: d  reason: collision with root package name */
    HttpTransportMiddleware f44488d;

    /* renamed from: e  reason: collision with root package name */
    AsyncServer f44489e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.koushikdutta.async.http.AsyncHttpClient$4  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 extends AsyncHttpResponseImpl {

        /* renamed from: r  reason: collision with root package name */
        final /* synthetic */ FutureAsyncHttpResponse f44507r;

        /* renamed from: s  reason: collision with root package name */
        final /* synthetic */ AsyncHttpRequest f44508s;

        /* renamed from: t  reason: collision with root package name */
        final /* synthetic */ HttpConnectCallback f44509t;

        /* renamed from: u  reason: collision with root package name */
        final /* synthetic */ AsyncHttpClientMiddleware.OnResponseCompleteData f44510u;

        /* renamed from: v  reason: collision with root package name */
        final /* synthetic */ int f44511v;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(AsyncHttpRequest asyncHttpRequest, FutureAsyncHttpResponse futureAsyncHttpResponse, AsyncHttpRequest asyncHttpRequest2, HttpConnectCallback httpConnectCallback, AsyncHttpClientMiddleware.OnResponseCompleteData onResponseCompleteData, int i4) {
            super(asyncHttpRequest);
            this.f44507r = futureAsyncHttpResponse;
            this.f44508s = asyncHttpRequest2;
            this.f44509t = httpConnectCallback;
            this.f44510u = onResponseCompleteData;
            this.f44511v = i4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void E0(AsyncHttpRequest asyncHttpRequest, int i4, FutureAsyncHttpResponse futureAsyncHttpResponse, HttpConnectCallback httpConnectCallback) {
            AsyncHttpClient.this.s(asyncHttpRequest, i4, futureAsyncHttpResponse, httpConnectCallback);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void F0(AsyncHttpRequest asyncHttpRequest, int i4, FutureAsyncHttpResponse futureAsyncHttpResponse, HttpConnectCallback httpConnectCallback) {
            AsyncHttpClient.this.s(asyncHttpRequest, i4 + 1, futureAsyncHttpResponse, httpConnectCallback);
        }

        @Override // com.koushikdutta.async.http.AsyncHttpResponseImpl
        protected void A0(Exception exc) {
            if (exc != null) {
                AsyncHttpClient.this.O(this.f44507r, exc, null, this.f44508s, this.f44509t);
                return;
            }
            this.f44508s.A("request completed");
            if (this.f44507r.isCancelled()) {
                return;
            }
            FutureAsyncHttpResponse futureAsyncHttpResponse = this.f44507r;
            if (futureAsyncHttpResponse.f44540m != null && this.f44576k == null) {
                futureAsyncHttpResponse.f44539l.cancel();
                FutureAsyncHttpResponse futureAsyncHttpResponse2 = this.f44507r;
                futureAsyncHttpResponse2.f44539l = AsyncHttpClient.this.f44489e.e0(futureAsyncHttpResponse2.f44540m, AsyncHttpClient.F(this.f44508s));
            }
            for (AsyncHttpClientMiddleware asyncHttpClientMiddleware : AsyncHttpClient.this.f44485a) {
                asyncHttpClientMiddleware.g(this.f44510u);
            }
        }

        @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataTrackingEmitter
        public void G(DataEmitter dataEmitter) {
            this.f44510u.f44545j = dataEmitter;
            for (AsyncHttpClientMiddleware asyncHttpClientMiddleware : AsyncHttpClient.this.f44485a) {
                asyncHttpClientMiddleware.f(this.f44510u);
            }
            super.G(this.f44510u.f44545j);
            for (AsyncHttpClientMiddleware asyncHttpClientMiddleware2 : AsyncHttpClient.this.f44485a) {
                final AsyncHttpRequest c10 = asyncHttpClientMiddleware2.c(this.f44510u);
                if (c10 != null) {
                    AsyncHttpRequest asyncHttpRequest = this.f44508s;
                    c10.f44571l = asyncHttpRequest.f44571l;
                    c10.f44570k = asyncHttpRequest.f44570k;
                    c10.f44569j = asyncHttpRequest.f44569j;
                    c10.f44567h = asyncHttpRequest.f44567h;
                    c10.f44568i = asyncHttpRequest.f44568i;
                    AsyncHttpClient.P(c10);
                    this.f44508s.z("Response intercepted by middleware");
                    c10.z("Request initiated by middleware intercept by middleware");
                    AsyncServer asyncServer = AsyncHttpClient.this.f44489e;
                    final int i4 = this.f44511v;
                    final FutureAsyncHttpResponse futureAsyncHttpResponse = this.f44507r;
                    final HttpConnectCallback httpConnectCallback = this.f44509t;
                    asyncServer.c0(new Runnable() { // from class: com.koushikdutta.async.http.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            AsyncHttpClient.AnonymousClass4.this.E0(c10, i4, futureAsyncHttpResponse, httpConnectCallback);
                        }
                    });
                    b0(new DataCallback.NullDataCallback());
                    return;
                }
            }
            Headers headers = this.f44576k;
            int c11 = c();
            if ((c11 == 301 || c11 == 302 || c11 == 307) && this.f44508s.h()) {
                String g4 = headers.g(com.google.common.net.b.f34636m0);
                try {
                    Uri parse = Uri.parse(g4);
                    if (parse.getScheme() == null) {
                        parse = Uri.parse(new URL(new URL(this.f44508s.t().toString()), g4).toString());
                    }
                    String m9 = this.f44508s.m();
                    String str = AsyncHttpHead.f44555o;
                    if (!m9.equals(AsyncHttpHead.f44555o)) {
                        str = AsyncHttpGet.f44554o;
                    }
                    final AsyncHttpRequest asyncHttpRequest2 = new AsyncHttpRequest(parse, str);
                    AsyncHttpRequest asyncHttpRequest3 = this.f44508s;
                    asyncHttpRequest2.f44571l = asyncHttpRequest3.f44571l;
                    asyncHttpRequest2.f44570k = asyncHttpRequest3.f44570k;
                    asyncHttpRequest2.f44569j = asyncHttpRequest3.f44569j;
                    asyncHttpRequest2.f44567h = asyncHttpRequest3.f44567h;
                    asyncHttpRequest2.f44568i = asyncHttpRequest3.f44568i;
                    AsyncHttpClient.P(asyncHttpRequest2);
                    AsyncHttpClient.o(this.f44508s, asyncHttpRequest2, com.google.common.net.b.M);
                    AsyncHttpClient.o(this.f44508s, asyncHttpRequest2, com.google.common.net.b.G);
                    this.f44508s.z("Redirecting");
                    asyncHttpRequest2.z("Redirected");
                    AsyncServer asyncServer2 = AsyncHttpClient.this.f44489e;
                    final int i10 = this.f44511v;
                    final FutureAsyncHttpResponse futureAsyncHttpResponse2 = this.f44507r;
                    final HttpConnectCallback httpConnectCallback2 = this.f44509t;
                    asyncServer2.c0(new Runnable() { // from class: com.koushikdutta.async.http.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            AsyncHttpClient.AnonymousClass4.this.F0(asyncHttpRequest2, i10, futureAsyncHttpResponse2, httpConnectCallback2);
                        }
                    });
                    b0(new DataCallback.NullDataCallback());
                    return;
                } catch (Exception e4) {
                    AsyncHttpClient.this.O(this.f44507r, e4, this, this.f44508s, this.f44509t);
                    return;
                }
            }
            AsyncHttpRequest asyncHttpRequest4 = this.f44508s;
            asyncHttpRequest4.A("Final (post cache response) headers:\n" + toString());
            AsyncHttpClient.this.O(this.f44507r, null, this, this.f44508s, this.f44509t);
        }

        @Override // com.koushikdutta.async.http.AsyncHttpResponse
        public AsyncSocket W() {
            this.f44508s.v("Detaching socket");
            AsyncSocket socket = socket();
            if (socket == null) {
                return null;
            }
            socket.e0(null);
            socket.j0(null);
            socket.X(null);
            socket.b0(null);
            c0(null);
            return socket;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.koushikdutta.async.http.AsyncHttpResponseImpl, com.koushikdutta.async.DataEmitterBase
        public void v0(Exception exc) {
            if (exc != null) {
                this.f44508s.y("exception during response", exc);
            }
            if (this.f44507r.isCancelled()) {
                return;
            }
            if (exc instanceof AsyncSSLException) {
                this.f44508s.y("SSL Exception", exc);
                AsyncSSLException asyncSSLException = (AsyncSSLException) exc;
                this.f44508s.C(asyncSSLException);
                if (asyncSSLException.getIgnore()) {
                    return;
                }
            }
            AsyncSocket socket = socket();
            if (socket == null) {
                return;
            }
            super.v0(exc);
            if ((!socket.isOpen() || exc != null) && f() == null && exc != null) {
                AsyncHttpClient.this.O(this.f44507r, exc, null, this.f44508s, this.f44509t);
            }
            this.f44510u.f44552k = exc;
            for (AsyncHttpClientMiddleware asyncHttpClientMiddleware : AsyncHttpClient.this.f44485a) {
                asyncHttpClientMiddleware.h(this.f44510u);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.koushikdutta.async.http.AsyncHttpResponseImpl
        public void y0() {
            super.y0();
            if (this.f44507r.isCancelled()) {
                return;
            }
            FutureAsyncHttpResponse futureAsyncHttpResponse = this.f44507r;
            if (futureAsyncHttpResponse.f44540m != null) {
                futureAsyncHttpResponse.f44539l.cancel();
            }
            AsyncHttpRequest asyncHttpRequest = this.f44508s;
            asyncHttpRequest.A("Received headers:\n" + toString());
            for (AsyncHttpClientMiddleware asyncHttpClientMiddleware : AsyncHttpClient.this.f44485a) {
                asyncHttpClientMiddleware.d(this.f44510u);
            }
        }
    }

    /* renamed from: com.koushikdutta.async.http.AsyncHttpClient$9  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 implements HttpConnectCallback {

        /* renamed from: a  reason: collision with root package name */
        long f44527a = 0;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ OutputStream f44528b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ File f44529c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ FileCallback f44530d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ SimpleFuture f44531e;

        AnonymousClass9(OutputStream outputStream, File file, FileCallback fileCallback, SimpleFuture simpleFuture) {
            this.f44528b = outputStream;
            this.f44529c = file;
            this.f44530d = fileCallback;
            this.f44531e = simpleFuture;
        }

        @Override // com.koushikdutta.async.http.callback.HttpConnectCallback
        public void a(Exception exc, final AsyncHttpResponse asyncHttpResponse) {
            if (exc != null) {
                try {
                    this.f44528b.close();
                } catch (IOException unused) {
                }
                this.f44529c.delete();
                AsyncHttpClient.this.M(this.f44530d, this.f44531e, asyncHttpResponse, exc, null);
                return;
            }
            AsyncHttpClient.this.I(this.f44530d, asyncHttpResponse);
            final long a10 = HttpUtil.a(asyncHttpResponse.f());
            asyncHttpResponse.b0(new OutputStreamDataCallback(this.f44528b) { // from class: com.koushikdutta.async.http.AsyncHttpClient.9.1
                @Override // com.koushikdutta.async.stream.OutputStreamDataCallback, com.koushikdutta.async.callback.DataCallback
                public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                    AnonymousClass9.this.f44527a += byteBufferList.P();
                    super.s(dataEmitter, byteBufferList);
                    AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                    AsyncHttpClient.this.J(anonymousClass9.f44530d, asyncHttpResponse, anonymousClass9.f44527a, a10);
                }
            });
            asyncHttpResponse.X(new CompletedCallback() { // from class: com.koushikdutta.async.http.AsyncHttpClient.9.2
                @Override // com.koushikdutta.async.callback.CompletedCallback
                public void g(Exception e4) {
                    try {
                        AnonymousClass9.this.f44528b.close();
                    } catch (IOException e10) {
                        e4 = e10;
                    }
                    Exception exc2 = e4;
                    if (exc2 != null) {
                        AnonymousClass9.this.f44529c.delete();
                        AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                        AsyncHttpClient.this.M(anonymousClass9.f44530d, anonymousClass9.f44531e, asyncHttpResponse, exc2, null);
                        return;
                    }
                    AnonymousClass9 anonymousClass92 = AnonymousClass9.this;
                    AsyncHttpClient.this.M(anonymousClass92.f44530d, anonymousClass92.f44531e, asyncHttpResponse, null, anonymousClass92.f44529c);
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class DownloadCallback extends RequestCallbackBase<ByteBufferList> {
    }

    /* loaded from: classes3.dex */
    public static abstract class FileCallback extends RequestCallbackBase<File> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class FutureAsyncHttpResponse extends SimpleFuture<AsyncHttpResponse> {

        /* renamed from: k  reason: collision with root package name */
        public AsyncSocket f44538k;

        /* renamed from: l  reason: collision with root package name */
        public Cancellable f44539l;

        /* renamed from: m  reason: collision with root package name */
        public Runnable f44540m;

        private FutureAsyncHttpResponse() {
        }

        @Override // com.koushikdutta.async.future.SimpleFuture, com.koushikdutta.async.future.SimpleCancellable, com.koushikdutta.async.future.Cancellable
        public boolean cancel() {
            if (super.cancel()) {
                AsyncSocket asyncSocket = this.f44538k;
                if (asyncSocket != null) {
                    asyncSocket.b0(new DataCallback.NullDataCallback());
                    this.f44538k.close();
                }
                Cancellable cancellable = this.f44539l;
                if (cancellable != null) {
                    cancellable.cancel();
                    return true;
                }
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class JSONArrayCallback extends RequestCallbackBase<JSONArray> {
    }

    /* loaded from: classes3.dex */
    public static abstract class JSONObjectCallback extends RequestCallbackBase<JSONObject> {
    }

    /* loaded from: classes3.dex */
    public static abstract class RequestCallbackBase<T> implements RequestCallback<T> {
        @Override // com.koushikdutta.async.http.callback.RequestCallback
        public void a(AsyncHttpResponse asyncHttpResponse) {
        }

        @Override // com.koushikdutta.async.http.callback.RequestCallback
        public void c(AsyncHttpResponse asyncHttpResponse, long j4, long j10) {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class StringCallback extends RequestCallbackBase<String> {
    }

    /* loaded from: classes3.dex */
    public interface WebSocketConnectCallback {
        void a(Exception exc, WebSocket webSocket);
    }

    public AsyncHttpClient(AsyncServer asyncServer) {
        this.f44489e = asyncServer;
        AsyncSocketMiddleware asyncSocketMiddleware = new AsyncSocketMiddleware(this);
        this.f44487c = asyncSocketMiddleware;
        G(asyncSocketMiddleware);
        AsyncSSLSocketMiddleware asyncSSLSocketMiddleware = new AsyncSSLSocketMiddleware(this);
        this.f44486b = asyncSSLSocketMiddleware;
        G(asyncSSLSocketMiddleware);
        HttpTransportMiddleware httpTransportMiddleware = new HttpTransportMiddleware();
        this.f44488d = httpTransportMiddleware;
        G(httpTransportMiddleware);
        this.f44486b.H(new SSLEngineSNIConfigurator());
    }

    public static AsyncHttpClient A() {
        if (f44483f == null) {
            f44483f = new AsyncHttpClient(AsyncServer.E());
        }
        return f44483f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long F(AsyncHttpRequest asyncHttpRequest) {
        return asyncHttpRequest.s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    public <T> void M(final RequestCallback<T> requestCallback, final SimpleFuture<T> simpleFuture, final AsyncHttpResponse asyncHttpResponse, final Exception exc, final T t9) {
        this.f44489e.c0(new Runnable() { // from class: com.koushikdutta.async.http.AsyncHttpClient.7
            @Override // java.lang.Runnable
            public void run() {
                AsyncHttpClient.this.K(requestCallback, simpleFuture, asyncHttpResponse, exc, t9);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I(RequestCallback requestCallback, AsyncHttpResponse asyncHttpResponse) {
        if (requestCallback != null) {
            requestCallback.a(asyncHttpResponse);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(RequestCallback requestCallback, AsyncHttpResponse asyncHttpResponse, long j4, long j10) {
        if (requestCallback != null) {
            requestCallback.c(asyncHttpResponse, j4, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> void K(RequestCallback<T> requestCallback, SimpleFuture<T> simpleFuture, AsyncHttpResponse asyncHttpResponse, Exception exc, T t9) {
        boolean e02;
        if (exc != null) {
            e02 = simpleFuture.b0(exc);
        } else {
            e02 = simpleFuture.e0(t9);
        }
        if (e02 && requestCallback != null) {
            requestCallback.b(exc, asyncHttpResponse, t9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(final RequestCallback requestCallback, final SimpleFuture simpleFuture, AsyncParser asyncParser, Exception exc, final AsyncHttpResponse asyncHttpResponse) {
        if (exc != null) {
            M(requestCallback, simpleFuture, asyncHttpResponse, exc, null);
            return;
        }
        I(requestCallback, asyncHttpResponse);
        Future a10 = asyncParser.a(asyncHttpResponse);
        a10.B(new FutureCallback() { // from class: com.koushikdutta.async.http.a
            @Override // com.koushikdutta.async.future.FutureCallback
            public final void c(Exception exc2, Object obj) {
                AsyncHttpClient.this.M(requestCallback, simpleFuture, asyncHttpResponse, exc2, obj);
            }
        });
        simpleFuture.b(a10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void N(SimpleFuture simpleFuture, WebSocketConnectCallback webSocketConnectCallback, AsyncHttpRequest asyncHttpRequest, Exception exc, AsyncHttpResponse asyncHttpResponse) {
        if (exc != null) {
            if (!simpleFuture.b0(exc) || webSocketConnectCallback == null) {
                return;
            }
            webSocketConnectCallback.a(exc, null);
            return;
        }
        WebSocket v02 = WebSocketImpl.v0(asyncHttpRequest.i(), asyncHttpResponse);
        if (v02 == null) {
            exc = new WebSocketHandshakeException("Unable to complete websocket handshake");
            asyncHttpResponse.close();
            if (!simpleFuture.b0(exc)) {
                return;
            }
        } else if (!simpleFuture.e0(v02)) {
            return;
        }
        if (webSocketConnectCallback != null) {
            webSocketConnectCallback.a(exc, v02);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(FutureAsyncHttpResponse futureAsyncHttpResponse, Exception exc, AsyncHttpResponseImpl asyncHttpResponseImpl, AsyncHttpRequest asyncHttpRequest, HttpConnectCallback httpConnectCallback) {
        boolean e02;
        futureAsyncHttpResponse.f44539l.cancel();
        if (exc != null) {
            asyncHttpRequest.y("Connection error", exc);
            e02 = futureAsyncHttpResponse.b0(exc);
        } else {
            asyncHttpRequest.v("Connection successful");
            e02 = futureAsyncHttpResponse.e0(asyncHttpResponseImpl);
        }
        if (e02) {
            httpConnectCallback.a(exc, asyncHttpResponseImpl);
        } else if (asyncHttpResponseImpl != null) {
            asyncHttpResponseImpl.b0(new DataCallback.NullDataCallback());
            asyncHttpResponseImpl.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public static void P(AsyncHttpRequest asyncHttpRequest) {
        if (asyncHttpRequest.f44567h != null) {
            return;
        }
        try {
            List<Proxy> select = ProxySelector.getDefault().select(URI.create(asyncHttpRequest.t().toString()));
            if (select.isEmpty()) {
                return;
            }
            Proxy proxy = select.get(0);
            if (proxy.type() == Proxy.Type.HTTP && (proxy.address() instanceof InetSocketAddress)) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) proxy.address();
                asyncHttpRequest.e(inetSocketAddress.getHostString(), inetSocketAddress.getPort());
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o(AsyncHttpRequest asyncHttpRequest, AsyncHttpRequest asyncHttpRequest2, String str) {
        String g4 = asyncHttpRequest.i().g(str);
        if (TextUtils.isEmpty(g4)) {
            return;
        }
        asyncHttpRequest2.i().n(str, g4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(final AsyncHttpRequest asyncHttpRequest, final int i4, final FutureAsyncHttpResponse futureAsyncHttpResponse, final HttpConnectCallback httpConnectCallback) {
        if (this.f44489e.G()) {
            t(asyncHttpRequest, i4, futureAsyncHttpResponse, httpConnectCallback);
        } else {
            this.f44489e.c0(new Runnable() { // from class: com.koushikdutta.async.http.AsyncHttpClient.1
                @Override // java.lang.Runnable
                public void run() {
                    AsyncHttpClient.this.t(asyncHttpRequest, i4, futureAsyncHttpResponse, httpConnectCallback);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(final AsyncHttpRequest asyncHttpRequest, final int i4, final FutureAsyncHttpResponse futureAsyncHttpResponse, final HttpConnectCallback httpConnectCallback) {
        if (i4 > 15) {
            O(futureAsyncHttpResponse, new RedirectLimitExceededException("too many redirects"), null, asyncHttpRequest, httpConnectCallback);
            return;
        }
        asyncHttpRequest.t();
        final AsyncHttpClientMiddleware.OnResponseCompleteData onResponseCompleteData = new AsyncHttpClientMiddleware.OnResponseCompleteData();
        asyncHttpRequest.f44571l = System.currentTimeMillis();
        onResponseCompleteData.f44551b = asyncHttpRequest;
        asyncHttpRequest.v("Executing request.");
        for (AsyncHttpClientMiddleware asyncHttpClientMiddleware : this.f44485a) {
            asyncHttpClientMiddleware.b(onResponseCompleteData);
        }
        if (asyncHttpRequest.s() > 0) {
            Runnable runnable = new Runnable() { // from class: com.koushikdutta.async.http.AsyncHttpClient.2
                @Override // java.lang.Runnable
                public void run() {
                    Cancellable cancellable = onResponseCompleteData.f44543d;
                    if (cancellable != null) {
                        cancellable.cancel();
                        AsyncSocket asyncSocket = onResponseCompleteData.f44546f;
                        if (asyncSocket != null) {
                            asyncSocket.close();
                        }
                    }
                    AsyncHttpClient.this.O(futureAsyncHttpResponse, new TimeoutException(), null, asyncHttpRequest, httpConnectCallback);
                }
            };
            futureAsyncHttpResponse.f44540m = runnable;
            futureAsyncHttpResponse.f44539l = this.f44489e.e0(runnable, F(asyncHttpRequest));
        }
        onResponseCompleteData.f44542c = new ConnectCallback() { // from class: com.koushikdutta.async.http.AsyncHttpClient.3

            /* renamed from: a  reason: collision with root package name */
            boolean f44500a;

            @Override // com.koushikdutta.async.callback.ConnectCallback
            public void a(Exception exc, AsyncSocket asyncSocket) {
                if (this.f44500a && asyncSocket != null) {
                    asyncSocket.b0(new DataCallback.NullDataCallback());
                    asyncSocket.X(new CompletedCallback.NullCompletedCallback());
                    asyncSocket.close();
                    throw new AssertionError("double connect callback");
                }
                this.f44500a = true;
                asyncHttpRequest.A("socket connected");
                if (futureAsyncHttpResponse.isCancelled()) {
                    if (asyncSocket != null) {
                        asyncSocket.close();
                        return;
                    }
                    return;
                }
                FutureAsyncHttpResponse futureAsyncHttpResponse2 = futureAsyncHttpResponse;
                if (futureAsyncHttpResponse2.f44540m != null) {
                    futureAsyncHttpResponse2.f44539l.cancel();
                }
                if (exc != null) {
                    AsyncHttpClient.this.O(futureAsyncHttpResponse, exc, null, asyncHttpRequest, httpConnectCallback);
                    return;
                }
                AsyncHttpClientMiddleware.OnResponseCompleteData onResponseCompleteData2 = onResponseCompleteData;
                onResponseCompleteData2.f44546f = asyncSocket;
                FutureAsyncHttpResponse futureAsyncHttpResponse3 = futureAsyncHttpResponse;
                futureAsyncHttpResponse3.f44538k = asyncSocket;
                AsyncHttpClient.this.y(asyncHttpRequest, i4, futureAsyncHttpResponse3, httpConnectCallback, onResponseCompleteData2);
            }
        };
        P(asyncHttpRequest);
        if (asyncHttpRequest.f() != null && asyncHttpRequest.i().g("Content-Type") == null) {
            asyncHttpRequest.i().n("Content-Type", asyncHttpRequest.f().getContentType());
        }
        for (AsyncHttpClientMiddleware asyncHttpClientMiddleware2 : this.f44485a) {
            Cancellable e4 = asyncHttpClientMiddleware2.e(onResponseCompleteData);
            if (e4 != null) {
                onResponseCompleteData.f44543d = e4;
                futureAsyncHttpResponse.b(e4);
                return;
            }
        }
        O(futureAsyncHttpResponse, new IllegalArgumentException("invalid uri=" + asyncHttpRequest.t() + " middlewares=" + this.f44485a), null, asyncHttpRequest, httpConnectCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(AsyncHttpRequest asyncHttpRequest, int i4, FutureAsyncHttpResponse futureAsyncHttpResponse, HttpConnectCallback httpConnectCallback, AsyncHttpClientMiddleware.OnResponseCompleteData onResponseCompleteData) {
        final AnonymousClass4 anonymousClass4 = new AnonymousClass4(asyncHttpRequest, futureAsyncHttpResponse, asyncHttpRequest, httpConnectCallback, onResponseCompleteData, i4);
        onResponseCompleteData.f44548h = new CompletedCallback() { // from class: com.koushikdutta.async.http.AsyncHttpClient.5
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                if (exc != null) {
                    anonymousClass4.v0(exc);
                } else {
                    anonymousClass4.z0();
                }
            }
        };
        onResponseCompleteData.f44549i = new CompletedCallback() { // from class: com.koushikdutta.async.http.AsyncHttpClient.6
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                if (exc != null) {
                    anonymousClass4.v0(exc);
                } else {
                    anonymousClass4.y0();
                }
            }
        };
        onResponseCompleteData.f44547g = anonymousClass4;
        anonymousClass4.c0(onResponseCompleteData.f44546f);
        Iterator<AsyncHttpClientMiddleware> it = this.f44485a.iterator();
        while (it.hasNext() && !it.next().a(onResponseCompleteData)) {
        }
    }

    public Collection<AsyncHttpClientMiddleware> B() {
        return this.f44485a;
    }

    public AsyncSSLSocketMiddleware C() {
        return this.f44486b;
    }

    public AsyncServer D() {
        return this.f44489e;
    }

    public AsyncSocketMiddleware E() {
        return this.f44487c;
    }

    public void G(AsyncHttpClientMiddleware asyncHttpClientMiddleware) {
        this.f44485a.add(0, asyncHttpClientMiddleware);
    }

    public Future<WebSocket> Q(AsyncHttpRequest asyncHttpRequest, String str, WebSocketConnectCallback webSocketConnectCallback) {
        return R(asyncHttpRequest, str != null ? new String[]{str} : null, webSocketConnectCallback);
    }

    public Future<WebSocket> R(final AsyncHttpRequest asyncHttpRequest, String[] strArr, final WebSocketConnectCallback webSocketConnectCallback) {
        WebSocketImpl.t0(asyncHttpRequest, strArr);
        final SimpleFuture simpleFuture = new SimpleFuture();
        simpleFuture.b(p(asyncHttpRequest, new HttpConnectCallback() { // from class: com.koushikdutta.async.http.b
            @Override // com.koushikdutta.async.http.callback.HttpConnectCallback
            public final void a(Exception exc, AsyncHttpResponse asyncHttpResponse) {
                AsyncHttpClient.N(SimpleFuture.this, webSocketConnectCallback, asyncHttpRequest, exc, asyncHttpResponse);
            }
        }));
        return simpleFuture;
    }

    public Future<WebSocket> S(String str, String str2, WebSocketConnectCallback webSocketConnectCallback) {
        return Q(new AsyncHttpGet(str.replace("ws://", c5.j.f4021a).replace("wss://", c5.j.f4022b)), str2, webSocketConnectCallback);
    }

    public Future<WebSocket> T(String str, String[] strArr, WebSocketConnectCallback webSocketConnectCallback) {
        return R(new AsyncHttpGet(str.replace("ws://", c5.j.f4021a).replace("wss://", c5.j.f4022b)), strArr, webSocketConnectCallback);
    }

    public Future<AsyncHttpResponse> p(AsyncHttpRequest asyncHttpRequest, HttpConnectCallback httpConnectCallback) {
        FutureAsyncHttpResponse futureAsyncHttpResponse = new FutureAsyncHttpResponse();
        s(asyncHttpRequest, 0, futureAsyncHttpResponse, httpConnectCallback);
        return futureAsyncHttpResponse;
    }

    public Future<AsyncHttpResponse> q(String str, HttpConnectCallback httpConnectCallback) {
        return p(new AsyncHttpGet(str), httpConnectCallback);
    }

    public <T> SimpleFuture<T> r(AsyncHttpRequest asyncHttpRequest, final AsyncParser<T> asyncParser, final RequestCallback<T> requestCallback) {
        FutureAsyncHttpResponse futureAsyncHttpResponse = new FutureAsyncHttpResponse();
        final SimpleFuture<T> simpleFuture = new SimpleFuture<>();
        s(asyncHttpRequest, 0, futureAsyncHttpResponse, new HttpConnectCallback() { // from class: com.koushikdutta.async.http.c
            @Override // com.koushikdutta.async.http.callback.HttpConnectCallback
            public final void a(Exception exc, AsyncHttpResponse asyncHttpResponse) {
                AsyncHttpClient.this.L(requestCallback, simpleFuture, asyncParser, exc, asyncHttpResponse);
            }
        });
        simpleFuture.b(futureAsyncHttpResponse);
        return simpleFuture;
    }

    public Future<ByteBufferList> u(AsyncHttpRequest asyncHttpRequest, DownloadCallback downloadCallback) {
        return r(asyncHttpRequest, new ByteBufferListParser(), downloadCallback);
    }

    public Future<File> v(AsyncHttpRequest asyncHttpRequest, String str, FileCallback fileCallback) {
        final File file = new File(str);
        file.getParentFile().mkdirs();
        try {
            final BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(l.b.a(new FileOutputStream(file), file), 8192);
            final FutureAsyncHttpResponse futureAsyncHttpResponse = new FutureAsyncHttpResponse();
            SimpleFuture<File> simpleFuture = new SimpleFuture<File>() { // from class: com.koushikdutta.async.http.AsyncHttpClient.8
                @Override // com.koushikdutta.async.future.SimpleCancellable
                public void e() {
                    try {
                        futureAsyncHttpResponse.get().b0(new DataCallback.NullDataCallback());
                        futureAsyncHttpResponse.get().close();
                    } catch (Exception unused) {
                    }
                    try {
                        bufferedOutputStream.close();
                    } catch (Exception unused2) {
                    }
                    file.delete();
                }
            };
            simpleFuture.b(futureAsyncHttpResponse);
            s(asyncHttpRequest, 0, futureAsyncHttpResponse, new AnonymousClass9(bufferedOutputStream, file, fileCallback, simpleFuture));
            return simpleFuture;
        } catch (FileNotFoundException e4) {
            SimpleFuture simpleFuture2 = new SimpleFuture();
            simpleFuture2.b0(e4);
            return simpleFuture2;
        }
    }

    public Future<JSONArray> w(AsyncHttpRequest asyncHttpRequest, JSONArrayCallback jSONArrayCallback) {
        return r(asyncHttpRequest, new JSONArrayParser(), jSONArrayCallback);
    }

    public Future<JSONObject> x(AsyncHttpRequest asyncHttpRequest, JSONObjectCallback jSONObjectCallback) {
        return r(asyncHttpRequest, new JSONObjectParser(), jSONObjectCallback);
    }

    public Future<String> z(AsyncHttpRequest asyncHttpRequest, StringCallback stringCallback) {
        return r(asyncHttpRequest, new StringParser(), stringCallback);
    }
}
