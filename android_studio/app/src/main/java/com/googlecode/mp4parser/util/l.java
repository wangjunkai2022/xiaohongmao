package com.googlecode.mp4parser.util;

import java.nio.ByteBuffer;

/* compiled from: Matrix.java */
/* loaded from: classes2.dex */
public class l {

    /* renamed from: j  reason: collision with root package name */
    public static final l f36990j = new l(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: k  reason: collision with root package name */
    public static final l f36991k = new l(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: l  reason: collision with root package name */
    public static final l f36992l = new l(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: m  reason: collision with root package name */
    public static final l f36993m = new l(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: a  reason: collision with root package name */
    double f36994a;

    /* renamed from: b  reason: collision with root package name */
    double f36995b;

    /* renamed from: c  reason: collision with root package name */
    double f36996c;

    /* renamed from: d  reason: collision with root package name */
    double f36997d;

    /* renamed from: e  reason: collision with root package name */
    double f36998e;

    /* renamed from: f  reason: collision with root package name */
    double f36999f;

    /* renamed from: g  reason: collision with root package name */
    double f37000g;

    /* renamed from: h  reason: collision with root package name */
    double f37001h;

    /* renamed from: i  reason: collision with root package name */
    double f37002i;

    public l(double d4, double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17) {
        this.f36994a = d13;
        this.f36995b = d14;
        this.f36996c = d15;
        this.f36997d = d4;
        this.f36998e = d10;
        this.f36999f = d11;
        this.f37000g = d12;
        this.f37001h = d16;
        this.f37002i = d17;
    }

    public static l a(ByteBuffer byteBuffer) {
        return b(com.coremedia.iso.g.d(byteBuffer), com.coremedia.iso.g.d(byteBuffer), com.coremedia.iso.g.c(byteBuffer), com.coremedia.iso.g.d(byteBuffer), com.coremedia.iso.g.d(byteBuffer), com.coremedia.iso.g.c(byteBuffer), com.coremedia.iso.g.d(byteBuffer), com.coremedia.iso.g.d(byteBuffer), com.coremedia.iso.g.c(byteBuffer));
    }

    public static l b(double d4, double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17) {
        return new l(d4, d10, d12, d13, d11, d14, d17, d15, d16);
    }

    public void c(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.b(byteBuffer, this.f36997d);
        com.coremedia.iso.i.b(byteBuffer, this.f36998e);
        com.coremedia.iso.i.a(byteBuffer, this.f36994a);
        com.coremedia.iso.i.b(byteBuffer, this.f36999f);
        com.coremedia.iso.i.b(byteBuffer, this.f37000g);
        com.coremedia.iso.i.a(byteBuffer, this.f36995b);
        com.coremedia.iso.i.b(byteBuffer, this.f37001h);
        com.coremedia.iso.i.b(byteBuffer, this.f37002i);
        com.coremedia.iso.i.a(byteBuffer, this.f36996c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return Double.compare(lVar.f36997d, this.f36997d) == 0 && Double.compare(lVar.f36998e, this.f36998e) == 0 && Double.compare(lVar.f36999f, this.f36999f) == 0 && Double.compare(lVar.f37000g, this.f37000g) == 0 && Double.compare(lVar.f37001h, this.f37001h) == 0 && Double.compare(lVar.f37002i, this.f37002i) == 0 && Double.compare(lVar.f36994a, this.f36994a) == 0 && Double.compare(lVar.f36995b, this.f36995b) == 0 && Double.compare(lVar.f36996c, this.f36996c) == 0;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f36994a);
        long doubleToLongBits2 = Double.doubleToLongBits(this.f36995b);
        long doubleToLongBits3 = Double.doubleToLongBits(this.f36996c);
        long doubleToLongBits4 = Double.doubleToLongBits(this.f36997d);
        long doubleToLongBits5 = Double.doubleToLongBits(this.f36998e);
        long doubleToLongBits6 = Double.doubleToLongBits(this.f36999f);
        long doubleToLongBits7 = Double.doubleToLongBits(this.f37000g);
        long doubleToLongBits8 = Double.doubleToLongBits(this.f37001h);
        long doubleToLongBits9 = Double.doubleToLongBits(this.f37002i);
        return (((((((((((((((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)))) * 31) + ((int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32)))) * 31) + ((int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32)))) * 31) + ((int) (doubleToLongBits6 ^ (doubleToLongBits6 >>> 32)))) * 31) + ((int) (doubleToLongBits7 ^ (doubleToLongBits7 >>> 32)))) * 31) + ((int) (doubleToLongBits8 ^ (doubleToLongBits8 >>> 32)))) * 31) + ((int) (doubleToLongBits9 ^ (doubleToLongBits9 >>> 32)));
    }

    public String toString() {
        if (equals(f36990j)) {
            return "Rotate 0°";
        }
        if (equals(f36991k)) {
            return "Rotate 90°";
        }
        if (equals(f36992l)) {
            return "Rotate 180°";
        }
        if (equals(f36993m)) {
            return "Rotate 270°";
        }
        return "Matrix{u=" + this.f36994a + ", v=" + this.f36995b + ", w=" + this.f36996c + ", a=" + this.f36997d + ", b=" + this.f36998e + ", c=" + this.f36999f + ", d=" + this.f37000g + ", tx=" + this.f37001h + ", ty=" + this.f37002i + '}';
    }
}
