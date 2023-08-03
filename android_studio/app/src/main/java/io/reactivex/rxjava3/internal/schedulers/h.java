package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.o0;
import java.util.concurrent.ThreadFactory;

/* compiled from: NewThreadScheduler.java */
/* loaded from: classes4.dex */
public final class h extends o0 {

    /* renamed from: b  reason: collision with root package name */
    final ThreadFactory f81132b;

    /* renamed from: c  reason: collision with root package name */
    private static final String f81129c = "RxNewThreadScheduler";

    /* renamed from: e  reason: collision with root package name */
    private static final String f81131e = "rx3.newthread-priority";

    /* renamed from: d  reason: collision with root package name */
    private static final RxThreadFactory f81130d = new RxThreadFactory(f81129c, Math.max(1, Math.min(10, Integer.getInteger(f81131e, 5).intValue())));

    public h() {
        this(f81130d);
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public o0.c d() {
        return new i(this.f81132b);
    }

    public h(ThreadFactory threadFactory) {
        this.f81132b = threadFactory;
    }
}
