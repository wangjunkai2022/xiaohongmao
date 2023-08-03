package io.reactivex.internal.subscriptions;

import io.reactivex.disposables.c;
import java.util.concurrent.atomic.AtomicReferenceArray;
import org.reactivestreams.e;

/* loaded from: classes4.dex */
public final class ArrayCompositeSubscription extends AtomicReferenceArray<e> implements c {

    /* renamed from: a  reason: collision with root package name */
    private static final long f75860a = 2746389416410565408L;

    public ArrayCompositeSubscription(int i4) {
        super(i4);
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        e andSet;
        if (get(0) != SubscriptionHelper.CANCELLED) {
            int length = length();
            for (int i4 = 0; i4 < length; i4++) {
                e eVar = get(i4);
                SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
                if (eVar != subscriptionHelper && (andSet = getAndSet(i4, subscriptionHelper)) != subscriptionHelper && andSet != null) {
                    andSet.cancel();
                }
            }
        }
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return get(0) == SubscriptionHelper.CANCELLED;
    }

    public e replaceResource(int i4, e eVar) {
        e eVar2;
        do {
            eVar2 = get(i4);
            if (eVar2 == SubscriptionHelper.CANCELLED) {
                if (eVar != null) {
                    eVar.cancel();
                    return null;
                }
                return null;
            }
        } while (!compareAndSet(i4, eVar2, eVar));
        return eVar2;
    }

    public boolean setResource(int i4, e eVar) {
        e eVar2;
        do {
            eVar2 = get(i4);
            if (eVar2 == SubscriptionHelper.CANCELLED) {
                if (eVar != null) {
                    eVar.cancel();
                    return false;
                }
                return false;
            }
        } while (!compareAndSet(i4, eVar2, eVar));
        if (eVar2 != null) {
            eVar2.cancel();
            return true;
        }
        return true;
    }
}
