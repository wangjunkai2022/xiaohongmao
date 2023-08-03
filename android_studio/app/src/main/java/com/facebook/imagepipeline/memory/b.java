package com.facebook.imagepipeline.memory;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BitmapCounter.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b {
    @s7.a("this")

    /* renamed from: a  reason: collision with root package name */
    private int f12556a;
    @s7.a("this")

    /* renamed from: b  reason: collision with root package name */
    private long f12557b;

    /* renamed from: c  reason: collision with root package name */
    private final int f12558c;

    /* renamed from: d  reason: collision with root package name */
    private final int f12559d;

    /* renamed from: e  reason: collision with root package name */
    private final com.facebook.common.references.h<Bitmap> f12560e;

    /* compiled from: BitmapCounter.java */
    /* loaded from: classes.dex */
    class a implements com.facebook.common.references.h<Bitmap> {
        a() {
        }

        @Override // com.facebook.common.references.h
        /* renamed from: a */
        public void release(Bitmap value) {
            try {
                b.this.a(value);
            } finally {
                value.recycle();
            }
        }
    }

    public b(int maxCount, int maxSize) {
        com.facebook.common.internal.j.d(Boolean.valueOf(maxCount > 0));
        com.facebook.common.internal.j.d(Boolean.valueOf(maxSize > 0));
        this.f12558c = maxCount;
        this.f12559d = maxSize;
        this.f12560e = new a();
    }

    public synchronized void a(Bitmap bitmap) {
        int g4 = com.facebook.imageutils.a.g(bitmap);
        com.facebook.common.internal.j.e(this.f12556a > 0, "No bitmaps registered.");
        long j4 = g4;
        com.facebook.common.internal.j.f(j4 <= this.f12557b, "Bitmap size bigger than the total registered size: %d, %d", Integer.valueOf(g4), Long.valueOf(this.f12557b));
        this.f12557b -= j4;
        this.f12556a--;
    }

    public synchronized int b() {
        return this.f12556a;
    }

    public synchronized int c() {
        return this.f12558c;
    }

    public synchronized int d() {
        return this.f12559d;
    }

    public com.facebook.common.references.h<Bitmap> e() {
        return this.f12560e;
    }

    public synchronized long f() {
        return this.f12557b;
    }

    public synchronized boolean g(Bitmap bitmap) {
        int g4 = com.facebook.imageutils.a.g(bitmap);
        int i4 = this.f12556a;
        if (i4 < this.f12558c) {
            long j4 = this.f12557b;
            long j10 = g4;
            if (j4 + j10 <= this.f12559d) {
                this.f12556a = i4 + 1;
                this.f12557b = j4 + j10;
                return true;
            }
        }
        return false;
    }
}
