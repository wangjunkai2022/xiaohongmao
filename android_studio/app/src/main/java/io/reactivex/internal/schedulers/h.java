package io.reactivex.internal.schedulers;

import io.reactivex.h0;
import java.util.concurrent.ThreadFactory;

/* compiled from: NewThreadScheduler.java */
/* loaded from: classes4.dex */
public final class h extends h0 {

    /* renamed from: c  reason: collision with root package name */
    final ThreadFactory f75717c;

    /* renamed from: d  reason: collision with root package name */
    private static final String f75714d = "RxNewThreadScheduler";

    /* renamed from: f  reason: collision with root package name */
    private static final String f75716f = "rx2.newthread-priority";

    /* renamed from: e  reason: collision with root package name */
    private static final RxThreadFactory f75715e = new RxThreadFactory(f75714d, Math.max(1, Math.min(10, Integer.getInteger(f75716f, 5).intValue())));

    public h() {
        this(f75715e);
    }

    @Override // io.reactivex.h0
    @m7.e
    public h0.c d() {
        return new i(this.f75717c);
    }

    public h(ThreadFactory threadFactory) {
        this.f75717c = threadFactory;
    }
}
