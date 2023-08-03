package io.reactivex.internal.schedulers;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes4.dex */
public final class RxThreadFactory extends AtomicLong implements ThreadFactory {

    /* renamed from: d  reason: collision with root package name */
    private static final long f75613d = -7789753024099756196L;

    /* renamed from: a  reason: collision with root package name */
    final String f75614a;

    /* renamed from: b  reason: collision with root package name */
    final int f75615b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f75616c;

    /* loaded from: classes4.dex */
    static final class a extends Thread implements j {
        a(Runnable runnable, String str) {
            super(runnable, str);
        }
    }

    public RxThreadFactory(String str) {
        this(str, 5, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        String str = this.f75614a + shaded.org.apache.commons.codec.language.l.f93713d + incrementAndGet();
        Thread aVar = this.f75616c ? new a(runnable, str) : new Thread(runnable, str);
        aVar.setPriority(this.f75615b);
        aVar.setDaemon(true);
        return aVar;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public String toString() {
        return "RxThreadFactory[" + this.f75614a + "]";
    }

    public RxThreadFactory(String str, int i4) {
        this(str, i4, false);
    }

    public RxThreadFactory(String str, int i4, boolean z9) {
        this.f75614a = str;
        this.f75615b = i4;
        this.f75616c = z9;
    }
}
