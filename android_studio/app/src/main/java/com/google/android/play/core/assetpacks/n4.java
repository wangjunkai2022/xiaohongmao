package com.google.android.play.core.assetpacks;

import java.util.concurrent.ThreadFactory;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final /* synthetic */ class n4 implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ n4 f31485a = new n4();

    private /* synthetic */ n4() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "UpdateListenerExecutor");
    }
}
