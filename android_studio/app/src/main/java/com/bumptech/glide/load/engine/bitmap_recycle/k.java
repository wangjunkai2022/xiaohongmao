package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.sentry.protocol.y;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: LruBitmapPool.java */
/* loaded from: classes.dex */
public class k implements e {

    /* renamed from: k  reason: collision with root package name */
    private static final String f8651k = "LruBitmapPool";

    /* renamed from: l  reason: collision with root package name */
    private static final Bitmap.Config f8652l = Bitmap.Config.ARGB_8888;

    /* renamed from: a  reason: collision with root package name */
    private final l f8653a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<Bitmap.Config> f8654b;

    /* renamed from: c  reason: collision with root package name */
    private final long f8655c;

    /* renamed from: d  reason: collision with root package name */
    private final a f8656d;

    /* renamed from: e  reason: collision with root package name */
    private long f8657e;

    /* renamed from: f  reason: collision with root package name */
    private long f8658f;

    /* renamed from: g  reason: collision with root package name */
    private int f8659g;

    /* renamed from: h  reason: collision with root package name */
    private int f8660h;

    /* renamed from: i  reason: collision with root package name */
    private int f8661i;

    /* renamed from: j  reason: collision with root package name */
    private int f8662j;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LruBitmapPool.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(Bitmap bitmap);

