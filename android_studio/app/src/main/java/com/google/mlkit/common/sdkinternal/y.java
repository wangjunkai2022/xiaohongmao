package com.google.mlkit.common.sdkinternal;

import android.os.Handler;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public enum y implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public final void execute(@NonNull Runnable runnable) {
        Handler handler;
        handler = i.b().f35800a;
        handler.post(runnable);
    }
}
