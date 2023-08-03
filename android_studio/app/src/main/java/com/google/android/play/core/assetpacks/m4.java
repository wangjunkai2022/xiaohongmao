package com.google.android.play.core.assetpacks;

import java.util.concurrent.ThreadFactory;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final /* synthetic */ class m4 implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ m4 f31464a = new m4();

    private /* synthetic */ m4() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "AssetPackBackgroundExecutor");
    }
}
