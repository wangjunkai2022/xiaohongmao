package com.google.android.play.core.assetpacks;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class q4 implements com.google.android.play.core.internal.r1 {
    @Override // com.google.android.play.core.internal.r1
    public final /* synthetic */ Object zza() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(m4.f31464a);
        com.google.android.play.core.internal.q1.a(newSingleThreadExecutor);
        return newSingleThreadExecutor;
    }
}
