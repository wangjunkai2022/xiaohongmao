package com.google.android.gms.internal.mlkit_language_id_bundled;

import java.util.NoSuchElementException;

/* compiled from: com.google.mlkit:language-id@@17.0.4 */
/* loaded from: classes2.dex */
abstract class f extends k {

    /* renamed from: a  reason: collision with root package name */
    private final int f30281a;

    /* renamed from: b  reason: collision with root package name */
    private int f30282b;

    /* JADX INFO: Access modifiers changed from: protected */
    public f(int i4, int i10) {
        d.b(i10, i4, "index");
        this.f30281a = i4;
        this.f30282b = i10;
    }

    protected abstract Object a(int i4);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f30282b < this.f30281a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f30282b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (hasNext()) {
            int i4 = this.f30282b;
            this.f30282b = i4 + 1;
            return a(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f30282b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i4 = this.f30282b - 1;
            this.f30282b = i4;
            return a(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f30282b - 1;
    }
}
