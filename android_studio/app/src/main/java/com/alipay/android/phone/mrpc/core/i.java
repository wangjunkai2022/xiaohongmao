package com.alipay.android.phone.mrpc.core;

import org.apache.http.HttpResponse;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes.dex */
final class i extends DefaultRedirectHandler {

    /* renamed from: a  reason: collision with root package name */
    int f6638a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ h f6639b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(h hVar) {
        this.f6639b = hVar;
    }

    public final boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
        int statusCode;
        this.f6638a++;
        boolean isRedirectRequested = super.isRedirectRequested(httpResponse, httpContext);
        if (isRedirectRequested || this.f6638a >= 5 || !((statusCode = httpResponse.getStatusLine().getStatusCode()) == 301 || statusCode == 302)) {
            return isRedirectRequested;
        }
        return true;
    }
}
