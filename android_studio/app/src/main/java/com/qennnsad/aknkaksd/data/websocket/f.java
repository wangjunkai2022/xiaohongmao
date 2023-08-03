package com.qennnsad.aknkaksd.data.websocket;

import okhttp3.Interceptor;
import okhttp3.Response;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class f implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ f f47852a = new f();

    private /* synthetic */ f() {
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        Response w9;
        w9 = WebSocketService.w(chain);
        return w9;
    }
}
