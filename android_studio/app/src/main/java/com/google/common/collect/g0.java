package com.google.common.collect;

import java.util.Comparator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ComparisonChain.java */
@h3.b
/* loaded from: classes2.dex */
public abstract class g0 {

    /* renamed from: a  reason: collision with root package name */
    private static final g0 f33498a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final g0 f33499b = new b(-1);

    /* renamed from: c  reason: collision with root package name */
    private static final g0 f33500c = new b(1);

    /* compiled from: ComparisonChain.java */
    /* loaded from: classes2.dex */
    static class a extends g0 {
        a() {
            super(null);
        }

        @Override // com.google.common.collect.g0
        public g0 d(double d4, double d10) {
            return o(Double.compare(d4, d10));
        }

        @Override // com.google.common.collect.g0
        public g0 e(float f10, float f11) {
            return o(Float.compare(f10, f11));
        }

        @Override // com.google.common.collect.g0
        public g0 f(int i4, int i10) {
            return o(com.google.common.primitives.f.e(i4, i10));
        }

        @Override // com.google.common.collect.g0
        public g0 g(long j4, long j10) {
            return o(com.google.common.primitives.g.d(j4, j10));
        }

        @Override // com.google.common.collect.g0
        public g0 i(Comparable comparable, Comparable comparable2) {
            return o(comparable.compareTo(comparable2));
        }

        @Override // com.google.common.collect.g0
        public <T> g0 j(@NullableDecl T t9, @NullableDecl T t10, Comparator<T> comparator) {
            return o(comparator.compare(t9, t10));
        }

        @Override // com.google.common.collect.g0
        public g0 k(boolean z9, boolean z10) {
            return o(com.google.common.primitives.a.d(z9, z10));
        }

        @Override // com.google.common.collect.g0
        public g0 l(boolean z9, boolean z10) {
            return o(com.google.common.primitives.a.d(z10, z9));
        }

        @Override // com.google.common.collect.g0
        public int m() {
            return 0;
        }

        g0 o(int i4) {
            return i4 < 0 ? g0.f33499b : i4 > 0 ? g0.f33500c : g0.f33498a;
        }
    }

    /* compiled from: ComparisonChain.java */
    /* loaded from: classes2.dex */
    private static final class b extends g0 {

        /* renamed from: d  reason: collision with root package name */
        final int f33501d;

        b(int i4) {
            super(null);
            this.f33501d = i4;
        }

        @Override // com.google.common.collect.g0
        public g0 d(double d4, double d10) {
            return this;
        }

        @Override // com.google.common.collect.g0
        public g0 e(float f10, float f11) {
            return this;
        }

        @Override // com.google.common.collect.g0
        public g0 f(int i4, int i10) {
            return this;
        }

        @Override // com.google.common.collect.g0
        public g0 g(long j4, long j10) {
            return this;
        }

        @Override // com.google.common.collect.g0
        public g0 i(@NullableDecl Comparable comparable, @NullableDecl Comparable comparable2) {
            return this;
        }

        @Override // com.google.common.collect.g0
        public <T> g0 j(@NullableDecl T t9, @NullableDecl T t10, @NullableDecl Comparator<T> comparator) {
            return this;
        }

        @Override // com.google.common.collect.g0
        public g0 k(boolean z9, boolean z10) {
            return this;
        }

        @Override // com.google.common.collect.g0
        public g0 l(boolean z9, boolean z10) {
            return this;
        }

        @Override // com.google.common.collect.g0
        public int m() {
            return this.f33501d;
        }
    }

    /* synthetic */ g0(a aVar) {
        this();
    }

    public static g0 n() {
        return f33498a;
    }

    public abstract g0 d(double d4, double d10);

    public abstract g0 e(float f10, float f11);

    public abstract g0 f(int i4, int i10);

    public abstract g0 g(long j4, long j10);

    @Deprecated
    public final g0 h(Boolean bool, Boolean bool2) {
        return k(bool.booleanValue(), bool2.booleanValue());
    }

    public abstract g0 i(Comparable<?> comparable, Comparable<?> comparable2);

    public abstract <T> g0 j(@NullableDecl T t9, @NullableDecl T t10, Comparator<T> comparator);

    public abstract g0 k(boolean z9, boolean z10);

    public abstract g0 l(boolean z9, boolean z10);

    public abstract int m();

    private g0() {
    }
}
