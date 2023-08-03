package com.facebook.imageutils;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.util.Pair;
import androidx.core.util.Pools;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import r7.h;

/* compiled from: BitmapUtil.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f13374a = 16384;

    /* renamed from: b  reason: collision with root package name */
    private static final int f13375b = 12;

    /* renamed from: c  reason: collision with root package name */
    private static final Pools.SynchronizedPool<ByteBuffer> f13376c = new Pools.SynchronizedPool<>(12);

    /* renamed from: d  reason: collision with root package name */
    public static final int f13377d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13378e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static final int f13379f = 4;

    /* renamed from: g  reason: collision with root package name */
    public static final int f13380g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f13381h = 8;

    /* renamed from: i  reason: collision with root package name */
    public static final float f13382i = 2048.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BitmapUtil.java */
    /* renamed from: com.facebook.imageutils.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0112a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f13383a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f13383a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13383a[Bitmap.Config.ALPHA_8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13383a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13383a[Bitmap.Config.RGB_565.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13383a[Bitmap.Config.RGBA_F16.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13383a[Bitmap.Config.HARDWARE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    @h
    public static Pair<Integer, Integer> a(Uri uri) {
        j.i(uri);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(uri.getPath(), options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            return null;
        }
        return new Pair<>(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
    }

    @h
    public static Pair<Integer, Integer> b(InputStream is) {
        j.i(is);
        Pools.SynchronizedPool<ByteBuffer> synchronizedPool = f13376c;
        ByteBuffer acquire = synchronizedPool.acquire();
        if (acquire == null) {
            acquire = ByteBuffer.allocate(16384);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            options.inTempStorage = acquire.array();
            Pair<Integer, Integer> pair = null;
            BitmapFactory.decodeStream(is, null, options);
            if (options.outWidth != -1 && options.outHeight != -1) {
                pair = new Pair<>(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
            }
            synchronizedPool.release(acquire);
            return pair;
        } catch (Throwable th) {
            f13376c.release(acquire);
            throw th;
        }
    }

    @h
    public static Pair<Integer, Integer> c(byte[] bytes) {
        return b(new ByteArrayInputStream(bytes));
    }

    public static b d(InputStream is) {
        j.i(is);
        Pools.SynchronizedPool<ByteBuffer> synchronizedPool = f13376c;
        ByteBuffer acquire = synchronizedPool.acquire();
        if (acquire == null) {
            acquire = ByteBuffer.allocate(16384);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            options.inTempStorage = acquire.array();
            BitmapFactory.decodeStream(is, null, options);
            b bVar = new b(options.outWidth, options.outHeight, Build.VERSION.SDK_INT >= 26 ? options.outColorSpace : null);
            synchronizedPool.release(acquire);
            return bVar;
        } catch (Throwable th) {
            f13376c.release(acquire);
            throw th;
        }
    }

    public static int e(Bitmap.Config bitmapConfig) {
        switch (C0112a.f13383a[bitmapConfig.ordinal()]) {
            case 1:
                return 4;
            case 2:
                return 1;
            case 3:
            case 4:
                return 2;
            case 5:
                return 8;
            case 6:
                return 4;
            default:
                throw new UnsupportedOperationException("The provided Bitmap.Config is not supported");
        }
    }

    public static int f(int width, int height, Bitmap.Config bitmapConfig) {
        return width * height * e(bitmapConfig);
    }

    @SuppressLint({"NewApi"})
    public static int g(@h Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        try {
            return bitmap.getAllocationByteCount();
        } catch (NullPointerException unused) {
            return bitmap.getByteCount();
        }
    }
}
