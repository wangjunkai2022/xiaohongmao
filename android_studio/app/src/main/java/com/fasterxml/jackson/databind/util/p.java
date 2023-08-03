package com.fasterxml.jackson.databind.util;

/* compiled from: PrimitiveArrayBuilder.java */
/* loaded from: classes2.dex */
public abstract class p<T> {

    /* renamed from: e  reason: collision with root package name */
    static final int f16039e = 12;

    /* renamed from: f  reason: collision with root package name */
    static final int f16040f = 16384;

    /* renamed from: g  reason: collision with root package name */
    static final int f16041g = 262144;

    /* renamed from: a  reason: collision with root package name */
    protected T f16042a;

    /* renamed from: b  reason: collision with root package name */
    protected a<T> f16043b;

    /* renamed from: c  reason: collision with root package name */
    protected a<T> f16044c;

    /* renamed from: d  reason: collision with root package name */
    protected int f16045d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PrimitiveArrayBuilder.java */
    /* loaded from: classes2.dex */
    public static final class a<T> {

        /* renamed from: a  reason: collision with root package name */
        final T f16046a;

        /* renamed from: b  reason: collision with root package name */
        final int f16047b;

        /* renamed from: c  reason: collision with root package name */
        a<T> f16048c;

        public a(T t9, int i4) {
            this.f16046a = t9;
            this.f16047b = i4;
        }

        public int a(T t9, int i4) {
            System.arraycopy(this.f16046a, 0, t9, i4, this.f16047b);
            return i4 + this.f16047b;
        }

        public T b() {
            return this.f16046a;
        }

        public void c(a<T> aVar) {
            if (this.f16048c == null) {
                this.f16048c = aVar;
                return;
            }
            throw new IllegalStateException();
        }

        public a<T> d() {
            return this.f16048c;
        }
    }

    protected abstract T a(int i4);

    protected void b() {
        a<T> aVar = this.f16044c;
        if (aVar != null) {
            this.f16042a = aVar.b();
        }
        this.f16044c = null;
        this.f16043b = null;
        this.f16045d = 0;
    }

    public final T c(T t9, int i4) {
        a<T> aVar = new a<>(t9, i4);
        if (this.f16043b == null) {
            this.f16044c = aVar;
            this.f16043b = aVar;
        } else {
            this.f16044c.c(aVar);
            this.f16044c = aVar;
        }
        this.f16045d += i4;
        return a(i4 < 16384 ? i4 + i4 : i4 + (i4 >> 2));
    }

    public int d() {
        return this.f16045d;
    }

    public T e(T t9, int i4) {
        int i10 = this.f16045d + i4;
        T a10 = a(i10);
        int i11 = 0;
        for (a<T> aVar = this.f16043b; aVar != null; aVar = aVar.d()) {
            i11 = aVar.a(a10, i11);
        }
        System.arraycopy(t9, 0, a10, i11, i4);
        int i12 = i11 + i4;
        if (i12 == i10) {
            return a10;
        }
        throw new IllegalStateException("Should have gotten " + i10 + " entries, got " + i12);
    }

    public T f() {
        b();
        T t9 = this.f16042a;
        return t9 == null ? a(12) : t9;
    }
}
