package com.alipay.android.phone.mrpc.core;

import org.apache.http.HttpResponse;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes.dex */
final class j implements ConnectionKeepAliveStrategy {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h f6640a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(h hVar) {
        this.f6640a = hVar;
    }

    public final long getKeepAliveDuration(HttpResponse httpResponse, HttpContext httpContext) {
        return 180000L;
    }
}
