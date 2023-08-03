package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;

/* compiled from: MediaPeriodId.java */
/* loaded from: classes2.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    public final Object f25221a;

    /* renamed from: b  reason: collision with root package name */
    public final int f25222b;

    /* renamed from: c  reason: collision with root package name */
    public final int f25223c;

    /* renamed from: d  reason: collision with root package name */
    public final long f25224d;

    /* renamed from: e  reason: collision with root package name */
    public final int f25225e;

    public x(Object obj) {
        this(obj, -1L);
    }

    public x a(Object obj) {
        return this.f25221a.equals(obj) ? this : new x(obj, this.f25222b, this.f25223c, this.f25224d, this.f25225e);
    }

    public x b(long j4) {
        return this.f25224d == j4 ? this : new x(this.f25221a, this.f25222b, this.f25223c, j4, this.f25225e);
    }

    public boolean c() {
        return this.f25222b != -1;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof x) {
            x xVar = (x) obj;
            return this.f25221a.equals(xVar.f25221a) && this.f25222b == xVar.f25222b && this.f25223c == xVar.f25223c && this.f25224d == xVar.f25224d && this.f25225e == xVar.f25225e;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((527 + this.f25221a.hashCode()) * 31) + this.f25222b) * 31) + this.f25223c) * 31) + ((int) this.f25224d)) * 31) + this.f25225e;
    }

    public x(Object obj, long j4) {
        this(obj, -1, -1, j4, -1);
    }

    public x(Object obj, long j4, int i4) {
        this(obj, -1, -1, j4, i4);
    }

    public x(Object obj, int i4, int i10, long j4) {
        this(obj, i4, i10, j4, -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public x(x xVar) {
        this.f25221a = xVar.f25221a;
        this.f25222b = xVar.f25222b;
        this.f25223c = xVar.f25223c;
        this.f25224d = xVar.f25224d;
        this.f25225e = xVar.f25225e;
    }

    private x(Object obj, int i4, int i10, long j4, int i11) {
        this.f25221a = obj;
        this.f25222b = i4;
        this.f25223c = i10;
        this.f25224d = j4;
        this.f25225e = i11;
    }
}
