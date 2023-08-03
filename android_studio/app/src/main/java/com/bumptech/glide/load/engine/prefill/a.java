package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.bumptech.glide.load.engine.cache.j;
import com.bumptech.glide.load.resource.bitmap.g;
import com.bumptech.glide.util.o;
import io.sentry.protocol.y;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BitmapPreFillRunner.java */
/* loaded from: classes.dex */
public final class a implements Runnable {
    @VisibleForTesting

    /* renamed from: i  reason: collision with root package name */
    static final String f8942i = "PreFillRunner";

    /* renamed from: k  reason: collision with root package name */
    static final long f8944k = 32;

    /* renamed from: l  reason: collision with root package name */
    static final long f8945l = 40;

    /* renamed from: m  reason: collision with root package name */
    static final int f8946m = 4;

    /* renamed from: a  reason: collision with root package name */
    private final e f8948a;

    /* renamed from: b  reason: collision with root package name */
    private final j f8949b;

    /* renamed from: c  reason: collision with root package name */
    private final c f8950c;

    /* renamed from: d  reason: collision with root package name */
    private final C0055a f8951d;

    /* renamed from: e  reason: collision with root package name */
    private final Set<d> f8952e;

    /* renamed from: f  reason: collision with root package name */
    private final Handler f8953f;

    /* renamed from: g  reason: collision with root package name */
    private long f8954g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f8955h;

    /* renamed from: j  reason: collision with root package name */
    private static final C0055a f8943j = new C0055a();

    /* renamed from: n  reason: collision with root package name */
    static final long f8947n = TimeUnit.SECONDS.toMillis(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BitmapPreFillRunner.java */
    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.prefill.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0055a {
        C0055a() {
        }

        long a() {
            return SystemClock.currentThreadTimeMillis();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BitmapPreFillRunner.java */
    /* loaded from: classes.dex */
    public static final class b implements com.bumptech.glide.load.c {
        b() {
        }

        @Override // com.bumptech.glide.load.c
        public void b(@NonNull MessageDigest messageDigest) {
            throw new UnsupportedOperationException();
        }
    }

    public a(e eVar, j jVar, c cVar) {
        this(eVar, jVar, cVar, f8943j, new Handler(Looper.getMainLooper()));
    }

    private long c() {
        return this.f8949b.getMaxSize() - this.f8949b.getCurrentSize();
    }

    private long d() {
        long j4 = this.f8954g;
        this.f8954g = Math.min(4 * j4, f8947n);
        return j4;
    }

    private boolean e(long j4) {
        return this.f8951d.a() - j4 >= 32;
    }

    @VisibleForTesting
    boolean a() {
        Bitmap createBitmap;
        long a10 = this.f8951d.a();
        while (!this.f8950c.b() && !e(a10)) {
            d c10 = this.f8950c.c();
            if (!this.f8952e.contains(c10)) {
                this.f8952e.add(c10);
                createBitmap = this.f8948a.f(c10.d(), c10.b(), c10.a());
            } else {
                createBitmap = Bitmap.createBitmap(c10.d(), c10.b(), c10.a());
            }
            int h4 = o.h(createBitmap);
            if (c() >= h4) {
                this.f8949b.d(new b(), g.c(createBitmap, this.f8948a));
            } else {
                this.f8948a.d(createBitmap);
            }
            if (Log.isLoggable(f8942i, 3)) {
                Log.d(f8942i, "allocated [" + c10.d() + y.b.f83919g + c10.b() + "] " + c10.a() + " size: " + h4);
            }
        }
        return (this.f8955h || this.f8950c.b()) ? false : true;
    }

    public void b() {
        this.f8955h = true;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (a()) {
            this.f8953f.postDelayed(this, d());
        }
    }

    @VisibleForTesting
    a(e eVar, j jVar, c cVar, C0055a c0055a, Handler handler) {
        this.f8952e = new HashSet();
        this.f8954g = 40L;
        this.f8948a = eVar;
        this.f8949b = jVar;
        this.f8950c = cVar;
        this.f8951d = c0055a;
        this.f8953f = handler;
    }
}
