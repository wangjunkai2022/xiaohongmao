package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import java.io.File;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: HardwareConfigState.java */
/* loaded from: classes.dex */
public final class u {

    /* renamed from: g  reason: collision with root package name */
    private static final String f9290g = "HardwareConfig";

    /* renamed from: h  reason: collision with root package name */
    public static final boolean f9291h;

    /* renamed from: i  reason: collision with root package name */
    public static final boolean f9292i;
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    static final int f9293j = 128;

    /* renamed from: k  reason: collision with root package name */
    private static final int f9294k = 0;

    /* renamed from: l  reason: collision with root package name */
    private static final File f9295l;

    /* renamed from: m  reason: collision with root package name */
    private static final int f9296m = 50;

    /* renamed from: n  reason: collision with root package name */
    private static final int f9297n = 700;

    /* renamed from: o  reason: collision with root package name */
    private static final int f9298o = 20000;

    /* renamed from: p  reason: collision with root package name */
    public static final int f9299p = -1;

    /* renamed from: q  reason: collision with root package name */
    private static volatile u f9300q;

    /* renamed from: r  reason: collision with root package name */
    private static volatile int f9301r;

    /* renamed from: b  reason: collision with root package name */
    private final int f9303b;

    /* renamed from: c  reason: collision with root package name */
    private final int f9304c;
    @GuardedBy("this")

    /* renamed from: d  reason: collision with root package name */
    private int f9305d;
    @GuardedBy("this")

    /* renamed from: e  reason: collision with root package name */
    private boolean f9306e = true;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f9307f = new AtomicBoolean(false);

    /* renamed from: a  reason: collision with root package name */
    private final boolean f9302a = h();

    static {
        int i4 = Build.VERSION.SDK_INT;
        f9291h = i4 < 29;
        f9292i = i4 >= 26;
        f9295l = new File("/proc/self/fd");
        f9301r = -1;
    }

    @VisibleForTesting
    u() {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f9303b = 20000;
            this.f9304c = 0;
            return;
        }
        this.f9303b = 700;
        this.f9304c = 128;
    }

    private boolean b() {
        return f9291h && !this.f9307f.get();
    }

    public static u d() {
        if (f9300q == null) {
            synchronized (u.class) {
                if (f9300q == null) {
                    f9300q = new u();
                }
            }
        }
        return f9300q;
    }

    private int e() {
        if (f9301r != -1) {
            return f9301r;
        }
        return this.f9303b;
    }

    private synchronized boolean f() {
        boolean z9 = true;
        int i4 = this.f9305d + 1;
        this.f9305d = i4;
        if (i4 >= 50) {
            this.f9305d = 0;
            int length = f9295l.list().length;
            long e4 = e();
            if (length >= e4) {
                z9 = false;
            }
            this.f9306e = z9;
            if (!z9 && Log.isLoggable("Downsampler", 5)) {
                Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + e4);
            }
        }
        return this.f9306e;
    }

    private static boolean h() {
        return (i() || j()) ? false : true;
    }

    private static boolean i() {
        if (Build.VERSION.SDK_INT != 26) {
            return false;
        }
        for (String str : Arrays.asList("SC-04J", "SM-N935", "SM-J720", "SM-G570F", "SM-G570M", "SM-G960", "SM-G965", "SM-G935", "SM-G930", "SM-A520", "SM-A720F", "moto e5", "moto e5 play", "moto e5 plus", "moto e5 cruise", "moto g(6) forge", "moto g(6) play")) {
            if (Build.MODEL.startsWith(str)) {
                return true;
            }
        }
        return false;
    }

    private static boolean j() {
        if (Build.VERSION.SDK_INT != 27) {
            return false;
        }
        return Arrays.asList("LG-M250", "LG-M320", "LG-Q710AL", "LG-Q710PL", "LGM-K121K", "LGM-K121L", "LGM-K121S", "LGM-X320K", "LGM-X320L", "LGM-X320S", "LGM-X401L", "LGM-X401S", "LM-Q610.FG", "LM-Q610.FGN", "LM-Q617.FG", "LM-Q617.FGN", "LM-Q710.FG", "LM-Q710.FGN", "LM-X220PM", "LM-X220QMA", "LM-X410PM").contains(Build.MODEL);
    }

    public boolean a() {
        com.bumptech.glide.util.o.b();
        return !this.f9307f.get();
    }

    public void c() {
        com.bumptech.glide.util.o.b();
        this.f9307f.set(false);
    }

    public boolean g(int i4, int i10, boolean z9, boolean z10) {
        if (!z9) {
            if (Log.isLoggable(f9290g, 2)) {
                Log.v(f9290g, "Hardware config disallowed by caller");
            }
            return false;
        } else if (!this.f9302a) {
            if (Log.isLoggable(f9290g, 2)) {
                Log.v(f9290g, "Hardware config disallowed by device model");
            }
            return false;
        } else if (!f9292i) {
            if (Log.isLoggable(f9290g, 2)) {
                Log.v(f9290g, "Hardware config disallowed by sdk");
            }
            return false;
        } else if (b()) {
            if (Log.isLoggable(f9290g, 2)) {
                Log.v(f9290g, "Hardware config disallowed by app state");
            }
            return false;
        } else if (z10) {
            if (Log.isLoggable(f9290g, 2)) {
                Log.v(f9290g, "Hardware config disallowed because exif orientation is required");
            }
            return false;
        } else {
            int i11 = this.f9304c;
            if (i4 < i11) {
                if (Log.isLoggable(f9290g, 2)) {
                    Log.v(f9290g, "Hardware config disallowed because width is too small");
                }
                return false;
            } else if (i10 < i11) {
                if (Log.isLoggable(f9290g, 2)) {
                    Log.v(f9290g, "Hardware config disallowed because height is too small");
                }
                return false;
            } else if (f()) {
                return true;
            } else {
                if (Log.isLoggable(f9290g, 2)) {
                    Log.v(f9290g, "Hardware config disallowed because there are insufficient FDs");
                }
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(26)
    public boolean k(int i4, int i10, BitmapFactory.Options options, boolean z9, boolean z10) {
        boolean g4 = g(i4, i10, z9, z10);
        if (g4) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return g4;
    }

    public void l() {
        com.bumptech.glide.util.o.b();
        this.f9307f.set(true);
    }
}
