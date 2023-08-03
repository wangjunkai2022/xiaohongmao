package com.facebook.imagepipeline.image;

import android.graphics.Bitmap;

/* compiled from: CloseableStaticBitmap.java */
@s7.d
/* loaded from: classes.dex */
public class d extends b implements com.facebook.common.references.d {
    @s7.a("this")

    /* renamed from: d  reason: collision with root package name */
    private com.facebook.common.references.a<Bitmap> f12497d;

    /* renamed from: e  reason: collision with root package name */
    private volatile Bitmap f12498e;

    /* renamed from: f  reason: collision with root package name */
    private final j f12499f;

    /* renamed from: g  reason: collision with root package name */
    private final int f12500g;

    /* renamed from: h  reason: collision with root package name */
    private final int f12501h;

    public d(Bitmap bitmap, com.facebook.common.references.h<Bitmap> resourceReleaser, j qualityInfo, int rotationAngle) {
        this(bitmap, resourceReleaser, qualityInfo, rotationAngle, 0);
    }

    private synchronized com.facebook.common.references.a<Bitmap> r() {
        com.facebook.common.references.a<Bitmap> aVar;
        aVar = this.f12497d;
        this.f12497d = null;
        this.f12498e = null;
        return aVar;
    }

    private static int s(@r7.h Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getHeight();
    }

    private static int y(@r7.h Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getWidth();
    }

    public int A() {
        return this.f12501h;
    }

    public int D() {
        return this.f12500g;
    }

    @Override // com.facebook.imagepipeline.image.c, com.facebook.imagepipeline.image.g
    public j a() {
        return this.f12499f;
    }

    @Override // com.facebook.imagepipeline.image.c
    public int b() {
        return com.facebook.imageutils.a.g(this.f12498e);
    }

    @Override // com.facebook.imagepipeline.image.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.facebook.common.references.a<Bitmap> r9 = r();
        if (r9 != null) {
            r9.close();
        }
    }

    @Override // com.facebook.imagepipeline.image.g
    public int getHeight() {
        int i4;
        if (this.f12500g % com.facebook.imagepipeline.common.e.f12205e == 0 && (i4 = this.f12501h) != 5 && i4 != 7) {
            return s(this.f12498e);
        }
        return y(this.f12498e);
    }

    @Override // com.facebook.imagepipeline.image.g
    public int getWidth() {
        int i4;
        if (this.f12500g % com.facebook.imagepipeline.common.e.f12205e == 0 && (i4 = this.f12501h) != 5 && i4 != 7) {
            return y(this.f12498e);
        }
        return s(this.f12498e);
    }

    @Override // com.facebook.imagepipeline.image.c
    public synchronized boolean isClosed() {
        return this.f12497d == null;
    }

    @Override // com.facebook.imagepipeline.image.b
    public Bitmap k() {
        return this.f12498e;
    }

    @r7.h
    public synchronized com.facebook.common.references.a<Bitmap> p() {
        return com.facebook.common.references.a.h(this.f12497d);
    }

    public synchronized com.facebook.common.references.a<Bitmap> q() {
        com.facebook.common.internal.j.j(this.f12497d, "Cannot convert a closed static bitmap");
        return r();
    }

    public d(Bitmap bitmap, com.facebook.common.references.h<Bitmap> resourceReleaser, j qualityInfo, int rotationAngle, int exifOrientation) {
        this.f12498e = (Bitmap) com.facebook.common.internal.j.i(bitmap);
        this.f12497d = com.facebook.common.references.a.G(this.f12498e, (com.facebook.common.references.h) com.facebook.common.internal.j.i(resourceReleaser));
        this.f12499f = qualityInfo;
        this.f12500g = rotationAngle;
        this.f12501h = exifOrientation;
    }

    public d(com.facebook.common.references.a<Bitmap> bitmapReference, j qualityInfo, int rotationAngle) {
        this(bitmapReference, qualityInfo, rotationAngle, 0);
    }

    public d(com.facebook.common.references.a<Bitmap> bitmapReference, j qualityInfo, int rotationAngle, int exifOrientation) {
        com.facebook.common.references.a<Bitmap> aVar = (com.facebook.common.references.a) com.facebook.common.internal.j.i(bitmapReference.d());
        this.f12497d = aVar;
        this.f12498e = aVar.q();
        this.f12499f = qualityInfo;
        this.f12500g = rotationAngle;
        this.f12501h = exifOrientation;
    }
}
