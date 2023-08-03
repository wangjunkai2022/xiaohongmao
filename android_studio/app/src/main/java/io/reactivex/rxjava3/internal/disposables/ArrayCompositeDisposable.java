package io.reactivex.rxjava3.internal.disposables;

import io.reactivex.rxjava3.disposables.f;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes4.dex */
public final class ArrayCompositeDisposable extends AtomicReferenceArray<f> implements f {

    /* renamed from: a  reason: collision with root package name */
    private static final long f76173a = 2746389416410565408L;

    public ArrayCompositeDisposable(int capacity) {
        super(capacity);
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        f andSet;
        if (get(0) != DisposableHelper.DISPOSED) {
            int length = length();
            for (int i4 = 0; i4 < length; i4++) {
                f fVar = get(i4);
                DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                if (fVar != disposableHelper && (andSet = getAndSet(i4, disposableHelper)) != disposableHelper && andSet != null) {
                    andSet.dispose();
                }
            }
        }
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return get(0) == DisposableHelper.DISPOSED;
    }

    public f replaceResource(int index, f resource) {
        f fVar;
        do {
            fVar = get(index);
            if (fVar == DisposableHelper.DISPOSED) {
                resource.dispose();
                return null;
            }
        } while (!compareAndSet(index, fVar, resource));
        return fVar;
    }

    public boolean setResource(int index, f resource) {
        f fVar;
        do {
            fVar = get(index);
            if (fVar == DisposableHelper.DISPOSED) {
                resource.dispose();
                return false;
            }
        } while (!compareAndSet(index, fVar, resource));
        if (fVar != null) {
            fVar.dispose();
            return true;
        }
        return true;
    }
}
