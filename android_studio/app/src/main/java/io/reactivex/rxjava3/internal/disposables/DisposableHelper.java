package io.reactivex.rxjava3.internal.disposables;

import io.reactivex.rxjava3.disposables.f;
import io.reactivex.rxjava3.exceptions.ProtocolViolationException;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public enum DisposableHelper implements f {
    DISPOSED;

    public static boolean dispose(AtomicReference<f> field) {
        f andSet;
        f fVar = field.get();
        DisposableHelper disposableHelper = DISPOSED;
        if (fVar == disposableHelper || (andSet = field.getAndSet(disposableHelper)) == disposableHelper) {
            return false;
        }
        if (andSet != null) {
            andSet.dispose();
            return true;
        }
        return true;
    }

    public static boolean isDisposed(f d4) {
        return d4 == DISPOSED;
    }

    public static boolean replace(AtomicReference<f> field, f d4) {
        f fVar;
        do {
            fVar = field.get();
            if (fVar == DISPOSED) {
                if (d4 != null) {
                    d4.dispose();
                    return false;
                }
                return false;
            }
        } while (!field.compareAndSet(fVar, d4));
        return true;
    }

    public static void reportDisposableSet() {
        io.reactivex.rxjava3.plugins.a.Y(new ProtocolViolationException("Disposable already set!"));
    }

    public static boolean set(AtomicReference<f> field, f d4) {
        f fVar;
        do {
            fVar = field.get();
            if (fVar == DISPOSED) {
                if (d4 != null) {
                    d4.dispose();
                    return false;
                }
                return false;
            }
        } while (!field.compareAndSet(fVar, d4));
        if (fVar != null) {
            fVar.dispose();
            return true;
        }
        return true;
    }

    public static boolean setOnce(AtomicReference<f> field, f d4) {
        Objects.requireNonNull(d4, "d is null");
        if (field.compareAndSet(null, d4)) {
            return true;
        }
        d4.dispose();
        if (field.get() != DISPOSED) {
            reportDisposableSet();
            return false;
        }
        return false;
    }

    public static boolean trySet(AtomicReference<f> field, f d4) {
        if (field.compareAndSet(null, d4)) {
            return true;
        }
        if (field.get() == DISPOSED) {
            d4.dispose();
            return false;
        }
        return false;
    }

    public static boolean validate(f current, f next) {
        if (next == null) {
            io.reactivex.rxjava3.plugins.a.Y(new NullPointerException("next is null"));
            return false;
        } else if (current != null) {
            next.dispose();
            reportDisposableSet();
            return false;
        } else {
            return true;
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return true;
    }
}
