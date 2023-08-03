package com.koushikdutta.async;

import com.koushikdutta.async.future.ThenCallback;
import java.net.InetAddress;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes3.dex */
public final /* synthetic */ class j implements ThenCallback {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ j f45067a = new j();

    private /* synthetic */ j() {
    }

    @Override // com.koushikdutta.async.future.ThenCallback
    public final Object a(Object obj) {
        InetAddress O;
        O = AsyncServer.O((InetAddress[]) obj);
        return O;
    }
}
