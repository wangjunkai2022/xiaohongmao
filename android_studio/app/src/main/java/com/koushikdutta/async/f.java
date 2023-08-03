package com.koushikdutta.async;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class f implements HostnameVerifier {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ f f44376a = new f();

    private /* synthetic */ f() {
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        boolean E0;
        E0 = AsyncSSLSocketWrapper.E0(str, sSLSession);
        return E0;
    }
}
