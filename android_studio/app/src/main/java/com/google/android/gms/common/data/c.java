package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.u;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class c<T> implements Iterator<T> {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    protected final b<T> f28979a;

    /* renamed from: b  reason: collision with root package name */
    protected int f28980b = -1;

    public c(@NonNull b<T> bVar) {
        this.f28979a = (b) u.k(bVar);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f28980b < this.f28979a.getCount() + (-1);
    }

    @Override // java.util.Iterator
    @NonNull
    public T next() {
        if (hasNext()) {
            b<T> bVar = this.f28979a;
            int i4 = this.f28980b + 1;
            this.f28980b = i4;
            return bVar.get(i4);
        }
        int i10 = this.f28980b;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Cannot advance the iterator beyond ");
        sb.append(i10);
        throw new NoSuchElementException(sb.toString());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
