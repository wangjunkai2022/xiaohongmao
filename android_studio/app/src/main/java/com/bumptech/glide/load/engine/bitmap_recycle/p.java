package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.NavigableMap;

/* compiled from: SizeStrategy.java */
@RequiresApi(19)
/* loaded from: classes.dex */
final class p implements l {

    /* renamed from: d  reason: collision with root package name */
    private static final int f8677d = 8;

    /* renamed from: a  reason: collision with root package name */
    private final b f8678a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final h<a, Bitmap> f8679b = new h<>();

    /* renamed from: c  reason: collision with root package name */
    private final NavigableMap<Integer, Integer> f8680c = new n();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SizeStrategy.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class a implements m {

        /* renamed from: a  reason: collision with root package name */
        private final b f8681a;

        /* renamed from: b  reason: collision with root package name */
        int f8682b;

        a(b bVar) {
            this.f8681a = bVar;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.m
        public void a() {
            this.f8681a.c(this);
        }

        public void b(int i4) {
            this.f8682b = i4;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && this.f8682b == ((a) obj).f8682b;
        }

        public int hashCode() {
            return this.f8682b;
        }

        public String toString() {
            return p.g(this.f8682b);
        }
    }

    /* compiled from: SizeStrategy.java */
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

        public a e(int i4) {
            a aVar = (a) super.b();
            aVar.b(i4);
            return aVar;
        }
    }

    p() {
    }

    private void f(Integer num) {
        Integer num2 = (Integer) this.f8680c.get(num);
        if (num2.intValue() == 1) {
            this.f8680c.remove(num);
        } else {
            this.f8680c.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    static String g(int i4) {
        return "[" + i4 + "]";
    }

    private static String h(Bitmap bitmap) {
        return g(com.bumptech.glide.util.o.h(bitmap));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public String a(Bitmap bitmap) {
        return h(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public String b(int i4, int i10, Bitmap.Config config) {
        return g(com.bumptech.glide.util.o.g(i4, i10, config));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public int c(Bitmap bitmap) {
        return com.bumptech.glide.util.o.h(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    public void d(Bitmap bitmap) {
        a e4 = this.f8678a.e(com.bumptech.glide.util.o.h(bitmap));
        this.f8679b.d(e4, bitmap);
        Integer num = (Integer) this.f8680c.get(Integer.valueOf(e4.f8682b));
        this.f8680c.put(Integer.valueOf(e4.f8682b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    @Nullable
    public Bitmap e(int i4, int i10, Bitmap.Config config) {
        int g4 = com.bumptech.glide.util.o.g(i4, i10, config);
        a e4 = this.f8678a.e(g4);
        Integer ceilingKey = this.f8680c.ceilingKey(Integer.valueOf(g4));
        if (ceilingKey != null && ceilingKey.intValue() != g4 && ceilingKey.intValue() <= g4 * 8) {
            this.f8678a.c(e4);
            e4 = this.f8678a.e(ceilingKey.intValue());
        }
        Bitmap a10 = this.f8679b.a(e4);
        if (a10 != null) {
            a10.reconfigure(i4, i10, config);
            f(ceilingKey);
        }
        return a10;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
    @Nullable
    public Bitmap removeLast() {
        Bitmap f10 = this.f8679b.f();
        if (f10 != null) {
            f(Integer.valueOf(com.bumptech.glide.util.o.h(f10)));
        }
        return f10;
    }

    public String toString() {
        return "SizeStrategy:\n  " + this.f8679b + "\n  SortedSizes" + this.f8680c;
    }
}
