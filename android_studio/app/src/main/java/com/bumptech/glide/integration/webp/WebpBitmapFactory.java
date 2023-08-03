package com.bumptech.glide.integration.webp;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.util.TypedValue;
import androidx.annotation.Keep;
import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.qennnsad.aknkaksd.util.a1;
import io.sentry.instrumentation.file.h;
import java.io.BufferedInputStream;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

@Keep
/* loaded from: classes.dex */
public class WebpBitmapFactory {
    private static final int IN_TEMP_BUFFER_SIZE = 8192;
    private static final int MAX_WEBP_HEADER_SIZE = 21;

    static {
        System.loadLibrary("glide-webp");
    }

    @Keep
    private static Bitmap createBitmap(int i4, int i10, BitmapFactory.Options options) {
        Bitmap bitmap;
        if (options != null && (bitmap = options.inBitmap) != null && bitmap.isMutable()) {
            return options.inBitmap;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i4, i10, Bitmap.Config.ARGB_8888);
        createBitmap.setHasAlpha(true);
        createBitmap.eraseColor(0);
        return createBitmap;
    }

    public static Bitmap decodeByteArray(byte[] bArr, int i4, int i10) {
        return decodeByteArray(bArr, i4, i10, null);
    }

    public static Bitmap decodeFile(String str) {
        return decodeFile(str, null);
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor) {
        return decodeFileDescriptor(fileDescriptor, null, null);
    }

    public static Bitmap decodeResource(Resources resources, int i4) {
        return decodeResource(resources, i4, null);
    }

    public static Bitmap decodeResourceStream(Resources resources, TypedValue typedValue, InputStream inputStream, Rect rect, BitmapFactory.Options options) {
        if (options == null) {
            options = new BitmapFactory.Options();
        }
        if (options.inDensity == 0 && typedValue != null) {
            int i4 = typedValue.density;
            if (i4 == 0) {
                options.inDensity = a1.f54532a;
            } else if (i4 != 65535) {
                options.inDensity = i4;
            }
        }
        if (options.inTargetDensity == 0 && resources != null) {
            options.inTargetDensity = resources.getDisplayMetrics().densityDpi;
        }
        return decodeStream(inputStream, rect, options);
    }

    public static Bitmap decodeStream(InputStream inputStream) {
        return decodeStream(inputStream, null, null);
    }

    private static byte[] getImageHeader(InputStream inputStream) {
        if (!inputStream.markSupported()) {
            inputStream = new BufferedInputStream(inputStream, 21);
        }
        inputStream.mark(21);
        byte[] bArr = new byte[21];
        try {
            inputStream.read(bArr, 0, 21);
            inputStream.reset();
            return bArr;
        } catch (IOException unused) {
            return null;
        }
    }

    private static byte[] getInTempStorageFromOptions(BitmapFactory.Options options) {
        byte[] bArr;
        return (options == null || (bArr = options.inTempStorage) == null) ? new byte[8192] : bArr;
    }

