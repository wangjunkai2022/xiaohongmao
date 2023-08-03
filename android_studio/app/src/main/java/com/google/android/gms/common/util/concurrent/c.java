package com.google.android.gms.common.util.concurrent;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.u;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class c implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final String f29292a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f29293b = new AtomicInteger();

    /* renamed from: c  reason: collision with root package name */
    private final ThreadFactory f29294c = Executors.defaultThreadFactory();

    @u2.a
    public c(@NonNull String str) {
        u.l(str, "Name must not be null");
        this.f29292a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    @NonNull
    public final Thread newThread(@NonNull Runnable runnable) {
        Thread newThread = this.f29294c.newThread(new d(runnable, 0));
        String str = this.f29292a;
        int andIncrement = this.f29293b.getAndIncrement();
        StringBuilder sb = new StringBuilder(str.length() + 13);
        sb.append(str);
        sb.append("[");
        sb.append(andIncrement);
        sb.append("]");
        newThread.setName(sb.toString());
        return newThread;
    }
}
