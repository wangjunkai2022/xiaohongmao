package io.reactivex.internal.disposables;

import io.reactivex.exceptions.ProtocolViolationException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public enum DisposableHelper implements io.reactivex.disposables.c {
    DISPOSED;

    public static boolean dispose(AtomicReference<io.reactivex.disposables.c> atomicReference) {
        io.reactivex.disposables.c andSet;
        io.reactivex.disposables.c cVar = atomicReference.get();
        DisposableHelper disposableHelper = DISPOSED;
        if (cVar == disposableHelper || (andSet = atomicReference.getAndSet(disposableHelper)) == disposableHelper) {
            return false;
        }
        if (andSet != null) {
            andSet.dispose();
            return true;
        }
        return true;
    }

    public static boolean isDisposed(io.reactivex.disposables.c cVar) {
        return cVar == DISPOSED;
    }

    public static boolean replace(AtomicReference<io.reactivex.disposables.c> atomicReference, io.reactivex.disposables.c cVar) {
        io.reactivex.disposables.c cVar2;
        do {
            cVar2 = atomicReference.get();
            if (cVar2 == DISPOSED) {
                if (cVar != null) {
                    cVar.dispose();
                    return false;
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(cVar2, cVar));
        return true;
    }

    public static void reportDisposableSet() {
        io.reactivex.plugins.a.Y(new ProtocolViolationException("Disposable already set!"));
    }

    public static boolean set(AtomicReference<io.reactivex.disposables.c> atomicReference, io.reactivex.disposables.c cVar) {
        io.reactivex.disposables.c cVar2;
        do {
            cVar2 = atomicReference.get();
            if (cVar2 == DISPOSED) {
                if (cVar != null) {
                    cVar.dispose();
                    return false;
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(cVar2, cVar));
        if (cVar2 != null) {
            cVar2.dispose();
            return true;
        }
        return true;
    }

    public static boolean setOnce(AtomicReference<io.reactivex.disposables.c> atomicReference, io.reactivex.disposables.c cVar) {
        io.reactivex.internal.functions.b.g(cVar, "d is null");
        if (atomicReference.compareAndSet(null, cVar)) {
            return true;
        }
        cVar.dispose();
        if (atomicReference.get() != DISPOSED) {
            reportDisposableSet();
            return false;
        }
        return false;
    }

    public static boolean trySet(AtomicReference<io.reactivex.disposables.c> atomicReference, io.reactivex.disposables.c cVar) {
        if (atomicReference.compareAndSet(null, cVar)) {
            return true;
        }
        if (atomicReference.get() == DISPOSED) {
            cVar.dispose();
            return false;
        }
        return false;
    }

    public static boolean validate(io.reactivex.disposables.c cVar, io.reactivex.disposables.c cVar2) {
        if (cVar2 == null) {
            io.reactivex.plugins.a.Y(new NullPointerException("next is null"));
            return false;
        } else if (cVar != null) {
            cVar2.dispose();
            reportDisposableSet();
            return false;
        } else {
            return true;
        }
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return true;
    }
}
