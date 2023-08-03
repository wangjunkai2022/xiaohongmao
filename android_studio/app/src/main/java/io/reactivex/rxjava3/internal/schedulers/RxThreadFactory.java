package io.reactivex.rxjava3.internal.schedulers;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes4.dex */
public final class RxThreadFactory extends AtomicLong implements ThreadFactory {

    /* renamed from: d  reason: collision with root package name */
    private static final long f81028d = -7789753024099756196L;

    /* renamed from: a  reason: collision with root package name */
    final String f81029a;

    /* renamed from: b  reason: collision with root package name */
    final int f81030b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f81031c;

    /* loaded from: classes4.dex */
    static final class a extends Thread implements j {
        a(Runnable run, String name) {
            super(run, name);
        }
    }

    public RxThreadFactory(String prefix) {
        this(prefix, 5, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(@p7.e Runnable r9) {
        String str = this.f81029a + shaded.org.apache.commons.codec.language.l.f93713d + incrementAndGet();
        Thread aVar = this.f81031c ? new a(r9, str) : new Thread(r9, str);
        aVar.setPriority(this.f81030b);
        aVar.setDaemon(true);
        return aVar;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public String toString() {
        return "RxThreadFactory[" + this.f81029a + "]";
    }

    public RxThreadFactory(String prefix, int priority) {
        this(prefix, priority, false);
    }

    public RxThreadFactory(String prefix, int priority, boolean nonBlocking) {
        this.f81029a = prefix;
        this.f81030b = priority;
        this.f81031c = nonBlocking;
    }
}
