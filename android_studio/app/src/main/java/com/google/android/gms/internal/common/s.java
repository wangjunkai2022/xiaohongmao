package com.google.android.gms.internal.common;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
abstract class s<T> implements Iterator<T> {
    @r7.a

    /* renamed from: a  reason: collision with root package name */
    private T f29410a;

    /* renamed from: b  reason: collision with root package name */
    private int f29411b = 2;

    @r7.a
    protected abstract T a();

    /* JADX INFO: Access modifiers changed from: protected */
    @r7.a
    public final T b() {
        this.f29411b = 3;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i4 = this.f29411b;
        if (i4 != 4) {
            int i10 = i4 - 1;
            if (i4 != 0) {
                if (i10 != 0) {
                    if (i10 != 2) {
                        this.f29411b = 4;
                        this.f29410a = a();
                        if (this.f29411b != 3) {
                            this.f29411b = 1;
                            return true;
                        }
                    }
                    return false;
                }
                return true;
            }
            throw null;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f29411b = 2;
            T t9 = this.f29410a;
            this.f29410a = null;
            return t9;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
