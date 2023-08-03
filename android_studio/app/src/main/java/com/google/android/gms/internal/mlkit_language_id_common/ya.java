package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.NoSuchElementException;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
abstract class ya extends h {

    /* renamed from: a  reason: collision with root package name */
    private final int f31040a;

    /* renamed from: b  reason: collision with root package name */
    private int f31041b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ya(int i4, int i10) {
        g9.b(i10, i4, "index");
        this.f31040a = i4;
        this.f31041b = i10;
    }

    protected abstract Object a(int i4);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f31041b < this.f31040a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f31041b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (hasNext()) {
            int i4 = this.f31041b;
            this.f31041b = i4 + 1;
            return a(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f31041b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i4 = this.f31041b - 1;
            this.f31041b = i4;
            return a(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f31041b - 1;
    }
}
