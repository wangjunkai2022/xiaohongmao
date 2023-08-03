package com.google.android.gms.internal.mlkit_common;

import java.util.NoSuchElementException;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
abstract class f extends y {

    /* renamed from: a  reason: collision with root package name */
    private final int f29606a;

    /* renamed from: b  reason: collision with root package name */
    private int f29607b;

    /* JADX INFO: Access modifiers changed from: protected */
    public f(int i4, int i10) {
        d.b(i10, i4, "index");
        this.f29606a = i4;
        this.f29607b = i10;
    }

    protected abstract Object a(int i4);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f29607b < this.f29606a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f29607b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (hasNext()) {
            int i4 = this.f29607b;
            this.f29607b = i4 + 1;
            return a(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f29607b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i4 = this.f29607b - 1;
            this.f29607b = i4;
            return a(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f29607b - 1;
    }
}
