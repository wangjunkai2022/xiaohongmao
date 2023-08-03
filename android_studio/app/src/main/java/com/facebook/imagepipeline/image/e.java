package com.facebook.imagepipeline.image;

import android.graphics.ColorSpace;
import android.util.Pair;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.m;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.SharedReference;
import com.facebook.imageutils.HeifExifUtil;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: EncodedImage.java */
@s7.b
/* loaded from: classes.dex */
public class e implements Closeable {

    /* renamed from: m  reason: collision with root package name */
    public static final int f12502m = -1;

    /* renamed from: n  reason: collision with root package name */
    public static final int f12503n = -1;

    /* renamed from: o  reason: collision with root package name */
    public static final int f12504o = -1;

    /* renamed from: p  reason: collision with root package name */
    public static final int f12505p = -1;

    /* renamed from: q  reason: collision with root package name */
    public static final int f12506q = 1;

    /* renamed from: r  reason: collision with root package name */
    private static boolean f12507r;
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.common.references.a<PooledByteBuffer> f12508a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private final m<FileInputStream> f12509b;

    /* renamed from: c  reason: collision with root package name */
    private com.facebook.imageformat.c f12510c;

    /* renamed from: d  reason: collision with root package name */
    private int f12511d;

    /* renamed from: e  reason: collision with root package name */
    private int f12512e;

    /* renamed from: f  reason: collision with root package name */
    private int f12513f;

    /* renamed from: g  reason: collision with root package name */
    private int f12514g;

    /* renamed from: h  reason: collision with root package name */
    private int f12515h;

    /* renamed from: i  reason: collision with root package name */
    private int f12516i;
    @r7.h

    /* renamed from: j  reason: collision with root package name */
    private com.facebook.imagepipeline.common.a f12517j;
    @r7.h

    /* renamed from: k  reason: collision with root package name */
    private ColorSpace f12518k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f12519l;

    public e(com.facebook.common.references.a<PooledByteBuffer> pooledByteBufferRef) {
        this.f12510c = com.facebook.imageformat.c.f11810c;
        this.f12511d = -1;
        this.f12512e = 0;
        this.f12513f = -1;
        this.f12514g = -1;
        this.f12515h = 1;
        this.f12516i = -1;
        com.facebook.common.internal.j.d(Boolean.valueOf(com.facebook.common.references.a.A(pooledByteBufferRef)));
        this.f12508a = pooledByteBufferRef.clone();
        this.f12509b = null;
    }

    private void L() {
        Pair<Integer, Integer> b10;
        com.facebook.imageformat.c d4 = com.facebook.imageformat.d.d(A());
        this.f12510c = d4;
        if (com.facebook.imageformat.b.c(d4)) {
            b10 = l0();
        } else {
            b10 = h0().b();
        }
        if (d4 == com.facebook.imageformat.b.f11797a && this.f12511d == -1) {
            if (b10 != null) {
                int b11 = com.facebook.imageutils.c.b(A());
                this.f12512e = b11;
                this.f12511d = com.facebook.imageutils.c.a(b11);
            }
        } else if (d4 == com.facebook.imageformat.b.f11807k && this.f12511d == -1) {
            int a10 = HeifExifUtil.a(A());
            this.f12512e = a10;
            this.f12511d = com.facebook.imageutils.c.a(a10);
        } else if (this.f12511d == -1) {
            this.f12511d = 0;
        }
    }

    public static boolean W(e encodedImage) {
        return encodedImage.f12511d >= 0 && encodedImage.f12513f >= 0 && encodedImage.f12514g >= 0;
    }

    @r7.h
    public static e b(@r7.h e encodedImage) {
        if (encodedImage != null) {
            return encodedImage.a();
        }
        return null;
    }

    @v1.d
    public static boolean b0(@r7.h e encodedImage) {
        return encodedImage != null && encodedImage.X();
    }

    public static void d(@r7.h e encodedImage) {
        if (encodedImage != null) {
            encodedImage.close();
        }
    }

    private void g0() {
        if (this.f12513f < 0 || this.f12514g < 0) {
            d0();
        }
    }

