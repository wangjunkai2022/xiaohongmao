package com.bumptech.glide.load.engine.cache;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.VisibleForTesting;

/* compiled from: MemorySizeCalculator.java */
/* loaded from: classes.dex */
public final class l {

    /* renamed from: e  reason: collision with root package name */
    private static final String f8722e = "MemorySizeCalculator";
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    static final int f8723f = 4;

    /* renamed from: g  reason: collision with root package name */
    private static final int f8724g = 2;

    /* renamed from: a  reason: collision with root package name */
    private final int f8725a;

    /* renamed from: b  reason: collision with root package name */
    private final int f8726b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f8727c;

    /* renamed from: d  reason: collision with root package name */
    private final int f8728d;

    /* compiled from: MemorySizeCalculator.java */
    /* loaded from: classes.dex */
    public static final class a {
        @VisibleForTesting

        /* renamed from: i  reason: collision with root package name */
        static final int f8729i = 2;

        /* renamed from: j  reason: collision with root package name */
        static final int f8730j;

        /* renamed from: k  reason: collision with root package name */
        static final float f8731k = 0.4f;

        /* renamed from: l  reason: collision with root package name */
        static final float f8732l = 0.33f;

        /* renamed from: m  reason: collision with root package name */
        static final int f8733m = 4194304;

        /* renamed from: a  reason: collision with root package name */
        final Context f8734a;

        /* renamed from: b  reason: collision with root package name */
        ActivityManager f8735b;

        /* renamed from: c  reason: collision with root package name */
        c f8736c;

        /* renamed from: e  reason: collision with root package name */
        float f8738e;

        /* renamed from: d  reason: collision with root package name */
        float f8737d = 2.0f;

        /* renamed from: f  reason: collision with root package name */
        float f8739f = f8731k;

        /* renamed from: g  reason: collision with root package name */
        float f8740g = f8732l;

        /* renamed from: h  reason: collision with root package name */
        int f8741h = 4194304;

        static {
            f8730j = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public a(Context context) {
            this.f8738e = f8730j;
            this.f8734a = context;
            this.f8735b = (ActivityManager) context.getSystemService("activity");
            this.f8736c = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !l.e(this.f8735b)) {
                return;
            }
            this.f8738e = 0.0f;
        }

        public l a() {
            return new l(this);
        }

        @VisibleForTesting
        a b(ActivityManager activityManager) {
            this.f8735b = activityManager;
            return this;
        }

        public a c(int i4) {
            this.f8741h = i4;
            return this;
        }

        public a d(float f10) {
            com.bumptech.glide.util.m.a(f10 >= 0.0f, "Bitmap pool screens must be greater than or equal to 0");
            this.f8738e = f10;
            return this;
        }

        public a e(float f10) {
            com.bumptech.glide.util.m.a(f10 >= 0.0f && f10 <= 1.0f, "Low memory max size multiplier must be between 0 and 1");
            this.f8740g = f10;
            return this;
        }

        public a f(float f10) {
            com.bumptech.glide.util.m.a(f10 >= 0.0f && f10 <= 1.0f, "Size multiplier must be between 0 and 1");
            this.f8739f = f10;
            return this;
        }

        public a g(float f10) {
            com.bumptech.glide.util.m.a(f10 >= 0.0f, "Memory cache screens must be greater than or equal to 0");
            this.f8737d = f10;
            return this;
        }

        @VisibleForTesting
        a h(c cVar) {
            this.f8736c = cVar;
            return this;
        }
    }

    /* compiled from: MemorySizeCalculator.java */
    /* loaded from: classes.dex */
    private static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private final DisplayMetrics f8742a;

        b(DisplayMetrics displayMetrics) {
            this.f8742a = displayMetrics;
        }

        @Override // com.bumptech.glide.load.engine.cache.l.c
        public int a() {
            return this.f8742a.heightPixels;
        }

        @Override // com.bumptech.glide.load.engine.cache.l.c
        public int b() {
            return this.f8742a.widthPixels;
        }
    }

    /* compiled from: MemorySizeCalculator.java */
    /* loaded from: classes.dex */
    interface c {
        int a();

        int b();
    }

    l(a aVar) {
        int i4;
        this.f8727c = aVar.f8734a;
        if (e(aVar.f8735b)) {
            i4 = aVar.f8741h / 2;
        } else {
            i4 = aVar.f8741h;
        }
        this.f8728d = i4;
        int c10 = c(aVar.f8735b, aVar.f8739f, aVar.f8740g);
        float b10 = aVar.f8736c.b() * aVar.f8736c.a() * 4;
        int round = Math.round(aVar.f8738e * b10);
        int round2 = Math.round(b10 * aVar.f8737d);
        int i10 = c10 - i4;
        int i11 = round2 + round;
        if (i11 <= i10) {
            this.f8726b = round2;
            this.f8725a = round;
        } else {
            float f10 = i10;
            float f11 = aVar.f8738e;
            float f12 = aVar.f8737d;
            float f13 = f10 / (f11 + f12);
            this.f8726b = Math.round(f12 * f13);
            this.f8725a = Math.round(f13 * aVar.f8738e);
        }
        if (Log.isLoggable(f8722e, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Calculation complete, Calculated memory cache size: ");
            sb.append(f(this.f8726b));
            sb.append(", pool size: ");
            sb.append(f(this.f8725a));
            sb.append(", byte array size: ");
            sb.append(f(i4));
            sb.append(", memory class limited? ");
            sb.append(i11 > c10);
            sb.append(", max size: ");
            sb.append(f(c10));
            sb.append(", memoryClass: ");
            sb.append(aVar.f8735b.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(e(aVar.f8735b));
            Log.d(f8722e, sb.toString());
        }
    }

    private static int c(ActivityManager activityManager, float f10, float f11) {
        boolean e4 = e(activityManager);
        float memoryClass = activityManager.getMemoryClass() * 1024 * 1024;
        if (e4) {
            f10 = f11;
        }
        return Math.round(memoryClass * f10);
    }

    @TargetApi(19)
    static boolean e(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }

    private String f(int i4) {
        return Formatter.formatFileSize(this.f8727c, i4);
    }

    public int a() {
        return this.f8728d;
    }

    public int b() {
        return this.f8725a;
    }

    public int d() {
        return this.f8726b;
    }
}
