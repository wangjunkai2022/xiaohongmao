package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GeneralRange.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
public final class e2<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final Comparator<? super T> f33306a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f33307b;
    @NullableDecl

    /* renamed from: c  reason: collision with root package name */
    private final T f33308c;

    /* renamed from: d  reason: collision with root package name */
    private final BoundType f33309d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f33310e;
    @NullableDecl

    /* renamed from: f  reason: collision with root package name */
    private final T f33311f;

    /* renamed from: g  reason: collision with root package name */
    private final BoundType f33312g;
    @MonotonicNonNullDecl

    /* renamed from: h  reason: collision with root package name */
    private transient e2<T> f33313h;

    /* JADX WARN: Multi-variable type inference failed */
    private e2(Comparator<? super T> comparator, boolean z9, @NullableDecl T t9, BoundType boundType, boolean z10, @NullableDecl T t10, BoundType boundType2) {
        this.f33306a = (Comparator) com.google.common.base.a0.E(comparator);
        this.f33307b = z9;
        this.f33310e = z10;
        this.f33308c = t9;
        this.f33309d = (BoundType) com.google.common.base.a0.E(boundType);
        this.f33311f = t10;
        this.f33312g = (BoundType) com.google.common.base.a0.E(boundType2);
        if (z9) {
            comparator.compare(t9, t9);
        }
        if (z10) {
            comparator.compare(t10, t10);
        }
        if (z9 && z10) {
            int compare = comparator.compare(t9, t10);
            com.google.common.base.a0.y(compare <= 0, "lowerEndpoint (%s) > upperEndpoint (%s)", t9, t10);
            if (compare == 0) {
                BoundType boundType3 = BoundType.OPEN;
                com.google.common.base.a0.d((boundType != boundType3) | (boundType2 != boundType3));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> e2<T> a(Comparator<? super T> comparator) {
        BoundType boundType = BoundType.OPEN;
        return new e2<>(comparator, false, null, boundType, false, null, boundType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> e2<T> d(Comparator<? super T> comparator, @NullableDecl T t9, BoundType boundType) {
        return new e2<>(comparator, true, t9, boundType, false, null, BoundType.OPEN);
    }

    static <T extends Comparable> e2<T> e(Range<T> range) {
        return new e2<>(s3.B(), range.hasLowerBound(), range.hasLowerBound() ? range.lowerEndpoint() : null, range.hasLowerBound() ? range.lowerBoundType() : BoundType.OPEN, range.hasUpperBound(), range.hasUpperBound() ? range.upperEndpoint() : null, range.hasUpperBound() ? range.upperBoundType() : BoundType.OPEN);
    }

    static <T> e2<T> p(Comparator<? super T> comparator, @NullableDecl T t9, BoundType boundType, @NullableDecl T t10, BoundType boundType2) {
        return new e2<>(comparator, true, t9, boundType, true, t10, boundType2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> e2<T> t(Comparator<? super T> comparator, @NullableDecl T t9, BoundType boundType) {
        return new e2<>(comparator, false, null, BoundType.OPEN, true, t9, boundType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Comparator<? super T> b() {
        return this.f33306a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(@NullableDecl T t9) {
        return (s(t9) || r(t9)) ? false : true;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof e2) {
            e2 e2Var = (e2) obj;
            return this.f33306a.equals(e2Var.f33306a) && this.f33307b == e2Var.f33307b && this.f33310e == e2Var.f33310e && h().equals(e2Var.h()) && j().equals(e2Var.j()) && com.google.common.base.w.a(i(), e2Var.i()) && com.google.common.base.w.a(k(), e2Var.k());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BoundType h() {
        return this.f33309d;
    }

    public int hashCode() {
        return com.google.common.base.w.b(this.f33306a, i(), h(), k(), j());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T i() {
        return this.f33308c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BoundType j() {
        return this.f33312g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T k() {
        return this.f33311f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean l() {
        return this.f33307b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m() {
        return this.f33310e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e2<T> n(e2<T> e2Var) {
        int compare;
        int compare2;
        T t9;
        BoundType boundType;
        BoundType boundType2;
        int compare3;
        BoundType boundType3;
        com.google.common.base.a0.E(e2Var);
        com.google.common.base.a0.d(this.f33306a.equals(e2Var.f33306a));
        boolean z9 = this.f33307b;
        T i4 = i();
        BoundType h4 = h();
        if (!l()) {
            z9 = e2Var.f33307b;
            i4 = e2Var.i();
            h4 = e2Var.h();
        } else if (e2Var.l() && ((compare = this.f33306a.compare(i(), e2Var.i())) < 0 || (compare == 0 && e2Var.h() == BoundType.OPEN))) {
            i4 = e2Var.i();
            h4 = e2Var.h();
        }
        boolean z10 = z9;
        boolean z11 = this.f33310e;
        T k10 = k();
        BoundType j4 = j();
        if (!m()) {
            z11 = e2Var.f33310e;
            k10 = e2Var.k();
            j4 = e2Var.j();
        } else if (e2Var.m() && ((compare2 = this.f33306a.compare(k(), e2Var.k())) > 0 || (compare2 == 0 && e2Var.j() == BoundType.OPEN))) {
            k10 = e2Var.k();
            j4 = e2Var.j();
        }
        boolean z12 = z11;
        T t10 = k10;
        if (z10 && z12 && ((compare3 = this.f33306a.compare(i4, t10)) > 0 || (compare3 == 0 && h4 == (boundType3 = BoundType.OPEN) && j4 == boundType3))) {
            boundType = BoundType.OPEN;
            boundType2 = BoundType.CLOSED;
            t9 = t10;
        } else {
            t9 = i4;
            boundType = h4;
            boundType2 = j4;
        }
        return new e2<>(this.f33306a, z10, t9, boundType, z12, t10, boundType2);
    }

    boolean o() {
        return (m() && s(k())) || (l() && r(i()));
    }

    e2<T> q() {
        e2<T> e2Var = this.f33313h;
        if (e2Var == null) {
            e2<T> e2Var2 = new e2<>(s3.k(this.f33306a).G(), this.f33310e, k(), j(), this.f33307b, i(), h());
            e2Var2.f33313h = this;
            this.f33313h = e2Var2;
            return e2Var2;
        }
        return e2Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean r(@NullableDecl T t9) {
        if (m()) {
            int compare = this.f33306a.compare(t9, k());
            return ((compare == 0) & (j() == BoundType.OPEN)) | (compare > 0);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean s(@NullableDecl T t9) {
        if (l()) {
            int compare = this.f33306a.compare(t9, i());
            return ((compare == 0) & (h() == BoundType.OPEN)) | (compare < 0);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f33306a);
        sb.append(":");
        BoundType boundType = this.f33309d;
        BoundType boundType2 = BoundType.CLOSED;
        sb.append(boundType == boundType2 ? '[' : '(');
        sb.append(this.f33307b ? this.f33308c : "-∞");
        sb.append(',');
        sb.append(this.f33310e ? this.f33311f : "∞");
        sb.append(this.f33312g == boundType2 ? ']' : ')');
        return sb.toString();
    }
}