        void b(Bitmap bitmap);
    }

    /* compiled from: LruBitmapPool.java */
    /* loaded from: classes.dex */
    private static final class b implements a {
        b() {
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.k.a
        public void a(Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.k.a
        public void b(Bitmap bitmap) {
        }
    }

    /* compiled from: LruBitmapPool.java */
    /* loaded from: classes.dex */
    private static class c implements a {

        /* renamed from: a  reason: collision with root package name */
        private final Set<Bitmap> f8663a = Collections.synchronizedSet(new HashSet());

        private c() {
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.k.a
        public void a(Bitmap bitmap) {
            if (this.f8663a.contains(bitmap)) {
                this.f8663a.remove(bitmap);
                return;
            }
            throw new IllegalStateException("Cannot remove bitmap not in tracker");
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.k.a
        public void b(Bitmap bitmap) {
            if (!this.f8663a.contains(bitmap)) {
                this.f8663a.add(bitmap);
                return;
            }
            throw new IllegalStateException("Can't add already added bitmap: " + bitmap + " [" + bitmap.getWidth() + y.b.f83919g + bitmap.getHeight() + "]");
        }
    }

    k(long j4, l lVar, Set<Bitmap.Config> set) {
        this.f8655c = j4;
        this.f8657e = j4;
        this.f8653a = lVar;
        this.f8654b = set;
        this.f8656d = new b();
    }

    @TargetApi(26)
    private static void g(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    @NonNull
    private static Bitmap h(int i4, int i10, @Nullable Bitmap.Config config) {
        if (config == null) {
            config = f8652l;
        }
        return Bitmap.createBitmap(i4, i10, config);
    }

    private void i() {
        if (Log.isLoggable(f8651k, 2)) {
            j();
        }
    }

    private void j() {
        Log.v(f8651k, "Hits=" + this.f8659g + ", misses=" + this.f8660h + ", puts=" + this.f8661i + ", evictions=" + this.f8662j + ", currentSize=" + this.f8658f + ", maxSize=" + this.f8657e + "\nStrategy=" + this.f8653a);
    }

    private void k() {
        u(this.f8657e);
    }

    @TargetApi(26)
    private static Set<Bitmap.Config> n() {
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i4 = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (i4 >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    private static l o() {
        return new o();
    }

    @Nullable
    private synchronized Bitmap p(int i4, int i10, @Nullable Bitmap.Config config) {
        Bitmap e4;
        g(config);
        e4 = this.f8653a.e(i4, i10, config != null ? config : f8652l);
        if (e4 == null) {
            if (Log.isLoggable(f8651k, 3)) {
                Log.d(f8651k, "Missing bitmap=" + this.f8653a.b(i4, i10, config));
            }
            this.f8660h++;
        } else {
            this.f8659g++;
            this.f8658f -= this.f8653a.c(e4);
            this.f8656d.a(e4);
            t(e4);
        }
        if (Log.isLoggable(f8651k, 2)) {
            Log.v(f8651k, "Get bitmap=" + this.f8653a.b(i4, i10, config));
        }
        i();
        return e4;
    }

    @TargetApi(19)
    private static void r(Bitmap bitmap) {
        bitmap.setPremultiplied(true);
    }

    private static void t(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        r(bitmap);
    }

    private synchronized void u(long j4) {
        while (this.f8658f > j4) {
            Bitmap removeLast = this.f8653a.removeLast();
            if (removeLast == null) {
                if (Log.isLoggable(f8651k, 5)) {
                    Log.w(f8651k, "Size mismatch, resetting");
                    j();
                }
                this.f8658f = 0L;
                return;
            }
            this.f8656d.a(removeLast);
            this.f8658f -= this.f8653a.c(removeLast);
            this.f8662j++;
            if (Log.isLoggable(f8651k, 3)) {
                Log.d(f8651k, "Evicting bitmap=" + this.f8653a.a(removeLast));
            }
            i();
            removeLast.recycle();
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.e
    @SuppressLint({"InlinedApi"})
    public void a(int i4) {
        if (Log.isLoggable(f8651k, 3)) {
            Log.d(f8651k, "trimMemory, level=" + i4);
        }
        if (i4 >= 40 || (Build.VERSION.SDK_INT >= 23 && i4 >= 20)) {
            b();
        } else if (i4 >= 20 || i4 == 15) {
            u(getMaxSize() / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.e
    public void b() {
        if (Log.isLoggable(f8651k, 3)) {
            Log.d(f8651k, "clearMemory");
        }
        u(0L);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.e
    public synchronized void c(float f10) {
        this.f8657e = Math.round(((float) this.f8655c) * f10);
        k();
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.e
    public synchronized void d(Bitmap bitmap) {
        try {
            if (bitmap != null) {
                if (!bitmap.isRecycled()) {
                    if (bitmap.isMutable() && this.f8653a.c(bitmap) <= this.f8657e && this.f8654b.contains(bitmap.getConfig())) {
                        int c10 = this.f8653a.c(bitmap);
                        this.f8653a.d(bitmap);
                        this.f8656d.b(bitmap);
                        this.f8661i++;
                        this.f8658f += c10;
                        if (Log.isLoggable(f8651k, 2)) {
                            Log.v(f8651k, "Put bitmap in pool=" + this.f8653a.a(bitmap));
                        }
                        i();
                        k();
                        return;
                    }
                    if (Log.isLoggable(f8651k, 2)) {
                        Log.v(f8651k, "Reject bitmap from pool, bitmap: " + this.f8653a.a(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f8654b.contains(bitmap.getConfig()));
                    }
                    bitmap.recycle();
                    return;
                }
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            throw new NullPointerException("Bitmap must not be null");
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.e
    @NonNull
    public Bitmap e(int i4, int i10, Bitmap.Config config) {
        Bitmap p9 = p(i4, i10, config);
        if (p9 != null) {
            p9.eraseColor(0);
            return p9;
        }
        return h(i4, i10, config);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.e
    @NonNull
    public Bitmap f(int i4, int i10, Bitmap.Config config) {
        Bitmap p9 = p(i4, i10, config);
        return p9 == null ? h(i4, i10, config) : p9;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.e
    public long getMaxSize() {
        return this.f8657e;
    }

    public long l() {
        return this.f8662j;
    }

    public long m() {
        return this.f8658f;
    }

    public long q() {
        return this.f8659g;
    }

    public long s() {
        return this.f8660h;
    }

    public k(long j4) {
        this(j4, o(), n());
    }

    public k(long j4, Set<Bitmap.Config> set) {
        this(j4, o(), set);
    }
}
