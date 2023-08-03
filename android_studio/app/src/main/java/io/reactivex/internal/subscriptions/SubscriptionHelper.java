package io.reactivex.internal.subscriptions;

import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.util.b;
import io.reactivex.plugins.a;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.e;

/* loaded from: classes4.dex */
public enum SubscriptionHelper implements e {
    CANCELLED;

    public static boolean cancel(AtomicReference<e> atomicReference) {
        e andSet;
        e eVar = atomicReference.get();
        SubscriptionHelper subscriptionHelper = CANCELLED;
        if (eVar == subscriptionHelper || (andSet = atomicReference.getAndSet(subscriptionHelper)) == subscriptionHelper) {
            return false;
        }
        if (andSet != null) {
            andSet.cancel();
            return true;
        }
        return true;
    }

    public static void deferredRequest(AtomicReference<e> atomicReference, AtomicLong atomicLong, long j4) {
        e eVar = atomicReference.get();
        if (eVar != null) {
            eVar.request(j4);
        } else if (validate(j4)) {
            b.a(atomicLong, j4);
            e eVar2 = atomicReference.get();
            if (eVar2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    eVar2.request(andSet);
                }
            }
        }
    }

    public static boolean deferredSetOnce(AtomicReference<e> atomicReference, AtomicLong atomicLong, e eVar) {
        if (setOnce(atomicReference, eVar)) {
            long andSet = atomicLong.getAndSet(0L);
            if (andSet != 0) {
                eVar.request(andSet);
                return true;
            }
            return true;
        }
        return false;
    }

    public static boolean replace(AtomicReference<e> atomicReference, e eVar) {
        e eVar2;
        do {
            eVar2 = atomicReference.get();
            if (eVar2 == CANCELLED) {
                if (eVar != null) {
                    eVar.cancel();
                    return false;
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(eVar2, eVar));
        return true;
    }

    public static void reportMoreProduced(long j4) {
        a.Y(new ProtocolViolationException("More produced than requested: " + j4));
    }

    public static void reportSubscriptionSet() {
        a.Y(new ProtocolViolationException("Subscription already set!"));
    }

    public static boolean set(AtomicReference<e> atomicReference, e eVar) {
        e eVar2;
        do {
            eVar2 = atomicReference.get();
            if (eVar2 == CANCELLED) {
                if (eVar != null) {
                    eVar.cancel();
                    return false;
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(eVar2, eVar));
        if (eVar2 != null) {
            eVar2.cancel();
            return true;
        }
        return true;
    }

    public static boolean setOnce(AtomicReference<e> atomicReference, e eVar) {
        io.reactivex.internal.functions.b.g(eVar, "s is null");
        if (atomicReference.compareAndSet(null, eVar)) {
            return true;
        }
        eVar.cancel();
        if (atomicReference.get() != CANCELLED) {
            reportSubscriptionSet();
            return false;
        }
        return false;
    }

    public static boolean validate(e eVar, e eVar2) {
        if (eVar2 == null) {
            a.Y(new NullPointerException("next is null"));
            return false;
        } else if (eVar != null) {
            eVar2.cancel();
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
    public void request(long j4) {
    }

    public static boolean validate(long j4) {
        if (j4 <= 0) {
            a.Y(new IllegalArgumentException("n > 0 required but it was " + j4));
            return false;
        }
        return true;
    }

    public static boolean setOnce(AtomicReference<e> atomicReference, e eVar, long j4) {
        if (setOnce(atomicReference, eVar)) {
            eVar.request(j4);
            return true;
        }
        return false;
    }
}
