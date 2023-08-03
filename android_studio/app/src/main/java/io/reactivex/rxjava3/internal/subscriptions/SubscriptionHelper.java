package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.exceptions.ProtocolViolationException;
import io.reactivex.rxjava3.internal.util.b;
import io.reactivex.rxjava3.plugins.a;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.e;

/* loaded from: classes4.dex */
public enum SubscriptionHelper implements e {
    CANCELLED;

    public static boolean cancel(AtomicReference<e> field) {
        e andSet;
        e eVar = field.get();
        SubscriptionHelper subscriptionHelper = CANCELLED;
        if (eVar == subscriptionHelper || (andSet = field.getAndSet(subscriptionHelper)) == subscriptionHelper) {
            return false;
        }
        if (andSet != null) {
            andSet.cancel();
            return true;
        }
        return true;
    }

    public static void deferredRequest(AtomicReference<e> field, AtomicLong requested, long n9) {
        e eVar = field.get();
        if (eVar != null) {
            eVar.request(n9);
        } else if (validate(n9)) {
            b.a(requested, n9);
            e eVar2 = field.get();
            if (eVar2 != null) {
                long andSet = requested.getAndSet(0L);
                if (andSet != 0) {
                    eVar2.request(andSet);
                }
            }
        }
    }

    public static boolean deferredSetOnce(AtomicReference<e> field, AtomicLong requested, e s9) {
        if (setOnce(field, s9)) {
            long andSet = requested.getAndSet(0L);
            if (andSet != 0) {
                s9.request(andSet);
                return true;
            }
            return true;
        }
        return false;
    }

    public static boolean replace(AtomicReference<e> field, e s9) {
        e eVar;
        do {
            eVar = field.get();
            if (eVar == CANCELLED) {
                if (s9 != null) {
                    s9.cancel();
                    return false;
                }
                return false;
            }
        } while (!field.compareAndSet(eVar, s9));
        return true;
    }

    public static void reportMoreProduced(long n9) {
        a.Y(new ProtocolViolationException("More produced than requested: " + n9));
    }

    public static void reportSubscriptionSet() {
        a.Y(new ProtocolViolationException("Subscription already set!"));
    }

    public static boolean set(AtomicReference<e> field, e s9) {
        e eVar;
        do {
            eVar = field.get();
            if (eVar == CANCELLED) {
                if (s9 != null) {
                    s9.cancel();
                    return false;
                }
                return false;
            }
        } while (!field.compareAndSet(eVar, s9));
        if (eVar != null) {
            eVar.cancel();
            return true;
        }
        return true;
    }

    public static boolean setOnce(AtomicReference<e> field, e s9) {
        Objects.requireNonNull(s9, "s is null");
        if (field.compareAndSet(null, s9)) {
            return true;
        }
        s9.cancel();
        if (field.get() != CANCELLED) {
            reportSubscriptionSet();
            return false;
        }
        return false;
    }

    public static boolean validate(e current, e next) {
        if (next == null) {
            a.Y(new NullPointerException("next is null"));
            return false;
        } else if (current != null) {
            next.cancel();
            reportSubscriptionSet();
            return false;
        } else {
            return true;
        }
    }

    @Override // org.reactivestreams.e
    public void cancel() {
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
    }

    public static boolean validate(long n9) {
        if (n9 <= 0) {
            a.Y(new IllegalArgumentException("n > 0 required but it was " + n9));
            return false;
        }
        return true;
    }

    public static boolean setOnce(AtomicReference<e> field, e s9, long request) {
        if (setOnce(field, s9)) {
            s9.request(request);
            return true;
        }
        return false;
    }
}
