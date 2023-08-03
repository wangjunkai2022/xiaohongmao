package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.sentry.protocol.y;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;

/* compiled from: Util.java */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private static final int f9727a = 31;

    /* renamed from: b  reason: collision with root package name */
    private static final int f9728b = 17;

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f9729c = "0123456789abcdef".toCharArray();

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f9730d = new char[64];
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static volatile Handler f9731e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Util.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9732a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f9732a = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9732a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9732a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9732a[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9732a[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private o() {
    }

    public static void a() {
        if (!t()) {
            throw new IllegalArgumentException("You must call this method on a background thread");
        }
    }

    public static void b() {
        if (!u()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static boolean c(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        } else if (obj instanceof com.bumptech.glide.load.model.l) {
            return ((com.bumptech.glide.load.model.l) obj).a(obj2);
        } else {
            return obj.equals(obj2);
        }
    }

    public static boolean d(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @NonNull
    private static String e(@NonNull byte[] bArr, @NonNull char[] cArr) {
        for (int i4 = 0; i4 < bArr.length; i4++) {
            int i10 = bArr[i4] & 255;
            int i11 = i4 * 2;
            char[] cArr2 = f9729c;
            cArr[i11] = cArr2[i10 >>> 4];
            cArr[i11 + 1] = cArr2[i10 & 15];
        }
        return new String(cArr);
    }

    @NonNull
    public static <T> Queue<T> f(int i4) {
        return new ArrayDeque(i4);
    }

    public static int g(int i4, int i10, @Nullable Bitmap.Config config) {
        return i4 * i10 * i(config);
    }

    @TargetApi(19)
    public static int h(@NonNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getHeight() * bitmap.getRowBytes();
            }
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + y.b.f83919g + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    public static int i(@Nullable Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i4 = a.f9732a[config.ordinal()];
        if (i4 != 1) {
            if (i4 == 2 || i4 == 3) {
                return 2;
            }
            return i4 != 4 ? 4 : 8;
        }
        return 1;
    }

    @Deprecated
    public static int j(@NonNull Bitmap bitmap) {
        return h(bitmap);
    }

    @NonNull
    public static <T> List<T> k(@NonNull Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t9 : collection) {
            if (t9 != null) {
                arrayList.add(t9);
            }
        }
        return arrayList;
    }

    private static Handler l() {
        if (f9731e == null) {
            synchronized (o.class) {
                if (f9731e == null) {
                    f9731e = new Handler(Looper.getMainLooper());
                }
            }
        }
        return f9731e;
    }

    public static int m(float f10) {
        return n(f10, 17);
    }

    public static int n(float f10, int i4) {
        return p(Float.floatToIntBits(f10), i4);
    }

    public static int o(int i4) {
        return p(i4, 17);
    }

    public static int p(int i4, int i10) {
        return (i10 * 31) + i4;
    }

    public static int q(@Nullable Object obj, int i4) {
        return p(obj == null ? 0 : obj.hashCode(), i4);
    }

    public static int r(boolean z9) {
        return s(z9, 17);
    }

    public static int s(boolean z9, int i4) {
        return p(z9 ? 1 : 0, i4);
    }

    public static boolean t() {
        return !u();
    }

    public static boolean u() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    private static boolean v(int i4) {
        return i4 > 0 || i4 == Integer.MIN_VALUE;
    }

    public static boolean w(int i4, int i10) {
        return v(i4) && v(i10);
    }

    public static void x(Runnable runnable) {
        l().post(runnable);
    }

    public static void y(Runnable runnable) {
        l().removeCallbacks(runnable);
    }

    @NonNull
    public static String z(@NonNull byte[] bArr) {
        String e4;
        char[] cArr = f9730d;
        synchronized (cArr) {
            e4 = e(bArr, cArr);
        }
        return e4;
    }
}
