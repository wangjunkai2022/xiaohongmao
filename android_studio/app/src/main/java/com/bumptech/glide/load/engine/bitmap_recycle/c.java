package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import io.sentry.protocol.y;

/* compiled from: AttributeStrategy.java */
/* loaded from: classes.dex */
class c implements l {

    /* renamed from: a  reason: collision with root package name */
    private final b f8623a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final h<a, Bitmap> f8624b = new h<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AttributeStrategy.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a implements m {

        /* renamed from: a  reason: collision with root package name */
        private final b f8625a;

        /* renamed from: b  reason: collision with root package name */
        private int f8626b;

        /* renamed from: c  reason: collision with root package name */
        private int f8627c;

        /* renamed from: d  reason: collision with root package name */
        private Bitmap.Config f8628d;

        public a(b bVar) {
            this.f8625a = bVar;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.m
        public void a() {
            this.f8625a.c(this);
        }

        public void b(int i4, int i10, Bitmap.Config config) {
            this.f8626b = i4;
            this.f8627c = i10;
            this.f8628d = config;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f8626b == aVar.f8626b && this.f8627c == aVar.f8627c && this.f8628d == aVar.f8628d;
            }
            return false;
        }

        public int hashCode() {
            int i4 = ((this.f8626b * 31) + this.f8627c) * 31;
            Bitmap.Config config = this.f8628d;
            return i4 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return c.f(this.f8626b, this.f8627c, this.f8628d);
        }
    }

    /* compiled from: AttributeStrategy.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    static class b extends d<a> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.d
        /* renamed from: d */
        public a a() {
            return new a(this);
        }

        a e(int i4, int i10, Bitmap.Config config) {
            a b10 = b();
            b10.b(i4, i10, config);
            return b10;
        }
    }

    c() {
    }

    static String f(int i4, int i10, Bitmap.Config config) {
        return "[" + i4 + y.b.f83919g + i10 + "], " + config;
    }

    private static String g(Bitmap bitmap) {
        return f(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public String a(Bitmap bitmap) {
        return g(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public String b(int i4, int i10, Bitmap.Config config) {
        return f(i4, i10, config);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public int c(Bitmap bitmap) {
        return com.bumptech.glide.util.o.h(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public void d(Bitmap bitmap) {
        this.f8624b.d(this.f8623a.e(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public Bitmap e(int i4, int i10, Bitmap.Config config) {
        return this.f8624b.a(this.f8623a.e(i4, i10, config));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public Bitmap removeLast() {
        return this.f8624b.f();
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.f8624b;
    }
}
