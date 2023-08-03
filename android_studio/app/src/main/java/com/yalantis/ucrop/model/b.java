package com.yalantis.ucrop.model;

/* compiled from: ExifInfo.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private int f61072a;

    /* renamed from: b  reason: collision with root package name */
    private int f61073b;

    /* renamed from: c  reason: collision with root package name */
    private int f61074c;

    public b(int i4, int i10, int i11) {
        this.f61072a = i4;
        this.f61073b = i10;
        this.f61074c = i11;
    }

    public int a() {
        return this.f61073b;
    }

    public int b() {
        return this.f61072a;
    }

    public int c() {
        return this.f61074c;
    }

    public void d(int i4) {
        this.f61073b = i4;
    }

    public void e(int i4) {
        this.f61072a = i4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f61072a == bVar.f61072a && this.f61073b == bVar.f61073b && this.f61074c == bVar.f61074c;
    }

    public void f(int i4) {
        this.f61074c = i4;
    }

    public int hashCode() {
        return (((this.f61072a * 31) + this.f61073b) * 31) + this.f61074c;
    }
}
