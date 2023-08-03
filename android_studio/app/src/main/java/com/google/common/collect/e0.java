package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComparatorOrdering.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
public final class e0<T> extends s3<T> implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f33304d = 0;

    /* renamed from: c  reason: collision with root package name */
    final Comparator<T> f33305c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(Comparator<T> comparator) {
        this.f33305c = (Comparator) com.google.common.base.a0.E(comparator);
    }

    @Override // com.google.common.collect.s3, java.util.Comparator
    public int compare(T t9, T t10) {
        return this.f33305c.compare(t9, t10);
    }

    @Override // java.util.Comparator
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e0) {
            return this.f33305c.equals(((e0) obj).f33305c);
        }
        return false;
    }

    public int hashCode() {
        return this.f33305c.hashCode();
    }

    public String toString() {
        return this.f33305c.toString();
    }
}
