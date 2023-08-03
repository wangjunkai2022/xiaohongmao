package com.facebook.imagepipeline.core;

import android.os.Process;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PriorityThreadFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class p implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final int f12397a;

    /* renamed from: b  reason: collision with root package name */
    private final String f12398b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f12399c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicInteger f12400d;

    /* compiled from: PriorityThreadFactory.java */
    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f12401a;

        a(final Runnable val$runnable) {
            this.f12401a = val$runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Process.setThreadPriority(p.this.f12397a);
            } catch (Throwable unused) {
            }
            this.f12401a.run();
        }
    }

    public p(int threadPriority) {
        this(threadPriority, "PriorityThreadFactory", true);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(final Runnable runnable) {
        String str;
        a aVar = new a(runnable);
        if (this.f12399c) {
            str = this.f12398b + "-" + this.f12400d.getAndIncrement();
        } else {
            str = this.f12398b;
        }
        return new Thread(aVar, str);
    }

    public p(int threadPriority, String prefix, boolean addThreadNumber) {
        this.f12400d = new AtomicInteger(1);
        this.f12397a = threadPriority;
        this.f12398b = prefix;
        this.f12399c = addThreadNumber;
    }
}
