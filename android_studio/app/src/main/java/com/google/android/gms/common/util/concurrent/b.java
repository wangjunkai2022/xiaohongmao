package com.google.android.gms.common.util.concurrent;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.u;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class b implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final String f29290a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadFactory f29291b = Executors.defaultThreadFactory();

    @u2.a
    public b(@NonNull String str) {
        u.l(str, "Name must not be null");
        this.f29290a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    @NonNull
    public final Thread newThread(@NonNull Runnable runnable) {
        Thread newThread = this.f29291b.newThread(new d(runnable, 0));
        newThread.setName(this.f29290a);
        return newThread;
    }
}