    private com.facebook.imageutils.b h0() {
        InputStream inputStream;
        try {
            inputStream = A();
            try {
                com.facebook.imageutils.b d4 = com.facebook.imageutils.a.d(inputStream);
                this.f12518k = d4.a();
                Pair<Integer, Integer> b10 = d4.b();
                if (b10 != null) {
                    this.f12513f = ((Integer) b10.first).intValue();
                    this.f12514g = ((Integer) b10.second).intValue();
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return d4;
            } catch (Throwable th) {
                th = th;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    @r7.h
    private Pair<Integer, Integer> l0() {
        Pair<Integer, Integer> g4 = com.facebook.imageutils.f.g(A());
        if (g4 != null) {
            this.f12513f = ((Integer) g4.first).intValue();
            this.f12514g = ((Integer) g4.second).intValue();
        }
        return g4;
    }

    public static void u0(boolean useCachedMetadata) {
        f12507r = useCachedMetadata;
    }

    @r7.h
    public InputStream A() {
        m<FileInputStream> mVar = this.f12509b;
        if (mVar != null) {
            return mVar.get();
        }
        com.facebook.common.references.a h4 = com.facebook.common.references.a.h(this.f12508a);
        if (h4 != null) {
            try {
                return new com.facebook.common.memory.h((PooledByteBuffer) h4.q());
            } finally {
                com.facebook.common.references.a.k(h4);
            }
        }
        return null;
    }

    public InputStream D() {
        return (InputStream) com.facebook.common.internal.j.i(A());
    }

    public int E() {
        g0();
        return this.f12511d;
    }

    public int G() {
        return this.f12515h;
    }

    public int H() {
        com.facebook.common.references.a<PooledByteBuffer> aVar = this.f12508a;
        if (aVar != null && aVar.q() != null) {
            return this.f12508a.q().size();
        }
        return this.f12516i;
    }

    @r7.h
    @VisibleForTesting
    public synchronized SharedReference<PooledByteBuffer> I() {
        com.facebook.common.references.a<PooledByteBuffer> aVar;
        aVar = this.f12508a;
        return aVar != null ? aVar.r() : null;
    }

    public int J() {
        g0();
        return this.f12513f;
    }

    protected boolean K() {
        return this.f12519l;
    }

    public boolean M(int length) {
        com.facebook.imageformat.c cVar = this.f12510c;
        if ((cVar == com.facebook.imageformat.b.f11797a || cVar == com.facebook.imageformat.b.f11808l) && this.f12509b == null) {
            com.facebook.common.internal.j.i(this.f12508a);
            PooledByteBuffer q9 = this.f12508a.q();
            return q9.j(length + (-2)) == -1 && q9.j(length - 1) == -39;
        }
        return true;
    }

    public synchronized boolean X() {
        boolean z9;
        if (!com.facebook.common.references.a.A(this.f12508a)) {
            z9 = this.f12509b != null;
        }
        return z9;
    }

    @r7.h
    public e a() {
        e eVar;
        m<FileInputStream> mVar = this.f12509b;
        if (mVar != null) {
            eVar = new e(mVar, this.f12516i);
        } else {
            com.facebook.common.references.a h4 = com.facebook.common.references.a.h(this.f12508a);
            if (h4 == null) {
                eVar = null;
            } else {
                try {
                    eVar = new e(h4);
                } finally {
                    com.facebook.common.references.a.k(h4);
                }
            }
        }
        if (eVar != null) {
            eVar.h(this);
        }
        return eVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.facebook.common.references.a.k(this.f12508a);
    }

    public void d0() {
        if (!f12507r) {
            L();
        } else if (this.f12519l) {
        } else {
            L();
            this.f12519l = true;
        }
    }

    public void h(e encodedImage) {
        this.f12510c = encodedImage.y();
        this.f12513f = encodedImage.J();
        this.f12514g = encodedImage.s();
        this.f12511d = encodedImage.E();
        this.f12512e = encodedImage.q();
        this.f12515h = encodedImage.G();
        this.f12516i = encodedImage.H();
        this.f12517j = encodedImage.k();
        this.f12518k = encodedImage.p();
        this.f12519l = encodedImage.K();
    }

    public com.facebook.common.references.a<PooledByteBuffer> i() {
        return com.facebook.common.references.a.h(this.f12508a);
    }

    @r7.h
    public com.facebook.imagepipeline.common.a k() {
        return this.f12517j;
    }

    public void n0(@r7.h com.facebook.imagepipeline.common.a bytesRange) {
        this.f12517j = bytesRange;
    }

    public void o0(int exifOrientation) {
        this.f12512e = exifOrientation;
    }

    @r7.h
    public ColorSpace p() {
        g0();
        return this.f12518k;
    }

    public void p0(int height) {
        this.f12514g = height;
    }

    public int q() {
        g0();
        return this.f12512e;
    }

    public void q0(com.facebook.imageformat.c imageFormat) {
        this.f12510c = imageFormat;
    }

    public String r(int length) {
        com.facebook.common.references.a<PooledByteBuffer> i4 = i();
        if (i4 == null) {
            return "";
        }
        int min = Math.min(H(), length);
        byte[] bArr = new byte[min];
        try {
            PooledByteBuffer q9 = i4.q();
            if (q9 == null) {
                return "";
            }
            q9.f(0, bArr, 0, min);
            i4.close();
            StringBuilder sb = new StringBuilder(min * 2);
            for (int i10 = 0; i10 < min; i10++) {
                sb.append(String.format("%02X", Byte.valueOf(bArr[i10])));
            }
            return sb.toString();
        } finally {
            i4.close();
        }
    }

    public void r0(int rotationAngle) {
        this.f12511d = rotationAngle;
    }

    public int s() {
        g0();
        return this.f12514g;
    }

    public void s0(int sampleSize) {
        this.f12515h = sampleSize;
    }

    public void t0(int streamSize) {
        this.f12516i = streamSize;
    }

    public void v0(int width) {
        this.f12513f = width;
    }

    public com.facebook.imageformat.c y() {
        g0();
        return this.f12510c;
    }

    public e(m<FileInputStream> inputStreamSupplier) {
        this.f12510c = com.facebook.imageformat.c.f11810c;
        this.f12511d = -1;
        this.f12512e = 0;
        this.f12513f = -1;
        this.f12514g = -1;
        this.f12515h = 1;
        this.f12516i = -1;
        com.facebook.common.internal.j.i(inputStreamSupplier);
        this.f12508a = null;
        this.f12509b = inputStreamSupplier;
    }

    public e(m<FileInputStream> inputStreamSupplier, int streamSize) {
        this(inputStreamSupplier);
        this.f12516i = streamSize;
    }
}
