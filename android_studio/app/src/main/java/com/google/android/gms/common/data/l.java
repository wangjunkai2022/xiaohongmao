package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.u;
import java.util.NoSuchElementException;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class l<T> extends c<T> {

    /* renamed from: c  reason: collision with root package name */
    private T f28991c;

    public l(@NonNull b<T> bVar) {
        super(bVar);
    }

    @Override // com.google.android.gms.common.data.c, java.util.Iterator
    @NonNull
    public final T next() {
        if (hasNext()) {
            int i4 = this.f28980b + 1;
            this.f28980b = i4;
            if (i4 == 0) {
                T t9 = (T) u.k(this.f28979a.get(0));
                this.f28991c = t9;
                if (!(t9 instanceof f)) {
                    String valueOf = String.valueOf(t9.getClass());
                    StringBuilder sb = new StringBuilder(valueOf.length() + 44);
                    sb.append("DataBuffer reference of type ");
                    sb.append(valueOf);
                    sb.append(" is not movable");
                    throw new IllegalStateException(sb.toString());
                }
            } else {
                ((f) u.k(this.f28991c)).n(this.f28980b);
            }
            return this.f28991c;
        }
        int i10 = this.f28980b;
        StringBuilder sb2 = new StringBuilder(46);
        sb2.append("Cannot advance the iterator beyond ");
        sb2.append(i10);
        throw new NoSuchElementException(sb2.toString());
    }
}
