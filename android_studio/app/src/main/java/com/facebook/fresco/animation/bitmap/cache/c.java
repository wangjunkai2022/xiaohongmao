package com.facebook.fresco.animation.bitmap.cache;

import android.graphics.Bitmap;
import b1.b;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: KeepLastFrameCache.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class c implements b1.b {

    /* renamed from: d  reason: collision with root package name */
    private static final int f11689d = -1;

    /* renamed from: a  reason: collision with root package name */
    private int f11690a = -1;
    @h

    /* renamed from: b  reason: collision with root package name */
    private b.a f11691b;
    @h
    @s7.a("this")

    /* renamed from: c  reason: collision with root package name */
    private com.facebook.common.references.a<Bitmap> f11692c;

    private synchronized void a() {
        int i4;
        b.a aVar = this.f11691b;
        if (aVar != null && (i4 = this.f11690a) != -1) {
            aVar.b(this, i4);
        }
        com.facebook.common.references.a.k(this.f11692c);
        this.f11692c = null;
        this.f11690a = -1;
    }

    @Override // b1.b
    public synchronized int b() {
        com.facebook.common.references.a<Bitmap> aVar;
        aVar = this.f11692c;
        return aVar == null ? 0 : com.facebook.imageutils.a.g(aVar.q());
    }

    @Override // b1.b
    public void c(int frameNumber, com.facebook.common.references.a<Bitmap> bitmapReference, int frameType) {
    }

    @Override // b1.b
    public synchronized void clear() {
        a();
    }

    @Override // b1.b
    public void d(b.a frameCacheListener) {
        this.f11691b = frameCacheListener;
    }

    @Override // b1.b
    public synchronized void e(int frameNumber, com.facebook.common.references.a<Bitmap> bitmapReference, int frameType) {
        int i4;
        if (bitmapReference != null) {
            if (this.f11692c != null && bitmapReference.q().equals(this.f11692c.q())) {
                return;
            }
        }
        com.facebook.common.references.a.k(this.f11692c);
        b.a aVar = this.f11691b;
        if (aVar != null && (i4 = this.f11690a) != -1) {
            aVar.b(this, i4);
        }
        this.f11692c = com.facebook.common.references.a.h(bitmapReference);
        b.a aVar2 = this.f11691b;
        if (aVar2 != null) {
            aVar2.a(this, frameNumber);
        }
        this.f11690a = frameNumber;
    }

    @Override // b1.b
    @h
    public synchronized com.facebook.common.references.a<Bitmap> f(int frameNumber) {
        return com.facebook.common.references.a.h(this.f11692c);
    }

    @Override // b1.b
    @h
    public synchronized com.facebook.common.references.a<Bitmap> g(int frameNumber, int width, int height) {
        com.facebook.common.references.a<Bitmap> h4;
        h4 = com.facebook.common.references.a.h(this.f11692c);
        a();
        return h4;
    }

    @Override // b1.b
    public synchronized boolean h(int frameNumber) {
        boolean z9;
        if (frameNumber == this.f11690a) {
            z9 = com.facebook.common.references.a.A(this.f11692c);
        }
        return z9;
    }

    @Override // b1.b
    @h
    public synchronized com.facebook.common.references.a<Bitmap> i(int frameNumber) {
        if (this.f11690a == frameNumber) {
            return com.facebook.common.references.a.h(this.f11692c);
        }
        return null;
    }
}
