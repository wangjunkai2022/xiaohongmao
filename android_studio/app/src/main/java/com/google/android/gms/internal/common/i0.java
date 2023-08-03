package com.google.android.gms.internal.common;

import java.util.NoSuchElementException;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
abstract class i0<E> extends j<E> {

    /* renamed from: a  reason: collision with root package name */
    private final int f29404a;

    /* renamed from: b  reason: collision with root package name */
    private int f29405b;

    /* JADX INFO: Access modifiers changed from: protected */
    public i0(int i4, int i10) {
        b0.b(i10, i4, "index");
        this.f29404a = i4;
        this.f29405b = i10;
    }

    protected abstract E a(int i4);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f29405b < this.f29404a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f29405b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i4 = this.f29405b;
            this.f29405b = i4 + 1;
            return a(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f29405b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i4 = this.f29405b - 1;
            this.f29405b = i4;
            return a(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f29405b - 1;
    }
}
