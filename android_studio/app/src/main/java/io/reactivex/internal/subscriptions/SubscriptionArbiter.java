package io.reactivex.internal.subscriptions;

import io.reactivex.internal.util.b;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.e;

/* loaded from: classes4.dex */
public class SubscriptionArbiter extends AtomicInteger implements e {

    /* renamed from: i  reason: collision with root package name */
    private static final long f75885i = -2189523197179400958L;

    /* renamed from: a  reason: collision with root package name */
    e f75886a;

    /* renamed from: b  reason: collision with root package name */
    long f75887b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<e> f75888c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    final AtomicLong f75889d = new AtomicLong();

    /* renamed from: e  reason: collision with root package name */
    final AtomicLong f75890e = new AtomicLong();

    /* renamed from: f  reason: collision with root package name */
    final boolean f75891f;

    /* renamed from: g  reason: collision with root package name */
    volatile boolean f75892g;

    /* renamed from: h  reason: collision with root package name */
    protected boolean f75893h;

    public SubscriptionArbiter(boolean z9) {
        this.f75891f = z9;
    }

    final void c() {
        if (getAndIncrement() != 0) {
            return;
        }
        d();
    }

    public void cancel() {
        if (this.f75892g) {
            return;
        }
        this.f75892g = true;
        c();
    }

    final void d() {
        int i4 = 1;
        e eVar = null;
        long j4 = 0;
        do {
            e eVar2 = this.f75888c.get();
            if (eVar2 != null) {
                eVar2 = this.f75888c.getAndSet(null);
            }
            long j10 = this.f75889d.get();
            if (j10 != 0) {
                j10 = this.f75889d.getAndSet(0L);
            }
            long j11 = this.f75890e.get();
            if (j11 != 0) {
                j11 = this.f75890e.getAndSet(0L);
            }
            e eVar3 = this.f75886a;
            if (this.f75892g) {
                if (eVar3 != null) {
                    eVar3.cancel();
                    this.f75886a = null;
                }
                if (eVar2 != null) {
                    eVar2.cancel();
                }
            } else {
                long j12 = this.f75887b;
                if (j12 != Long.MAX_VALUE) {
                    j12 = b.c(j12, j10);
                    if (j12 != Long.MAX_VALUE) {
                        j12 -= j11;
                        if (j12 < 0) {
                            SubscriptionHelper.reportMoreProduced(j12);
                            j12 = 0;
                        }
                    }
                    this.f75887b = j12;
                }
                if (eVar2 != null) {
                    if (eVar3 != null && this.f75891f) {
                        eVar3.cancel();
                    }
                    this.f75886a = eVar2;
                    if (j12 != 0) {
                        j4 = b.c(j4, j12);
                        eVar = eVar2;
                    }
                } else if (eVar3 != null && j10 != 0) {
                    j4 = b.c(j4, j10);
                    eVar = eVar3;
                }
            }
            i4 = addAndGet(-i4);
        } while (i4 != 0);
        if (j4 != 0) {
            eVar.request(j4);
        }
    }

    public final boolean isCancelled() {
        return this.f75892g;
    }

    public final boolean isUnbounded() {
        return this.f75893h;
    }

    public final void produced(long j4) {
        if (this.f75893h) {
            return;
        }
        if (get() == 0 && compareAndSet(0, 1)) {
            long j10 = this.f75887b;
            if (j10 != Long.MAX_VALUE) {
                long j11 = j10 - j4;
                if (j11 < 0) {
                    SubscriptionHelper.reportMoreProduced(j11);
                    j11 = 0;
                }
                this.f75887b = j11;
            }
            if (decrementAndGet() == 0) {
                return;
            }
            d();
            return;
        }
        b.a(this.f75890e, j4);
        c();
    }

    @Override // org.reactivestreams.e
    public final void request(long j4) {
        if (!SubscriptionHelper.validate(j4) || this.f75893h) {
            return;
        }
        if (get() == 0 && compareAndSet(0, 1)) {
            long j10 = this.f75887b;
            if (j10 != Long.MAX_VALUE) {
                long c10 = b.c(j10, j4);
                this.f75887b = c10;
                if (c10 == Long.MAX_VALUE) {
                    this.f75893h = true;
                }
            }
            e eVar = this.f75886a;
            if (decrementAndGet() != 0) {
                d();
            }
            if (eVar != null) {
                eVar.request(j4);
                return;
            }
            return;
        }
        b.a(this.f75889d, j4);
        c();
    }

    public final void setSubscription(e eVar) {
        if (this.f75892g) {
            eVar.cancel();
            return;
        }
        io.reactivex.internal.functions.b.g(eVar, "s is null");
        if (get() == 0 && compareAndSet(0, 1)) {
            e eVar2 = this.f75886a;
            if (eVar2 != null && this.f75891f) {
                eVar2.cancel();
            }
            this.f75886a = eVar;
            long j4 = this.f75887b;
            if (decrementAndGet() != 0) {
                d();
            }
            if (j4 != 0) {
                eVar.request(j4);
                return;
            }
            return;
        }
        e andSet = this.f75888c.getAndSet(eVar);
        if (andSet != null && this.f75891f) {
            andSet.cancel();
        }
        c();
    }
}
