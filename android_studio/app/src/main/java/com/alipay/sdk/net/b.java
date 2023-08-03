package com.alipay.sdk.net;

import java.util.concurrent.TimeUnit;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    public static final String f6886b = "msp";

    /* renamed from: c  reason: collision with root package name */
    static b f6887c;

    /* renamed from: a  reason: collision with root package name */
    final DefaultHttpClient f6888a;

    private b(HttpParams httpParams) {
        this.f6888a = new DefaultHttpClient(httpParams);
    }

    public static b a() {
        if (f6887c == null) {
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpConnectionParams.setStaleCheckingEnabled(basicHttpParams, true);
            basicHttpParams.setBooleanParameter("http.protocol.expect-continue", false);
            ConnManagerParams.setMaxTotalConnections(basicHttpParams, 50);
            ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRouteBean(30));
            ConnManagerParams.setTimeout(basicHttpParams, 1000L);
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, com.alipay.sdk.data.a.f6866f);
            HttpConnectionParams.setSoTimeout(basicHttpParams, 30000);
            HttpConnectionParams.setSocketBufferSize(basicHttpParams, 16384);
            HttpProtocolParams.setUseExpectContinue(basicHttpParams, false);
            HttpClientParams.setRedirecting(basicHttpParams, true);
            HttpClientParams.setAuthenticating(basicHttpParams, false);
            HttpProtocolParams.setUserAgent(basicHttpParams, f6886b);
            try {
                SSLSocketFactory socketFactory = SSLSocketFactory.getSocketFactory();
                socketFactory.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
                Scheme scheme = new Scheme("https", socketFactory, 443);
                Scheme scheme2 = new Scheme("http", PlainSocketFactory.getSocketFactory(), 80);
                SchemeRegistry schemeRegistry = new SchemeRegistry();
                schemeRegistry.register(scheme);
                schemeRegistry.register(scheme2);
                f6887c = new b(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
            } catch (Exception unused) {
                f6887c = new b(basicHttpParams);
            }
        }
        return f6887c;
    }

    private <T> T b(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) throws Exception {
        try {
            return (T) this.f6888a.execute(httpHost, httpRequest, responseHandler);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private <T> T c(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws Exception {
        try {
            return (T) this.f6888a.execute(httpHost, httpRequest, responseHandler, httpContext);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private <T> T d(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler) throws Exception {
        try {
            return (T) this.f6888a.execute(httpUriRequest, responseHandler);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private <T> T e(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) throws Exception {
        try {
            return (T) this.f6888a.execute(httpUriRequest, responseHandler, httpContext);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private HttpResponse f(HttpHost httpHost, HttpRequest httpRequest) throws Exception {
        try {
            return this.f6888a.execute(httpHost, httpRequest);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private HttpResponse g(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws Exception {
        try {
            return this.f6888a.execute(httpHost, httpRequest, httpContext);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private HttpResponse i(HttpUriRequest httpUriRequest, HttpContext httpContext) throws Exception {
        try {
            return this.f6888a.execute(httpUriRequest, httpContext);
        } catch (Exception e4) {
            throw new Exception(e4);
        }
    }

    private static b j() {
        return f6887c;
    }

    private static void k() {
        f6887c = null;
    }

    private void l() {
        ClientConnectionManager connectionManager = this.f6888a.getConnectionManager();
        if (connectionManager != null) {
            connectionManager.closeExpiredConnections();
            connectionManager.closeIdleConnections(30L, TimeUnit.MINUTES);
        }
    }

    private void m() {
        ClientConnectionManager connectionManager = this.f6888a.getConnectionManager();
        if (connectionManager != null) {
            connectionManager.shutdown();
            f6887c = null;
        }
    }

    private HttpParams n() {
        return this.f6888a.getParams();
    }

    private ClientConnectionManager o() {
        return this.f6888a.getConnectionManager();
    }

    public final HttpResponse h(HttpUriRequest httpUriRequest) throws Exception {
        try {
            return this.f6888a.execute(httpUriRequest);
        } catch (Exception e4) {
            throw e4;
        }
    }

    private b(ClientConnectionManager clientConnectionManager, HttpParams httpParams) {
        this.f6888a = new DefaultHttpClient(clientConnectionManager, httpParams);
    }
}
