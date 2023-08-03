package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.internal.util.b;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.e;

/* loaded from: classes4.dex */
public class SubscriptionArbiter extends AtomicInteger implements e {

    /* renamed from: i  reason: collision with root package name */
    private static final long f81300i = -2189523197179400958L;

    /* renamed from: a  reason: collision with root package name */
    e f81301a;

    /* renamed from: b  reason: collision with root package name */
    long f81302b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<e> f81303c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    final AtomicLong f81304d = new AtomicLong();

    /* renamed from: e  reason: collision with root package name */
    final AtomicLong f81305e = new AtomicLong();

    /* renamed from: f  reason: collision with root package name */
    final boolean f81306f;

    /* renamed from: g  reason: collision with root package name */
    volatile boolean f81307g;

    /* renamed from: h  reason: collision with root package name */
    protected boolean f81308h;

    public SubscriptionArbiter(boolean cancelOnReplace) {
        this.f81306f = cancelOnReplace;
    }

    final void c() {
        if (getAndIncrement() != 0) {
            return;
        }
        d();
    }

    public void cancel() {
        if (this.f81307g) {
            return;
        }
        this.f81307g = true;
        c();
    }

    final void d() {
        int i4 = 1;
        e eVar = null;
        long j4 = 0;
        do {
            e eVar2 = this.f81303c.get();
            if (eVar2 != null) {
                eVar2 = this.f81303c.getAndSet(null);
            }
            long j10 = this.f81304d.get();
            if (j10 != 0) {
                j10 = this.f81304d.getAndSet(0L);
            }
            long j11 = this.f81305e.get();
            if (j11 != 0) {
                j11 = this.f81305e.getAndSet(0L);
            }
            e eVar3 = this.f81301a;
            if (this.f81307g) {
                if (eVar3 != null) {
                    eVar3.cancel();
                    this.f81301a = null;
                }
                if (eVar2 != null) {
                    eVar2.cancel();
                }
            } else {
                long j12 = this.f81302b;
                if (j12 != Long.MAX_VALUE) {
                    j12 = b.c(j12, j10);
                    if (j12 != Long.MAX_VALUE) {
                        j12 -= j11;
                        if (j12 < 0) {
                            SubscriptionHelper.reportMoreProduced(j12);
                            j12 = 0;
                        }
                    }
                    this.f81302b = j12;
                }
                if (eVar2 != null) {
                    if (eVar3 != null && this.f81306f) {
                        eVar3.cancel();
                    }
                    this.f81301a = eVar2;
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
        return this.f81307g;
    }

    public final boolean isUnbounded() {
        return this.f81308h;
    }

    public final void produced(long n9) {
        if (this.f81308h) {
            return;
        }
        if (get() == 0 && compareAndSet(0, 1)) {
            long j4 = this.f81302b;
            if (j4 != Long.MAX_VALUE) {
                long j10 = j4 - n9;
                if (j10 < 0) {
                    SubscriptionHelper.reportMoreProduced(j10);
                    j10 = 0;
                }
                this.f81302b = j10;
            }
            if (decrementAndGet() == 0) {
                return;
            }
            d();
            return;
        }
        b.a(this.f81305e, n9);
        c();
    }

    @Override // org.reactivestreams.e
    public final void request(long n9) {
        if (!SubscriptionHelper.validate(n9) || this.f81308h) {
            return;
        }
        if (get() == 0 && compareAndSet(0, 1)) {
            long j4 = this.f81302b;
            if (j4 != Long.MAX_VALUE) {
                long c10 = b.c(j4, n9);
                this.f81302b = c10;
                if (c10 == Long.MAX_VALUE) {
                    this.f81308h = true;
                }
            }
            e eVar = this.f81301a;
            if (decrementAndGet() != 0) {
                d();
            }
            if (eVar != null) {
                eVar.request(n9);
                return;
            }
            return;
        }
        b.a(this.f81304d, n9);
        c();
    }

    public final void setSubscription(e s9) {
        if (this.f81307g) {
            s9.cancel();
            return;
        }
        Objects.requireNonNull(s9, "s is null");
        if (get() == 0 && compareAndSet(0, 1)) {
            e eVar = this.f81301a;
            if (eVar != null && this.f81306f) {
                eVar.cancel();
            }
            this.f81301a = s9;
            long j4 = this.f81302b;
            if (decrementAndGet() != 0) {
                d();
            }
            if (j4 != 0) {
                s9.request(j4);
                return;
            }
            return;
        }
        e andSet = this.f81303c.getAndSet(s9);
        if (andSet != null && this.f81306f) {
            andSet.cancel();
        }
        c();
    }
}
