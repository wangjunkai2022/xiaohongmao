package io.reactivex.internal.disposables;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes.dex */
public final class ArrayCompositeDisposable extends AtomicReferenceArray<io.reactivex.disposables.c> implements io.reactivex.disposables.c {

    /* renamed from: a  reason: collision with root package name */
    private static final long f71120a = 2746389416410565408L;

    public ArrayCompositeDisposable(int i4) {
        super(i4);
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        io.reactivex.disposables.c andSet;
        if (get(0) != DisposableHelper.DISPOSED) {
            int length = length();
            for (int i4 = 0; i4 < length; i4++) {
                io.reactivex.disposables.c cVar = get(i4);
                DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                if (cVar != disposableHelper && (andSet = getAndSet(i4, disposableHelper)) != disposableHelper && andSet != null) {
                    andSet.dispose();
                }
            }
        }
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return get(0) == DisposableHelper.DISPOSED;
    }

    public io.reactivex.disposables.c replaceResource(int i4, io.reactivex.disposables.c cVar) {
        io.reactivex.disposables.c cVar2;
        do {
            cVar2 = get(i4);
            if (cVar2 == DisposableHelper.DISPOSED) {
                cVar.dispose();
                return null;
            }
        } while (!compareAndSet(i4, cVar2, cVar));
        return cVar2;
    }

    public boolean setResource(int i4, io.reactivex.disposables.c cVar) {
        io.reactivex.disposables.c cVar2;
        do {
            cVar2 = get(i4);
            if (cVar2 == DisposableHelper.DISPOSED) {
                cVar.dispose();
                return false;
            }
        } while (!compareAndSet(i4, cVar2, cVar));
        if (cVar2 != null) {
            cVar2.dispose();
            return true;
        }
        return true;
    }
}
