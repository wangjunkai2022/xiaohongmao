package io.reactivex.rxjava3.internal.subscriptions;

import io.reactivex.rxjava3.disposables.f;
import java.util.concurrent.atomic.AtomicReferenceArray;
import org.reactivestreams.e;

/* loaded from: classes4.dex */
public final class ArrayCompositeSubscription extends AtomicReferenceArray<e> implements f {

    /* renamed from: a  reason: collision with root package name */
    private static final long f81275a = 2746389416410565408L;

    public ArrayCompositeSubscription(int capacity) {
        super(capacity);
    }

    @Override // io.reactivex.rxjava3.disposables.f
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

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return get(0) == SubscriptionHelper.CANCELLED;
    }

    public e replaceResource(int index, e resource) {
        e eVar;
        do {
            eVar = get(index);
            if (eVar == SubscriptionHelper.CANCELLED) {
                if (resource != null) {
                    resource.cancel();
                    return null;
                }
                return null;
            }
        } while (!compareAndSet(index, eVar, resource));
        return eVar;
    }

    public boolean setResource(int index, e resource) {
        e eVar;
        do {
            eVar = get(index);
            if (eVar == SubscriptionHelper.CANCELLED) {
                if (resource != null) {
                    resource.cancel();
                    return false;
                }
                return false;
            }
        } while (!compareAndSet(index, eVar, resource));
        if (eVar != null) {
            eVar.cancel();
            return true;
        }
        return true;
    }
}
