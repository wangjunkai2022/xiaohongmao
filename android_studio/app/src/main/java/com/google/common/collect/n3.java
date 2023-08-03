package com.google.common.collect;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NullsFirstOrdering.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
public final class n3<T> extends s3<T> implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f33752d = 0;

    /* renamed from: c  reason: collision with root package name */
    final s3<? super T> f33753c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n3(s3<? super T> s3Var) {
        this.f33753c = s3Var;
    }

    @Override // com.google.common.collect.s3
    public <S extends T> s3<S> C() {
        return this;
    }

    @Override // com.google.common.collect.s3
    public <S extends T> s3<S> D() {
        return this.f33753c.D();
    }

    @Override // com.google.common.collect.s3
    public <S extends T> s3<S> G() {
        return this.f33753c.G().D();
    }

    @Override // com.google.common.collect.s3, java.util.Comparator
    public int compare(@NullableDecl T t9, @NullableDecl T t10) {
        if (t9 == t10) {
            return 0;
        }
        if (t9 == null) {
            return -1;
        }
        if (t10 == null) {
            return 1;
        }
        return this.f33753c.compare(t9, t10);
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof n3) {
            return this.f33753c.equals(((n3) obj).f33753c);
        }
        return false;
    }

    public int hashCode() {
        return this.f33753c.hashCode() ^ 957692532;
    }

    public String toString() {
        return this.f33753c + ".nullsFirst()";
    }
}
