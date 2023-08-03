package io.sentry;

import java.net.InetAddress;
import java.util.concurrent.Callable;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes4.dex */
public final /* synthetic */ class d0 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ d0 f83108a = new d0();

    private /* synthetic */ d0() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        InetAddress localHost;
        localHost = InetAddress.getLocalHost();
        return localHost;
    }
}
