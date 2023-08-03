package com.google.common.collect;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Count.java */
@h3.b
/* loaded from: classes2.dex */
final class j0 implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private int f33603a;

    j0(int i4) {
        this.f33603a = i4;
    }

    public void a(int i4) {
        this.f33603a += i4;
    }

    public int b(int i4) {
        int i10 = this.f33603a + i4;
        this.f33603a = i10;
        return i10;
    }

    public int c() {
        return this.f33603a;
    }

    public int d(int i4) {
        int i10 = this.f33603a;
        this.f33603a = i4;
        return i10;
    }

    public void e(int i4) {
        this.f33603a = i4;
    }

    public boolean equals(@NullableDecl Object obj) {
        return (obj instanceof j0) && ((j0) obj).f33603a == this.f33603a;
    }

    public int hashCode() {
        return this.f33603a;
    }

    public String toString() {
        return Integer.toString(this.f33603a);
    }
}
