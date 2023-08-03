package com.alipay.android.phone.mrpc.core;

import com.alipay.android.phone.mrpc.core.f;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.client.RedirectHandler;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h extends DefaultHttpClient {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f6637a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(f fVar, ClientConnectionManager clientConnectionManager, HttpParams httpParams) {
        super(clientConnectionManager, httpParams);
        this.f6637a = fVar;
    }

    protected final ConnectionKeepAliveStrategy createConnectionKeepAliveStrategy() {
        return new j(this);
    }

    protected final HttpContext createHttpContext() {
        BasicHttpContext basicHttpContext = new BasicHttpContext();
        basicHttpContext.setAttribute("http.authscheme-registry", getAuthSchemes());
        basicHttpContext.setAttribute("http.cookiespec-registry", getCookieSpecs());
        basicHttpContext.setAttribute("http.auth.credentials-provider", getCredentialsProvider());
        return basicHttpContext;
    }

    protected final BasicHttpProcessor createHttpProcessor() {
        HttpRequestInterceptor httpRequestInterceptor;
        BasicHttpProcessor createHttpProcessor = super.createHttpProcessor();
        httpRequestInterceptor = f.f6630f;
        createHttpProcessor.addRequestInterceptor(httpRequestInterceptor);
        createHttpProcessor.addRequestInterceptor(new f.a(this.f6637a, (byte) 0));
        return createHttpProcessor;
    }

    protected final RedirectHandler createRedirectHandler() {
        return new i(this);
    }
}
