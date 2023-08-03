package com.google.android.gms.common.util.concurrent;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.internal.common.r;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class a implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f29289a;

    @u2.a
    public a(@NonNull Looper looper) {
        this.f29289a = new r(looper);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(@NonNull Runnable runnable) {
        this.f29289a.post(runnable);
    }
}
