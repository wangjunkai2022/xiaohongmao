package com.google.common.collect;

import com.google.common.collect.s3;
import java.io.Serializable;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExplicitOrdering.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
public final class t0<T> extends s3<T> implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f33873d = 0;

    /* renamed from: c  reason: collision with root package name */
    final ImmutableMap<T, Integer> f33874c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(List<T> list) {
        this(f3.Q(list));
    }

    private int J(T t9) {
        Integer num = this.f33874c.get(t9);
        if (num != null) {
            return num.intValue();
        }
        throw new s3.c(t9);
    }

    @Override // com.google.common.collect.s3, java.util.Comparator
    public int compare(T t9, T t10) {
        return J(t9) - J(t10);
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof t0) {
            return this.f33874c.equals(((t0) obj).f33874c);
        }
        return false;
    }

    public int hashCode() {
        return this.f33874c.hashCode();
    }

    public String toString() {
        return "Ordering.explicit(" + this.f33874c.keySet() + ")";
    }

    t0(ImmutableMap<T, Integer> immutableMap) {
        this.f33874c = immutableMap;
    }
}
