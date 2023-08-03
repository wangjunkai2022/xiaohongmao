package com.koushikdutta.async.http;

import android.net.Uri;
import android.text.TextUtils;
import com.koushikdutta.async.AsyncSSLSocket;
import com.koushikdutta.async.AsyncSSLSocketWrapper;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.LineEmitter;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.ConnectCallback;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.TrustManager;

/* loaded from: classes3.dex */
public class AsyncSSLSocketMiddleware extends AsyncSocketMiddleware {

    /* renamed from: k  reason: collision with root package name */
    protected SSLContext f44586k;

    /* renamed from: l  reason: collision with root package name */
    protected TrustManager[] f44587l;

    /* renamed from: m  reason: collision with root package name */
    protected HostnameVerifier f44588m;

    /* renamed from: n  reason: collision with root package name */
    protected List<AsyncSSLEngineConfigurator> f44589n;

    /* renamed from: com.koushikdutta.async.http.AsyncSSLSocketMiddleware$2  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements ConnectCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ConnectCallback f44592a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f44593b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AsyncHttpClientMiddleware.GetSocketData f44594c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Uri f44595d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f44596e;

        AnonymousClass2(ConnectCallback connectCallback, boolean z9, AsyncHttpClientMiddleware.GetSocketData getSocketData, Uri uri, int i4) {
            this.f44592a = connectCallback;
            this.f44593b = z9;
            this.f44594c = getSocketData;
            this.f44595d = uri;
            this.f44596e = i4;
        }

        @Override // com.koushikdutta.async.callback.ConnectCallback
        public void a(Exception exc, final AsyncSocket asyncSocket) {
            if (exc != null) {
                this.f44592a.a(exc, asyncSocket);
            } else if (!this.f44593b) {
                AsyncSSLSocketMiddleware.this.P(asyncSocket, this.f44594c, this.f44595d, this.f44596e, this.f44592a);
            } else {
                String format = String.format(Locale.ENGLISH, "CONNECT %s:%s HTTP/1.1\r\nHost: %s\r\n\r\n", this.f44595d.getHost(), Integer.valueOf(this.f44596e), this.f44595d.getHost());
                AsyncHttpRequest asyncHttpRequest = this.f44594c.f44551b;
                asyncHttpRequest.A("Proxying: " + format);
                Util.n(asyncSocket, format.getBytes(), new CompletedCallback() { // from class: com.koushikdutta.async.http.AsyncSSLSocketMiddleware.2.1
                    @Override // com.koushikdutta.async.callback.CompletedCallback
                    public void g(Exception exc2) {
                        if (exc2 != null) {
                            AnonymousClass2.this.f44592a.a(exc2, asyncSocket);
                            return;
                        }
                        LineEmitter lineEmitter = new LineEmitter();
                        lineEmitter.b(new LineEmitter.StringCallback() { // from class: com.koushikdutta.async.http.AsyncSSLSocketMiddleware.2.1.1

                            /* renamed from: a  reason: collision with root package name */
                            String f44600a;

                            @Override // com.koushikdutta.async.LineEmitter.StringCallback
                            public void a(String str) {
                                AnonymousClass2.this.f44594c.f44551b.A(str);
                                if (this.f44600a == null) {
                                    String trim = str.trim();
                                    this.f44600a = trim;
                                    if (trim.matches("HTTP/1.\\d 2\\d\\d .*")) {
                                        return;
                                    }
                                    asyncSocket.b0(null);
                                    asyncSocket.X(null);
                                    ConnectCallback connectCallback = AnonymousClass2.this.f44592a;
                                    connectCallback.a(new IOException("non 2xx status line: " + this.f44600a), asyncSocket);
                                } else if (TextUtils.isEmpty(str.trim())) {
                                    asyncSocket.b0(null);
                                    asyncSocket.X(null);
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                    AsyncSSLSocketMiddleware.this.P(asyncSocket, anonymousClass2.f44594c, anonymousClass2.f44595d, anonymousClass2.f44596e, anonymousClass2.f44592a);
                                }
                            }
                        });
                        asyncSocket.b0(lineEmitter);
                        asyncSocket.X(new CompletedCallback() { // from class: com.koushikdutta.async.http.AsyncSSLSocketMiddleware.2.1.2
                            @Override // com.koushikdutta.async.callback.CompletedCallback
                            public void g(Exception exc3) {
                                if (!asyncSocket.isOpen() && exc3 == null) {
                                    exc3 = new IOException("socket closed before proxy connect response");
                                }
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                AnonymousClass2.this.f44592a.a(exc3, asyncSocket);
                            }
                        });
                    }
                });
            }
        }
    }

    public AsyncSSLSocketMiddleware(AsyncHttpClient asyncHttpClient) {
        super(asyncHttpClient, "https", 443);
        this.f44589n = new ArrayList();
    }

    @Override // com.koushikdutta.async.http.AsyncSocketMiddleware
    protected ConnectCallback G(AsyncHttpClientMiddleware.GetSocketData getSocketData, Uri uri, int i4, boolean z9, ConnectCallback connectCallback) {
        return new AnonymousClass2(connectCallback, z9, getSocketData, uri, i4);
    }

    public void H(AsyncSSLEngineConfigurator asyncSSLEngineConfigurator) {
        this.f44589n.add(asyncSSLEngineConfigurator);
    }

    public void I() {
        this.f44589n.clear();
    }

    protected SSLEngine J(AsyncHttpClientMiddleware.GetSocketData getSocketData, String str, int i4) {
        SSLContext L = L();
        Iterator<AsyncSSLEngineConfigurator> it = this.f44589n.iterator();
        SSLEngine sSLEngine = null;
        while (it.hasNext() && (sSLEngine = it.next().b(L, str, i4)) == null) {
        }
        for (AsyncSSLEngineConfigurator asyncSSLEngineConfigurator : this.f44589n) {
            asyncSSLEngineConfigurator.a(sSLEngine, getSocketData, str, i4);
        }
        return sSLEngine;
    }

    protected AsyncSSLSocketWrapper.HandshakeCallback K(AsyncHttpClientMiddleware.GetSocketData getSocketData, final ConnectCallback connectCallback) {
        return new AsyncSSLSocketWrapper.HandshakeCallback() { // from class: com.koushikdutta.async.http.AsyncSSLSocketMiddleware.1
            @Override // com.koushikdutta.async.AsyncSSLSocketWrapper.HandshakeCallback
            public void a(Exception exc, AsyncSSLSocket asyncSSLSocket) {
                connectCallback.a(exc, asyncSSLSocket);
            }
        };
    }

    public SSLContext L() {
        SSLContext sSLContext = this.f44586k;
        return sSLContext != null ? sSLContext : AsyncSSLSocketWrapper.t0();
    }

    public void M(HostnameVerifier hostnameVerifier) {
        this.f44588m = hostnameVerifier;
    }

    public void N(SSLContext sSLContext) {
        this.f44586k = sSLContext;
    }

    public void O(TrustManager[] trustManagerArr) {
        this.f44587l = trustManagerArr;
    }

    protected void P(AsyncSocket asyncSocket, AsyncHttpClientMiddleware.GetSocketData getSocketData, Uri uri, int i4, ConnectCallback connectCallback) {
        AsyncSSLSocketWrapper.y0(asyncSocket, uri.getHost(), i4, J(getSocketData, uri.getHost(), i4), this.f44587l, this.f44588m, true, K(getSocketData, connectCallback));
    }
}