    private static float getScaleFromOptions(BitmapFactory.Options options) {
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

    private static native Bitmap nativeDecodeByteArray(byte[] bArr, int i4, int i10, BitmapFactory.Options options, float f10, byte[] bArr2);

    private static native Bitmap nativeDecodeStream(InputStream inputStream, BitmapFactory.Options options, float f10, byte[] bArr);

    private static void setDefaultPadding(Rect rect) {
        if (rect != null) {
            rect.top = -1;
            rect.left = -1;
            rect.bottom = -1;
            rect.right = -1;
        }
    }

    private static void setDensityFromOptions(Bitmap bitmap, BitmapFactory.Options options) {
        if (bitmap == null || options == null) {
            return;
        }
        int i4 = options.inDensity;
        if (i4 != 0) {
            bitmap.setDensity(i4);
            int i10 = options.inTargetDensity;
            if (i10 == 0 || i4 == i10 || i4 == options.inScreenDensity || !options.inScaled) {
                return;
            }
            bitmap.setDensity(i10);
        } else if (options.inBitmap != null) {
            bitmap.setDensity(a1.f54532a);
        }
    }

    @Keep
    private static boolean setOutDimensions(BitmapFactory.Options options, int i4, int i10) {
        if (options != null) {
            options.outWidth = i4;
            options.outHeight = i10;
            return options.inJustDecodeBounds;
        }
        return false;
    }

    private static void setWebpBitmapOptions(Bitmap bitmap, BitmapFactory.Options options) {
        setDensityFromOptions(bitmap, options);
        if (options != null) {
            options.outMimeType = "image/webp";
        }
    }

    public static boolean webpSupportRequired(byte[] bArr, int i4, int i10) {
        try {
            WebpHeaderParser.e(bArr, i4, i10);
            return false;
        } catch (IOException unused) {
            WebpHeaderParser.WebpImageType webpImageType = WebpHeaderParser.WebpImageType.NONE_WEBP;
            return false;
        }
    }

    private static InputStream wrapToMarkSupportedStream(InputStream inputStream) {
        return !inputStream.markSupported() ? new BufferedInputStream(inputStream, 8192) : inputStream;
    }

    public static Bitmap decodeByteArray(byte[] bArr, int i4, int i10, BitmapFactory.Options options) {
        if ((i4 | i10) >= 0 && bArr.length >= i4 + i10) {
            if (webpSupportRequired(bArr, i4, i10)) {
                Bitmap nativeDecodeByteArray = nativeDecodeByteArray(bArr, i4, i10, options, getScaleFromOptions(options), getInTempStorageFromOptions(options));
                setWebpBitmapOptions(nativeDecodeByteArray, options);
                return nativeDecodeByteArray;
            }
            return BitmapFactory.decodeByteArray(bArr, i4, i10, options);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
        if (r4 == null) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r4 != null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0010, code lost:
        r4.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap decodeFile(java.lang.String r4, android.graphics.BitmapFactory.Options r5) {
        /*
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L16 java.lang.Exception -> L18
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L16 java.lang.Exception -> L18
            java.io.FileInputStream r4 = io.sentry.instrumentation.file.h.b.d(r1, r4)     // Catch: java.lang.Throwable -> L16 java.lang.Exception -> L18
            android.graphics.Bitmap r0 = decodeStream(r4, r0, r5)     // Catch: java.lang.Exception -> L14 java.lang.Throwable -> L34
            if (r4 == 0) goto L33
        L10:
            r4.close()     // Catch: java.io.IOException -> L33
            goto L33
        L14:
            r5 = move-exception
            goto L1a
        L16:
            r5 = move-exception
            goto L36
        L18:
            r5 = move-exception
            r4 = r0
        L1a:
            java.lang.String r1 = "WebpBitmapFactory"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L34
            r2.<init>()     // Catch: java.lang.Throwable -> L34
            java.lang.String r3 = "Unable to decode stream: "
            r2.append(r3)     // Catch: java.lang.Throwable -> L34
            r2.append(r5)     // Catch: java.lang.Throwable -> L34
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L34
            android.util.Log.e(r1, r5)     // Catch: java.lang.Throwable -> L34
            if (r4 == 0) goto L33
            goto L10
        L33:
            return r0
        L34:
            r5 = move-exception
            r0 = r4
        L36:
            if (r0 == 0) goto L3b
            r0.close()     // Catch: java.io.IOException -> L3b
        L3b:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.integration.webp.WebpBitmapFactory.decodeFile(java.lang.String, android.graphics.BitmapFactory$Options):android.graphics.Bitmap");
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor, Rect rect, BitmapFactory.Options options) {
        Bitmap decodeFileDescriptor;
        InputStream wrapToMarkSupportedStream = wrapToMarkSupportedStream(h.b.c(new FileInputStream(fileDescriptor), fileDescriptor));
        try {
            if (webpSupportRequired(getImageHeader(wrapToMarkSupportedStream), 0, 21)) {
                decodeFileDescriptor = nativeDecodeStream(wrapToMarkSupportedStream, options, getScaleFromOptions(options), getInTempStorageFromOptions(options));
                setWebpBitmapOptions(decodeFileDescriptor, options);
                setDefaultPadding(rect);
            } else {
                decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, rect, options);
            }
            return decodeFileDescriptor;
        } finally {
            try {
                wrapToMarkSupportedStream.close();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0021, code lost:
        if (r3 == null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r3 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0010, code lost:
        r3.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap decodeResource(android.content.res.Resources r2, int r3, android.graphics.BitmapFactory.Options r4) {
        /*
            r0 = 0
            android.util.TypedValue r1 = new android.util.TypedValue     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L20
            r1.<init>()     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L20
            java.io.InputStream r3 = r2.openRawResource(r3, r1)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L20
            android.graphics.Bitmap r0 = decodeResourceStream(r2, r1, r3, r0, r4)     // Catch: java.lang.Throwable -> L16 java.lang.Exception -> L21
            if (r3 == 0) goto L24
        L10:
            r3.close()     // Catch: java.io.IOException -> L14
            goto L24
        L14:
            goto L24
        L16:
            r2 = move-exception
            r0 = r3
            goto L1a
        L19:
            r2 = move-exception
        L1a:
            if (r0 == 0) goto L1f
            r0.close()     // Catch: java.io.IOException -> L1f
        L1f:
            throw r2
        L20:
            r3 = r0
        L21:
            if (r3 == 0) goto L24
            goto L10
        L24:
            if (r0 != 0) goto L35
            if (r4 == 0) goto L35
            android.graphics.Bitmap r2 = r4.inBitmap
            if (r2 != 0) goto L2d
            goto L35
        L2d:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Problem decoding into existing bitmap"
            r2.<init>(r3)
            throw r2
        L35:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.integration.webp.WebpBitmapFactory.decodeResource(android.content.res.Resources, int, android.graphics.BitmapFactory$Options):android.graphics.Bitmap");
    }

    public static Bitmap decodeStream(InputStream inputStream, Rect rect, BitmapFactory.Options options) {
        if (inputStream == null) {
            return null;
        }
        InputStream wrapToMarkSupportedStream = wrapToMarkSupportedStream(inputStream);
        if (webpSupportRequired(getImageHeader(wrapToMarkSupportedStream), 0, 21)) {
            Bitmap nativeDecodeStream = nativeDecodeStream(wrapToMarkSupportedStream, options, getScaleFromOptions(options), getInTempStorageFromOptions(options));
            setWebpBitmapOptions(nativeDecodeStream, options);
            setDefaultPadding(rect);
            return nativeDecodeStream;
        }
        return BitmapFactory.decodeStream(wrapToMarkSupportedStream, rect, options);
    }
}
