package io.reactivex.internal.util;

import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: EndConsumerHelper.java */
/* loaded from: classes4.dex */
public final class f {
    private f() {
        throw new IllegalStateException("No instances!");
    }

    public static String a(String str) {
        return "It is not allowed to subscribe with a(n) " + str + " multiple times. Please create a fresh instance of " + str + " and subscribe that to the target source instead.";
    }

    public static void b(Class<?> cls) {
        io.reactivex.plugins.a.Y(new ProtocolViolationException(a(cls.getName())));
    }

    public static boolean c(AtomicReference<io.reactivex.disposables.c> atomicReference, io.reactivex.disposables.c cVar, Class<?> cls) {
        io.reactivex.internal.functions.b.g(cVar, "next is null");
        if (atomicReference.compareAndSet(null, cVar)) {
            return true;
        }
        cVar.dispose();
        if (atomicReference.get() != DisposableHelper.DISPOSED) {
            b(cls);
            return false;
        }
        return false;
    }

    public static boolean d(AtomicReference<org.reactivestreams.e> atomicReference, org.reactivestreams.e eVar, Class<?> cls) {
        io.reactivex.internal.functions.b.g(eVar, "next is null");
        if (atomicReference.compareAndSet(null, eVar)) {
            return true;
        }
        eVar.cancel();
        if (atomicReference.get() != SubscriptionHelper.CANCELLED) {
            b(cls);
            return false;
        }
        return false;
    }

    public static boolean e(io.reactivex.disposables.c cVar, io.reactivex.disposables.c cVar2, Class<?> cls) {
        io.reactivex.internal.functions.b.g(cVar2, "next is null");
        if (cVar != null) {
            cVar2.dispose();
            if (cVar != DisposableHelper.DISPOSED) {
                b(cls);
                return false;
            }
            return false;
        }
        return true;
    }

    public static boolean f(org.reactivestreams.e eVar, org.reactivestreams.e eVar2, Class<?> cls) {
        io.reactivex.internal.functions.b.g(eVar2, "next is null");
        if (eVar != null) {
            eVar2.cancel();
            if (eVar != SubscriptionHelper.CANCELLED) {
                b(cls);
                return false;
            }
            return false;
        }
        return true;
    }
}
