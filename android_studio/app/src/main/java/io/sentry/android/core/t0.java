package io.sentry.android.core;

import android.os.FileObserver;
import io.sentry.SentryLevel;
import java.io.File;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: EnvelopeFileObserver.java */
/* loaded from: classes4.dex */
final class t0 extends FileObserver {

    /* renamed from: a  reason: collision with root package name */
    private final String f82592a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.l0 f82593b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final io.sentry.o0 f82594c;

    /* renamed from: d  reason: collision with root package name */
    private final long f82595d;

    /* compiled from: EnvelopeFileObserver.java */
    /* loaded from: classes4.dex */
    private static final class a implements io.sentry.hints.d, io.sentry.hints.h, io.sentry.hints.m, io.sentry.hints.f, io.sentry.hints.c, io.sentry.hints.g {

        /* renamed from: a  reason: collision with root package name */
        boolean f82596a;

        /* renamed from: b  reason: collision with root package name */
        boolean f82597b;
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private CountDownLatch f82598c;

        /* renamed from: d  reason: collision with root package name */
        private final long f82599d;
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        private final io.sentry.o0 f82600e;

        public a(long j4, @m8.g io.sentry.o0 o0Var) {
            reset();
            this.f82599d = j4;
            this.f82600e = (io.sentry.o0) io.sentry.util.l.c(o0Var, "ILogger is required.");
        }

        @Override // io.sentry.hints.h
        public boolean a() {
            return this.f82596a;
        }

        @Override // io.sentry.hints.m
        public void b(boolean z9) {
            this.f82597b = z9;
            this.f82598c.countDown();
        }

        @Override // io.sentry.hints.h
        public void c(boolean z9) {
            this.f82596a = z9;
        }

        @Override // io.sentry.hints.f
        public boolean d() {
            try {
                return this.f82598c.await(this.f82599d, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e4) {
                Thread.currentThread().interrupt();
                this.f82600e.b(SentryLevel.ERROR, "Exception while awaiting on lock.", e4);
                return false;
            }
        }

        @Override // io.sentry.hints.m
        public boolean e() {
            return this.f82597b;
        }

        @Override // io.sentry.hints.g
        public void reset() {
            this.f82598c = new CountDownLatch(1);
            this.f82596a = false;
            this.f82597b = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(String str, io.sentry.l0 l0Var, @m8.g io.sentry.o0 o0Var, long j4) {
        super(str);
        this.f82592a = str;
        this.f82593b = (io.sentry.l0) io.sentry.util.l.c(l0Var, "Envelope sender is required.");
        this.f82594c = (io.sentry.o0) io.sentry.util.l.c(o0Var, "Logger is required.");
        this.f82595d = j4;
    }

    @Override // android.os.FileObserver
    public void onEvent(int i4, @m8.h String str) {
        if (str == null || i4 != 8) {
            return;
        }
        this.f82594c.c(SentryLevel.DEBUG, "onEvent fired for EnvelopeFileObserver with event type %d on path: %s for file %s.", Integer.valueOf(i4), this.f82592a, str);
        io.sentry.b0 e4 = io.sentry.util.h.e(new a(this.f82595d, this.f82594c));
        io.sentry.l0 l0Var = this.f82593b;
        l0Var.a(this.f82592a + File.separator + str, e4);
    }
}
