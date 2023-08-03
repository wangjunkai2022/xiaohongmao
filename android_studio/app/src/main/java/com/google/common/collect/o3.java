package com.google.common.collect;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NullsLastOrdering.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
public final class o3<T> extends s3<T> implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f33770d = 0;

    /* renamed from: c  reason: collision with root package name */
    final s3<? super T> f33771c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o3(s3<? super T> s3Var) {
        this.f33771c = s3Var;
    }

    @Override // com.google.common.collect.s3
    public <S extends T> s3<S> C() {
        return this.f33771c.C();
    }

    @Override // com.google.common.collect.s3
    public <S extends T> s3<S> D() {
        return this;
    }

    @Override // com.google.common.collect.s3
    public <S extends T> s3<S> G() {
        return this.f33771c.G().C();
    }

    @Override // com.google.common.collect.s3, java.util.Comparator
    public int compare(@NullableDecl T t9, @NullableDecl T t10) {
        if (t9 == t10) {
            return 0;
        }
        if (t9 == null) {
            return 1;
        }
        if (t10 == null) {
            return -1;
        }
        return this.f33771c.compare(t9, t10);
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof o3) {
            return this.f33771c.equals(((o3) obj).f33771c);
        }
        return false;
    }

    public int hashCode() {
        return this.f33771c.hashCode() ^ (-921210296);
    }

    public String toString() {
        return this.f33771c + ".nullsLast()";
    }
}
