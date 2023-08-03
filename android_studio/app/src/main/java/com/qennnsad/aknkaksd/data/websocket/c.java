package com.qennnsad.aknkaksd.data.websocket;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class c implements HostnameVerifier {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ c f47847a = new c();

    private /* synthetic */ c() {
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        boolean v9;
        v9 = WebSocketService.v(str, sSLSession);
        return v9;
    }
}
