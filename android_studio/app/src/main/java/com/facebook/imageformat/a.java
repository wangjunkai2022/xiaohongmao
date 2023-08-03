package com.facebook.imageformat;

import com.coremedia.iso.boxes.s;
import com.facebook.common.internal.h;
import com.facebook.common.internal.j;
import com.facebook.imageformat.c;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DefaultImageFormatChecker.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a implements c.a {

    /* renamed from: c  reason: collision with root package name */
    private static final int f11776c = 20;

    /* renamed from: d  reason: collision with root package name */
    private static final int f11777d = 21;

    /* renamed from: e  reason: collision with root package name */
    private static final byte[] f11778e;

    /* renamed from: f  reason: collision with root package name */
    private static final int f11779f;

    /* renamed from: g  reason: collision with root package name */
    private static final byte[] f11780g;

    /* renamed from: h  reason: collision with root package name */
    private static final int f11781h;

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f11782i;

    /* renamed from: j  reason: collision with root package name */
    private static final byte[] f11783j;

    /* renamed from: k  reason: collision with root package name */
    private static final int f11784k = 6;

    /* renamed from: l  reason: collision with root package name */
    private static final byte[] f11785l;

    /* renamed from: m  reason: collision with root package name */
    private static final int f11786m;

    /* renamed from: n  reason: collision with root package name */
    private static final byte[] f11787n;

    /* renamed from: o  reason: collision with root package name */
    private static final int f11788o;

    /* renamed from: p  reason: collision with root package name */
    private static final byte[] f11789p;

    /* renamed from: q  reason: collision with root package name */
    private static final byte[][] f11790q;

    /* renamed from: r  reason: collision with root package name */
    private static final int f11791r = 12;

    /* renamed from: s  reason: collision with root package name */
    private static final byte[] f11792s;

    /* renamed from: t  reason: collision with root package name */
    private static final byte[] f11793t;

    /* renamed from: u  reason: collision with root package name */
    private static final int f11794u;

    /* renamed from: a  reason: collision with root package name */
    final int f11795a = h.a(21, 20, f11779f, f11781h, 6, f11786m, f11788o, 12);

    /* renamed from: b  reason: collision with root package name */
    private boolean f11796b = false;

    static {
        byte[] bArr = {-1, -40, -1};
        f11778e = bArr;
        f11779f = bArr.length;
        byte[] bArr2 = {-119, 80, 78, 71, com.google.common.base.c.f32108o, 10, com.google.common.base.c.D, 10};
        f11780g = bArr2;
        f11781h = bArr2.length;
        f11782i = e.a("GIF87a");
        f11783j = e.a("GIF89a");
        byte[] a10 = e.a("BM");
        f11785l = a10;
        f11786m = a10.length;
        byte[] bArr3 = {0, 0, 1, 0};
        f11787n = bArr3;
        f11788o = bArr3.length;
        f11789p = e.a(s.f10305q);
        f11790q = new byte[][]{e.a("heic"), e.a("heix"), e.a("hevc"), e.a("hevx"), e.a("mif1"), e.a("msf1")};
        byte[] bArr4 = {73, 73, 42, 0};
        f11792s = bArr4;
        f11793t = new byte[]{77, 77, 0, 42};
        f11794u = bArr4.length;
    }

    private static c c(final byte[] imageHeaderBytes, final int headerSize) {
        j.d(Boolean.valueOf(t0.c.h(imageHeaderBytes, 0, headerSize)));
        if (t0.c.g(imageHeaderBytes, 0)) {
            return b.f11802f;
        }
        if (t0.c.f(imageHeaderBytes, 0)) {
            return b.f11803g;
        }
        if (t0.c.c(imageHeaderBytes, 0, headerSize)) {
            if (t0.c.b(imageHeaderBytes, 0)) {
                return b.f11806j;
            }
            if (t0.c.d(imageHeaderBytes, 0)) {
                return b.f11805i;
            }
            return b.f11804h;
        }
        return c.f11810c;
    }

    private static boolean d(final byte[] imageHeaderBytes, final int headerSize) {
        byte[] bArr = f11785l;
        if (headerSize < bArr.length) {
            return false;
        }
        return e.d(imageHeaderBytes, bArr);
    }

    private static boolean e(final byte[] imageHeaderBytes, final int headerSize) {
        return headerSize >= f11794u && (e.d(imageHeaderBytes, f11792s) || e.d(imageHeaderBytes, f11793t));
    }

    private static boolean f(final byte[] imageHeaderBytes, final int headerSize) {
        if (headerSize < 6) {
            return false;
        }
        return e.d(imageHeaderBytes, f11782i) || e.d(imageHeaderBytes, f11783j);
    }

    private static boolean g(final byte[] imageHeaderBytes, final int headerSize) {
        if (headerSize >= 12 && imageHeaderBytes[3] >= 8 && e.b(imageHeaderBytes, f11789p, 4)) {
            for (byte[] bArr : f11790q) {
                if (e.b(imageHeaderBytes, bArr, 8)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private static boolean h(final byte[] imageHeaderBytes, final int headerSize) {
        byte[] bArr = f11787n;
        if (headerSize < bArr.length) {
            return false;
        }
        return e.d(imageHeaderBytes, bArr);
    }

    private static boolean i(final byte[] imageHeaderBytes, final int headerSize) {
        byte[] bArr = f11778e;
        return headerSize >= bArr.length && e.d(imageHeaderBytes, bArr);
    }

    private static boolean j(final byte[] imageHeaderBytes, final int headerSize) {
        byte[] bArr = f11780g;
        return headerSize >= bArr.length && e.d(imageHeaderBytes, bArr);
    }

    @Override // com.facebook.imageformat.c.a
    @r7.h
    public final c a(byte[] headerBytes, int headerSize) {
        j.i(headerBytes);
        if (!this.f11796b && t0.c.h(headerBytes, 0, headerSize)) {
            return c(headerBytes, headerSize);
        }
        if (i(headerBytes, headerSize)) {
            return b.f11797a;
        }
        if (j(headerBytes, headerSize)) {
            return b.f11798b;
        }
        if (this.f11796b && t0.c.h(headerBytes, 0, headerSize)) {
            return c(headerBytes, headerSize);
        }
        if (f(headerBytes, headerSize)) {
            return b.f11799c;
        }
        if (d(headerBytes, headerSize)) {
            return b.f11800d;
        }
        if (h(headerBytes, headerSize)) {
            return b.f11801e;
        }
        if (g(headerBytes, headerSize)) {
            return b.f11807k;
        }
        if (e(headerBytes, headerSize)) {
            return b.f11808l;
        }
        return c.f11810c;
    }

    @Override // com.facebook.imageformat.c.a
    public int b() {
        return this.f11795a;
    }

    public void k(boolean useNewOrder) {
        this.f11796b = useNewOrder;
    }
}
