package io.sentry.transport;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.AbstractQueuedSynchronizer;

/* compiled from: ReusableCountLatch.java */
/* loaded from: classes4.dex */
public final class a0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final a f84005a;

    /* compiled from: ReusableCountLatch.java */
    /* loaded from: classes4.dex */
    private static final class a extends AbstractQueuedSynchronizer {

        /* renamed from: a  reason: collision with root package name */
        private static final long f84006a = 5970133580157457018L;

        a(int i4) {
            setState(i4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            releaseShared(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int e() {
            return getState();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h() {
            int state;
            do {
                state = getState();
            } while (!compareAndSetState(state, state + 1));
        }

        @Override // java.util.concurrent.locks.AbstractQueuedSynchronizer
        public int tryAcquireShared(int i4) {
            return getState() == 0 ? 1 : -1;
        }

        @Override // java.util.concurrent.locks.AbstractQueuedSynchronizer
        public boolean tryReleaseShared(int i4) {
            int state;
            int i10;
            do {
                state = getState();
                if (state == 0) {
                    return false;
                }
                i10 = state - 1;
            } while (!compareAndSetState(state, i10));
            return i10 == 0;
        }
    }

    public a0(int i4) {
        if (i4 >= 0) {
            this.f84005a = new a(i4);
            return;
        }
        throw new IllegalArgumentException("negative initial count '" + i4 + "' is not allowed");
    }

    public void a() {
        this.f84005a.d();
    }

    public int b() {
        return this.f84005a.e();
    }

    public void c() {
        this.f84005a.h();
    }

    public void d() throws InterruptedException {
        this.f84005a.acquireSharedInterruptibly(1);
    }

    public boolean e(long j4, @m8.g TimeUnit timeUnit) throws InterruptedException {
        return this.f84005a.tryAcquireSharedNanos(1, timeUnit.toNanos(j4));
    }

    public a0() {
        this(0);
    }
}
