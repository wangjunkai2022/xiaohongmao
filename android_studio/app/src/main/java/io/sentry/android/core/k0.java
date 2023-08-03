package io.sentry.android.core;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ApplicationNotResponding.java */
/* loaded from: classes4.dex */
public final class k0 extends RuntimeException {

    /* renamed from: b  reason: collision with root package name */
    private static final long f82502b = 252541144579117016L;
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Thread f82503a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0(@m8.h String str, @m8.g Thread thread) {
        super(str);
        Thread thread2 = (Thread) io.sentry.util.l.c(thread, "Thread must be provided.");
        this.f82503a = thread2;
        setStackTrace(thread2.getStackTrace());
    }

    @m8.g
    public Thread a() {
        return this.f82503a;
    }
}
