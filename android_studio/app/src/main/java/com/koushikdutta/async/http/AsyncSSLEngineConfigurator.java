package com.koushikdutta.async.http;

import com.koushikdutta.async.http.AsyncHttpClientMiddleware;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;

/* loaded from: classes3.dex */
public interface AsyncSSLEngineConfigurator {
    void a(SSLEngine sSLEngine, AsyncHttpClientMiddleware.GetSocketData getSocketData, String str, int i4);

    SSLEngine b(SSLContext sSLContext, String str, int i4);
}
