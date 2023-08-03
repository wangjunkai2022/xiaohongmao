package com.facebook.webpsupport;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.util.TypedValue;
import com.facebook.common.internal.e;
import com.facebook.imagepipeline.nativecode.g;
import com.facebook.infer.annotation.Nullsafe;
import com.qennnsad.aknkaksd.util.a1;
import io.sentry.instrumentation.file.h;
import java.io.BufferedInputStream;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import r7.h;
import t0.a;
import t0.b;
import t0.c;

@e
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class WebpBitmapFactoryImpl implements b {

    /* renamed from: a  reason: collision with root package name */
    private static final int f13582a = 20;

    /* renamed from: b  reason: collision with root package name */
    private static final int f13583b = 8192;

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f13584c = true;

    /* renamed from: d  reason: collision with root package name */
    private static b.a f13585d;

    /* renamed from: e  reason: collision with root package name */
    private static a f13586e;

    @e
    @h
    private static Bitmap createBitmap(int width, int height, @h BitmapFactory.Options options) {
        Bitmap bitmap;
        if (f13584c && options != null && (bitmap = options.inBitmap) != null && bitmap.isMutable()) {
            return options.inBitmap;
        }
        return f13586e.a(width, height, Bitmap.Config.ARGB_8888);
    }

    @h
    private static byte[] g(InputStream inputStream, @h BitmapFactory.Options opts) {
        byte[] bArr;
        inputStream.mark(20);
        if (opts == null || (bArr = opts.inTempStorage) == null || bArr.length < 20) {
            bArr = new byte[20];
        }
        try {
            inputStream.read(bArr, 0, 20);
            inputStream.reset();
            return bArr;
        } catch (IOException unused) {
            return null;
        }
    }

    @e
    private static byte[] getInTempStorageFromOptions(@h final BitmapFactory.Options options) {
        byte[] bArr;
        return (options == null || (bArr = options.inTempStorage) == null) ? new byte[8192] : bArr;
    }

    @e
    private static float getScaleFromOptions(@h BitmapFactory.Options options) {
        if (options != null) {
            int i4 = options.inSampleSize;
            float f10 = i4 > 1 ? 1.0f / i4 : 1.0f;
            if (options.inScaled) {
                int i10 = options.inDensity;
                int i11 = options.inTargetDensity;
                return (i10 == 0 || i11 == 0 || i10 == options.inScreenDensity) ? f10 : i11 / i10;
            }
            return f10;
        }
        return 1.0f;
    }

    private static void h(String message) {
        b.a aVar = f13585d;
        if (aVar != null) {
            aVar.a(message, "decoding_failure");
        }
    }

    @e
    @h
    public static Bitmap hookDecodeByteArray(byte[] array, int offset, int length, @h BitmapFactory.Options opts) {
        Bitmap originalDecodeByteArray;
        g.a();
        if (c.f93749a && c.h(array, offset, length)) {
            originalDecodeByteArray = nativeDecodeByteArray(array, offset, length, opts, getScaleFromOptions(opts), getInTempStorageFromOptions(opts));
            if (originalDecodeByteArray == null) {
                h("webp_direct_decode_array");
            }
            j(originalDecodeByteArray, opts);
        } else {
            originalDecodeByteArray = originalDecodeByteArray(array, offset, length, opts);
            if (originalDecodeByteArray == null) {
                h("webp_direct_decode_array_failed_on_no_webp");
            }
        }
        return originalDecodeByteArray;
    }

    @e
    @h
    public static Bitmap hookDecodeFile(String pathName, @h BitmapFactory.Options opts) {
        Bitmap bitmap = null;
        try {
            FileInputStream d4 = h.b.d(new FileInputStream(pathName), pathName);
            bitmap = hookDecodeStream(d4, null, opts);
            if (d4 != null) {
                d4.close();
            }
        } catch (Exception unused) {
        }
        return bitmap;
    }

    @e
    @r7.h
    public static Bitmap hookDecodeFileDescriptor(FileDescriptor fd, @r7.h Rect outPadding, @r7.h BitmapFactory.Options opts) {
        Bitmap originalDecodeFileDescriptor;
        g.a();
        long nativeSeek = nativeSeek(fd, 0L, false);
        if (nativeSeek != -1) {
            InputStream k10 = k(h.b.c(new FileInputStream(fd), fd));
            try {
                byte[] g4 = g(k10, opts);
                if (c.f93749a && g4 != null && c.h(g4, 0, 20)) {
                    originalDecodeFileDescriptor = nativeDecodeStream(k10, opts, getScaleFromOptions(opts), getInTempStorageFromOptions(opts));
                    if (originalDecodeFileDescriptor == null) {
                        h("webp_direct_decode_fd");
                    }
                    setPaddingDefaultValues(outPadding);
                    j(originalDecodeFileDescriptor, opts);
                } else {
                    nativeSeek(fd, nativeSeek, true);
                    originalDecodeFileDescriptor = originalDecodeFileDescriptor(fd, outPadding, opts);
                    if (originalDecodeFileDescriptor == null) {
                        h("webp_direct_decode_fd_failed_on_no_webp");
                    }
                }
                try {
                } catch (Throwable unused) {
                    return originalDecodeFileDescriptor;
                }
            } finally {
                try {
                    k10.close();
                } catch (Throwable unused2) {
                }
            }
        } else {
            Bitmap hookDecodeStream = hookDecodeStream(h.b.c(new FileInputStream(fd), fd), outPadding, opts);
            setPaddingDefaultValues(outPadding);
            return hookDecodeStream;
        }
    }

    @e
    @r7.h
    public static Bitmap hookDecodeResource(Resources res, int id, @r7.h BitmapFactory.Options opts) {
        TypedValue typedValue = new TypedValue();
        Bitmap bitmap = null;
        try {
            InputStream openRawResource = res.openRawResource(id, typedValue);
            bitmap = hookDecodeResourceStream(res, typedValue, openRawResource, null, opts);
            if (openRawResource != null) {
                openRawResource.close();
            }
        } catch (Exception unused) {
        }
        if (!f13584c || bitmap != null || opts == null || opts.inBitmap == null) {
            return bitmap;
        }
        throw new IllegalArgumentException("Problem decoding into existing bitmap");
    }

    @e
    @r7.h
    public static Bitmap hookDecodeResourceStream(@r7.h Resources res, @r7.h TypedValue value, InputStream is, @r7.h Rect pad, @r7.h BitmapFactory.Options opts) {
        if (opts == null) {
            opts = new BitmapFactory.Options();
        }
        if (opts.inDensity == 0 && value != null) {
            int i4 = value.density;
            if (i4 == 0) {
                opts.inDensity = a1.f54532a;
            } else if (i4 != 65535) {
                opts.inDensity = i4;
            }
        }
        if (opts.inTargetDensity == 0 && res != null) {
            opts.inTargetDensity = res.getDisplayMetrics().densityDpi;
        }
        return hookDecodeStream(is, pad, opts);
    }

    @e
    @r7.h
    public static Bitmap hookDecodeStream(InputStream inputStream, @r7.h Rect outPadding, @r7.h BitmapFactory.Options opts) {
        Bitmap originalDecodeStream;
        g.a();
        InputStream k10 = k(inputStream);
        byte[] g4 = g(k10, opts);
        if (c.f93749a && g4 != null && c.h(g4, 0, 20)) {
            originalDecodeStream = nativeDecodeStream(k10, opts, getScaleFromOptions(opts), getInTempStorageFromOptions(opts));
            if (originalDecodeStream == null) {
                h("webp_direct_decode_stream");
            }
            j(originalDecodeStream, opts);
            setPaddingDefaultValues(outPadding);
        } else {
            originalDecodeStream = originalDecodeStream(k10, outPadding, opts);
            if (originalDecodeStream == null) {
                h("webp_direct_decode_stream_failed_on_no_webp");
            }
        }
        return originalDecodeStream;
    }

    private static void i(@r7.h Bitmap outputBitmap, @r7.h BitmapFactory.Options opts) {
        if (outputBitmap == null || opts == null) {
            return;
        }
        int i4 = opts.inDensity;
        if (i4 != 0) {
            outputBitmap.setDensity(i4);
            int i10 = opts.inTargetDensity;
            if (i10 == 0 || i4 == i10 || i4 == opts.inScreenDensity || !opts.inScaled) {
                return;
            }
            outputBitmap.setDensity(i10);
        } else if (!f13584c || opts.inBitmap == null) {
        } else {
            outputBitmap.setDensity(a1.f54532a);
        }
    }

    private static void j(@r7.h Bitmap bitmap, @r7.h BitmapFactory.Options opts) {
        i(bitmap, opts);
        if (opts != null) {
            opts.outMimeType = "image/webp";
        }
    }

    private static InputStream k(InputStream inputStream) {
        return !inputStream.markSupported() ? new BufferedInputStream(inputStream, 20) : inputStream;
    }

    @e
    @r7.h
    private static native Bitmap nativeDecodeByteArray(byte[] data, int offset, int length, @r7.h BitmapFactory.Options opts, float scale, byte[] inTempStorage);

    @e
    @r7.h
    private static native Bitmap nativeDecodeStream(InputStream is, @r7.h BitmapFactory.Options options, float scale, byte[] inTempStorage);

    @e
    private static native long nativeSeek(FileDescriptor fd, long offset, boolean absolute);

    @e
    @r7.h
    private static Bitmap originalDecodeByteArray(byte[] array, int offset, int length, @r7.h BitmapFactory.Options opts) {
        return BitmapFactory.decodeByteArray(array, offset, length, opts);
    }

    @e
    @r7.h
    private static Bitmap originalDecodeFile(String pathName, @r7.h BitmapFactory.Options opts) {
        return BitmapFactory.decodeFile(pathName, opts);
    }

    @e
    @r7.h
    private static Bitmap originalDecodeFileDescriptor(FileDescriptor fd, @r7.h Rect outPadding, @r7.h BitmapFactory.Options opts) {
        return BitmapFactory.decodeFileDescriptor(fd, outPadding, opts);
    }

    @e
    @r7.h
    private static Bitmap originalDecodeResource(Resources res, int id, BitmapFactory.Options opts) {
        return BitmapFactory.decodeResource(res, id, opts);
    }

    @e
    @r7.h
    private static Bitmap originalDecodeResourceStream(Resources res, TypedValue value, InputStream is, Rect pad, BitmapFactory.Options opts) {
        return BitmapFactory.decodeResourceStream(res, value, is, pad, opts);
    }

    @e
    @r7.h
    private static Bitmap originalDecodeStream(InputStream inputStream, @r7.h Rect outPadding, @r7.h BitmapFactory.Options opts) {
        return BitmapFactory.decodeStream(inputStream, outPadding, opts);
    }

    @e
    private static void setBitmapSize(@r7.h BitmapFactory.Options options, int width, int height) {
        if (options != null) {
            options.outWidth = width;
            options.outHeight = height;
        }
    }

    @e
    private static boolean setOutDimensions(@r7.h BitmapFactory.Options options, int imageWidth, int imageHeight) {
        if (options == null || !options.inJustDecodeBounds) {
            return false;
        }
        options.outWidth = imageWidth;
        options.outHeight = imageHeight;
        return true;
    }

    @e
    private static void setPaddingDefaultValues(@r7.h Rect padding) {
        if (padding != null) {
            padding.top = -1;
            padding.left = -1;
            padding.bottom = -1;
            padding.right = -1;
        }
    }

    @e
    @SuppressLint({"NewApi"})
    private static boolean shouldPremultiply(@r7.h BitmapFactory.Options options) {
        if (options != null) {
            return options.inPremultiplied;
        }
        return true;
    }

    @Override // t0.b
    @r7.h
    public Bitmap a(InputStream inputStream, @r7.h Rect outPadding, @r7.h BitmapFactory.Options opts) {
        return hookDecodeStream(inputStream, outPadding, opts);
    }

    @Override // t0.b
    public void b(b.a webpErrorLogger) {
        f13585d = webpErrorLogger;
    }

    @Override // t0.b
    @r7.h
    public Bitmap c(String pathName, @r7.h BitmapFactory.Options opts) {
        return hookDecodeFile(pathName, opts);
    }

    @Override // t0.b
    @r7.h
    public Bitmap d(FileDescriptor fd, @r7.h Rect outPadding, @r7.h BitmapFactory.Options opts) {
        return hookDecodeFileDescriptor(fd, outPadding, opts);
    }

    @Override // t0.b
    public void e(final a bitmapCreator) {
        f13586e = bitmapCreator;
    }

    @Override // t0.b
    @r7.h
    public Bitmap f(byte[] array, int offset, int length, @r7.h BitmapFactory.Options opts) {
        return hookDecodeByteArray(array, offset, length, opts);
    }

    @e
    @r7.h
    private static Bitmap originalDecodeByteArray(byte[] array, int offset, int length) {
        return BitmapFactory.decodeByteArray(array, offset, length);
    }

    @e
    @r7.h
    private static Bitmap originalDecodeFile(String pathName) {
        return BitmapFactory.decodeFile(pathName);
    }

    @e
    @r7.h
    private static Bitmap originalDecodeFileDescriptor(FileDescriptor fd) {
        return BitmapFactory.decodeFileDescriptor(fd);
    }

    @e
    @r7.h
    private static Bitmap originalDecodeResource(Resources res, int id) {
        return BitmapFactory.decodeResource(res, id);
    }

    @e
    @r7.h
    private static Bitmap originalDecodeStream(InputStream inputStream) {
        return BitmapFactory.decodeStream(inputStream);
    }

    @e
    @r7.h
    public static Bitmap hookDecodeFile(String pathName) {
        return hookDecodeFile(pathName, null);
    }

    @e
    @r7.h
    public static Bitmap hookDecodeResource(Resources res, int id) {
        return hookDecodeResource(res, id, null);
    }

    @e
    @r7.h
    public static Bitmap hookDecodeByteArray(byte[] array, int offset, int length) {
        return hookDecodeByteArray(array, offset, length, null);
    }

    @e
    @r7.h
    public static Bitmap hookDecodeStream(InputStream inputStream) {
        return hookDecodeStream(inputStream, null, null);
    }

    @e
    @r7.h
    public static Bitmap hookDecodeFileDescriptor(FileDescriptor fd) {
        return hookDecodeFileDescriptor(fd, null, null);
    }
}
