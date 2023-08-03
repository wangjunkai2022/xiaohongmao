package com.qennnsad.aknkaksd.data.repository;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class h implements HostnameVerifier {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ h f47746a = new h();

    private /* synthetic */ h() {
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        boolean k02;
        k02 = k.k0(str, sSLSession);
        return k02;
    }
}
