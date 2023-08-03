package com.theartofdev.edmodo.cropper;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.util.Log;
import android.util.Pair;
import androidx.exifinterface.media.ExifInterface;
import com.theartofdev.edmodo.cropper.CropImageView;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BitmapUtils.java */
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final Rect f58934a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    static final RectF f58935b = new RectF();

    /* renamed from: c  reason: collision with root package name */
    static final RectF f58936c = new RectF();

    /* renamed from: d  reason: collision with root package name */
    static final float[] f58937d = new float[6];

    /* renamed from: e  reason: collision with root package name */
    static final float[] f58938e = new float[6];

    /* renamed from: f  reason: collision with root package name */
    private static int f58939f;

    /* renamed from: g  reason: collision with root package name */
    static Pair<String, WeakReference<Bitmap>> f58940g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BitmapUtils.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Bitmap f58941a;

        /* renamed from: b  reason: collision with root package name */
        final int f58942b;

        a(Bitmap bitmap, int i4) {
            this.f58941a = bitmap;
            this.f58942b = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BitmapUtils.java */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final Bitmap f58943a;

        /* renamed from: b  reason: collision with root package name */
        final int f58944b;

        b(Bitmap bitmap, int i4) {
            this.f58943a = bitmap;
            this.f58944b = i4;
        }
    }

    c() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b A(Bitmap bitmap, Context context, Uri uri) {
        ExifInterface exifInterface = null;
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                ExifInterface exifInterface2 = new ExifInterface(openInputStream);
                try {
                    openInputStream.close();
                } catch (Exception unused) {
                }
                exifInterface = exifInterface2;
            }
        } catch (Exception unused2) {
        }
        return exifInterface != null ? B(bitmap, exifInterface) : new b(bitmap, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b B(Bitmap bitmap, ExifInterface exifInterface) {
        int attributeInt = exifInterface.getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
        return new b(bitmap, attributeInt != 3 ? attributeInt != 6 ? attributeInt != 8 ? 0 : com.facebook.imagepipeline.common.e.f12206f : 90 : com.facebook.imagepipeline.common.e.f12205e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void C(Context context, Bitmap bitmap, Uri uri, Bitmap.CompressFormat compressFormat, int i4) throws FileNotFoundException {
        OutputStream outputStream = null;
        try {
            outputStream = context.getContentResolver().openOutputStream(uri);
            bitmap.compress(compressFormat, i4, outputStream);
        } finally {
            c(outputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri D(Context context, Bitmap bitmap, Uri uri) {
        boolean z9 = true;
        try {
            if (uri == null) {
                uri = Uri.fromFile(File.createTempFile("aic_state_store_temp", ".jpg", context.getCacheDir()));
            } else if (new File(uri.getPath()).exists()) {
                z9 = false;
            }
            if (z9) {
                C(context, bitmap, uri, Bitmap.CompressFormat.JPEG, 95);
            }
            return uri;
        } catch (Exception e4) {
            Log.w("AIC", "Failed to write bitmap to temp file for image-cropper save instance state", e4);
            return null;
        }
    }

    private static int a(int i4, int i10) {
        if (f58939f == 0) {
            f58939f = o();
        }
        int i11 = 1;
        if (f58939f > 0) {
            while (true) {
                int i12 = i10 / i11;
                int i13 = f58939f;
                if (i12 <= i13 && i4 / i11 <= i13) {
                    break;
                }
                i11 *= 2;
            }
        }
        return i11;
    }

    private static int b(int i4, int i10, int i11, int i12) {
        int i13 = 1;
        if (i10 > i12 || i4 > i11) {
            while ((i10 / 2) / i13 > i12 && (i4 / 2) / i13 > i11) {
                i13 *= 2;
            }
        }
        return i13;
    }

    private static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a d(Context context, Uri uri, float[] fArr, int i4, int i10, int i11, boolean z9, int i12, int i13, int i14, int i15, boolean z10, boolean z11) {
        int i16 = 1;
        do {
            try {
                return e(context, uri, fArr, i4, i10, i11, z9, i12, i13, i14, i15, z10, z11, i16);
            } catch (OutOfMemoryError e4) {
                i16 *= 2;
                if (i16 > 16) {
                    throw new RuntimeException("Failed to handle OOM by sampling (" + i16 + "): " + uri + "\r\n" + e4.getMessage(), e4);
                }
            }
        } while (i16 > 16);
        throw new RuntimeException("Failed to handle OOM by sampling (" + i16 + "): " + uri + "\r\n" + e4.getMessage(), e4);
    }

    private static a e(Context context, Uri uri, float[] fArr, int i4, int i10, int i11, boolean z9, int i12, int i13, int i14, int i15, boolean z10, boolean z11, int i16) {
        Bitmap z12;
        Bitmap bitmap;
        Rect s9 = s(fArr, i10, i11, z9, i12, i13);
        int width = i14 > 0 ? i14 : s9.width();
        int height = i15 > 0 ? i15 : s9.height();
        Bitmap bitmap2 = null;
        int i17 = 1;
        try {
            a m9 = m(context, uri, s9, width, height, i16);
            bitmap2 = m9.f58941a;
            i17 = m9.f58942b;
        } catch (Exception unused) {
        }
        if (bitmap2 != null) {
            try {
                z12 = z(bitmap2, i4, z10, z11);
            } catch (OutOfMemoryError e4) {
                e = e4;
            }
            try {
                if (i4 % 90 != 0) {
                    z12 = i(z12, fArr, s9, i4, z9, i12, i13);
                }
                return new a(z12, i17);
            } catch (OutOfMemoryError e10) {
                e = e10;
                bitmap2 = bitmap;
                if (bitmap2 != null) {
                    bitmap2.recycle();
                }
                throw e;
            }
        }
        return f(context, uri, fArr, i4, z9, i12, i13, i16, s9, width, height, z10, z11);
    }

    private static a f(Context context, Uri uri, float[] fArr, int i4, boolean z9, int i10, int i11, int i12, Rect rect, int i13, int i14, boolean z10, boolean z11) {
        Bitmap bitmap = null;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            int b10 = b(rect.width(), rect.height(), i13, i14) * i12;
            options.inSampleSize = b10;
            Bitmap j4 = j(context.getContentResolver(), uri, options);
            if (j4 != null) {
                try {
                    int length = fArr.length;
                    float[] fArr2 = new float[length];
                    System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                    for (int i15 = 0; i15 < length; i15++) {
                        fArr2[i15] = fArr2[i15] / options.inSampleSize;
                    }
                    bitmap = h(j4, fArr2, i4, z9, i10, i11, 1.0f, z10, z11);
                    if (bitmap != j4) {
                        j4.recycle();
                    }
                } catch (Throwable th) {
                    j4.recycle();
                    throw th;
                }
            }
            return new a(bitmap, b10);
        } catch (Exception e4) {
            throw new RuntimeException("Failed to load sampled bitmap: " + uri + "\r\n" + e4.getMessage(), e4);
        } catch (OutOfMemoryError e10) {
            if (0 != 0) {
                bitmap.recycle();
            }
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a g(Bitmap bitmap, float[] fArr, int i4, boolean z9, int i10, int i11, boolean z10, boolean z11) {
        int i12 = 1;
        do {
            try {
                return new a(h(bitmap, fArr, i4, z9, i10, i11, 1.0f / i12, z10, z11), i12);
            } catch (OutOfMemoryError e4) {
                i12 *= 2;
                if (i12 > 8) {
                    throw e4;
                }
            }
        } while (i12 > 8);
        throw e4;
    }

    private static Bitmap h(Bitmap bitmap, float[] fArr, int i4, boolean z9, int i10, int i11, float f10, boolean z10, boolean z11) {
        float f11 = f10;
        Rect s9 = s(fArr, bitmap.getWidth(), bitmap.getHeight(), z9, i10, i11);
        Matrix matrix = new Matrix();
        matrix.setRotate(i4, bitmap.getWidth() / 2, bitmap.getHeight() / 2);
        float f12 = z10 ? -f11 : f11;
        if (z11) {
            f11 = -f11;
        }
        matrix.postScale(f12, f11);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, s9.left, s9.top, s9.width(), s9.height(), matrix, true);
        if (createBitmap == bitmap) {
            createBitmap = bitmap.copy(bitmap.getConfig(), false);
        }
        return i4 % 90 != 0 ? i(createBitmap, fArr, s9, i4, z9, i10, i11) : createBitmap;
    }

    private static Bitmap i(Bitmap bitmap, float[] fArr, Rect rect, int i4, boolean z9, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        if (i4 % 90 != 0) {
            double radians = Math.toRadians(i4);
            int i15 = (i4 < 90 || (i4 > 180 && i4 < 270)) ? rect.left : rect.right;
            int i16 = 0;
            int i17 = 0;
            while (true) {
                if (i17 >= fArr.length) {
                    i12 = 0;
                    i13 = 0;
                    i14 = 0;
                    break;
                } else if (fArr[i17] >= i15 - 1 && fArr[i17] <= i15 + 1) {
                    int i18 = i17 + 1;
                    i16 = (int) Math.abs(Math.sin(radians) * (rect.bottom - fArr[i18]));
                    i13 = (int) Math.abs(Math.cos(radians) * (fArr[i18] - rect.top));
                    i14 = (int) Math.abs((fArr[i18] - rect.top) / Math.sin(radians));
                    i12 = (int) Math.abs((rect.bottom - fArr[i18]) / Math.cos(radians));
                    break;
                } else {
                    i17 += 2;
                }
            }
            rect.set(i16, i13, i14 + i16, i12 + i13);
            if (z9) {
                n(rect, i10, i11);
            }
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.width(), rect.height());
            if (bitmap != createBitmap) {
                bitmap.recycle();
            }
            return createBitmap;
        }
        return bitmap;
    }

    private static Bitmap j(ContentResolver contentResolver, Uri uri, BitmapFactory.Options options) throws FileNotFoundException {
        do {
            InputStream inputStream = null;
            try {
                try {
                    inputStream = contentResolver.openInputStream(uri);
                    return BitmapFactory.decodeStream(inputStream, f58934a, options);
                } catch (OutOfMemoryError unused) {
                    options.inSampleSize *= 2;
                    c(inputStream);
                    if (options.inSampleSize > 512) {
                        throw new RuntimeException("Failed to decode image: " + uri);
                    }
                }
            } finally {
                c(inputStream);
            }
        } while (options.inSampleSize > 512);
        throw new RuntimeException("Failed to decode image: " + uri);
    }

    private static BitmapFactory.Options k(ContentResolver contentResolver, Uri uri) throws FileNotFoundException {
        InputStream inputStream;
        try {
            inputStream = contentResolver.openInputStream(uri);
        } catch (Throwable th) {
            th = th;
            inputStream = null;
        }
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(inputStream, f58934a, options);
            options.inJustDecodeBounds = false;
            c(inputStream);
            return options;
        } catch (Throwable th2) {
            th = th2;
            c(inputStream);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a l(Context context, Uri uri, int i4, int i10) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            BitmapFactory.Options k10 = k(contentResolver, uri);
            int i11 = k10.outWidth;
            if (i11 == -1 && k10.outHeight == -1) {
                throw new RuntimeException("File is not a picture");
            }
            k10.inSampleSize = Math.max(b(i11, k10.outHeight, i4, i10), a(k10.outWidth, k10.outHeight));
            return new a(j(contentResolver, uri, k10), k10.inSampleSize);
        } catch (Exception e4) {
            throw new RuntimeException("Failed to load sampled bitmap: " + uri + "\r\n" + e4.getMessage(), e4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.theartofdev.edmodo.cropper.c.a m(android.content.Context r4, android.net.Uri r5, android.graphics.Rect r6, int r7, int r8, int r9) {
        /*
            r0 = 0
            android.graphics.BitmapFactory$Options r1 = new android.graphics.BitmapFactory$Options     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            r1.<init>()     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            int r2 = r6.width()     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            int r3 = r6.height()     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            int r7 = b(r2, r3, r7, r8)     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            int r9 = r9 * r7
            r1.inSampleSize = r9     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            java.io.InputStream r4 = r4.openInputStream(r5)     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
            r7 = 0
            android.graphics.BitmapRegionDecoder r7 = android.graphics.BitmapRegionDecoder.newInstance(r4, r7)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L56
        L23:
            com.theartofdev.edmodo.cropper.c$a r8 = new com.theartofdev.edmodo.cropper.c$a     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37 java.lang.OutOfMemoryError -> L39
            android.graphics.Bitmap r9 = r7.decodeRegion(r6, r1)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37 java.lang.OutOfMemoryError -> L39
            int r2 = r1.inSampleSize     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37 java.lang.OutOfMemoryError -> L39
            r8.<init>(r9, r2)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37 java.lang.OutOfMemoryError -> L39
            c(r4)
            r7.recycle()
            return r8
        L35:
            r5 = move-exception
            goto L54
        L37:
            r6 = move-exception
            goto L58
        L39:
            int r8 = r1.inSampleSize     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            int r8 = r8 * 2
            r1.inSampleSize = r8     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L37
            r9 = 512(0x200, float:7.175E-43)
            if (r8 <= r9) goto L23
            c(r4)
            if (r7 == 0) goto L4b
            r7.recycle()
        L4b:
            com.theartofdev.edmodo.cropper.c$a r4 = new com.theartofdev.edmodo.cropper.c$a
            r5 = 1
            r4.<init>(r0, r5)
            return r4
        L52:
            r5 = move-exception
            r7 = r0
        L54:
            r0 = r4
            goto L83
        L56:
            r6 = move-exception
            r7 = r0
        L58:
            r0 = r4
            goto L5f
        L5a:
            r5 = move-exception
            r7 = r0
            goto L83
        L5d:
            r6 = move-exception
            r7 = r0
        L5f:
            java.lang.RuntimeException r4 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L82
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L82
            r8.<init>()     // Catch: java.lang.Throwable -> L82
            java.lang.String r9 = "Failed to load sampled bitmap: "
            r8.append(r9)     // Catch: java.lang.Throwable -> L82
            r8.append(r5)     // Catch: java.lang.Throwable -> L82
            java.lang.String r5 = "\r\n"
            r8.append(r5)     // Catch: java.lang.Throwable -> L82
            java.lang.String r5 = r6.getMessage()     // Catch: java.lang.Throwable -> L82
            r8.append(r5)     // Catch: java.lang.Throwable -> L82
            java.lang.String r5 = r8.toString()     // Catch: java.lang.Throwable -> L82
            r4.<init>(r5, r6)     // Catch: java.lang.Throwable -> L82
            throw r4     // Catch: java.lang.Throwable -> L82
        L82:
            r5 = move-exception
        L83:
            c(r0)
            if (r7 == 0) goto L8b
            r7.recycle()
        L8b:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.c.m(android.content.Context, android.net.Uri, android.graphics.Rect, int, int, int):com.theartofdev.edmodo.cropper.c$a");
    }

    private static void n(Rect rect, int i4, int i10) {
        if (i4 != i10 || rect.width() == rect.height()) {
            return;
        }
        if (rect.height() > rect.width()) {
            rect.bottom -= rect.height() - rect.width();
        } else {
            rect.right -= rect.width() - rect.height();
        }
    }

    private static int o() {
        try {
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            egl10.eglInitialize(eglGetDisplay, new int[2]);
            int[] iArr = new int[1];
            egl10.eglGetConfigs(eglGetDisplay, null, 0, iArr);
            EGLConfig[] eGLConfigArr = new EGLConfig[iArr[0]];
            egl10.eglGetConfigs(eglGetDisplay, eGLConfigArr, iArr[0], iArr);
            int[] iArr2 = new int[1];
            int i4 = 0;
            for (int i10 = 0; i10 < iArr[0]; i10++) {
                egl10.eglGetConfigAttrib(eglGetDisplay, eGLConfigArr[i10], 12332, iArr2);
                if (i4 < iArr2[0]) {
                    i4 = iArr2[0];
                }
            }
            egl10.eglTerminate(eglGetDisplay);
            return Math.max(i4, 2048);
        } catch (Exception unused) {
            return 2048;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float p(float[] fArr) {
        return Math.max(Math.max(Math.max(fArr[1], fArr[3]), fArr[5]), fArr[7]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float q(float[] fArr) {
        return (v(fArr) + u(fArr)) / 2.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float r(float[] fArr) {
        return (p(fArr) + w(fArr)) / 2.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Rect s(float[] fArr, int i4, int i10, boolean z9, int i11, int i12) {
        Rect rect = new Rect(Math.round(Math.max(0.0f, u(fArr))), Math.round(Math.max(0.0f, w(fArr))), Math.round(Math.min(i4, v(fArr))), Math.round(Math.min(i10, p(fArr))));
        if (z9) {
            n(rect, i11, i12);
        }
        return rect;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float t(float[] fArr) {
        return p(fArr) - w(fArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float u(float[] fArr) {
        return Math.min(Math.min(Math.min(fArr[0], fArr[2]), fArr[4]), fArr[6]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float v(float[] fArr) {
        return Math.max(Math.max(Math.max(fArr[0], fArr[2]), fArr[4]), fArr[6]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float w(float[] fArr) {
        return Math.min(Math.min(Math.min(fArr[1], fArr[3]), fArr[5]), fArr[7]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float x(float[] fArr) {
        return v(fArr) - u(fArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bitmap y(Bitmap bitmap, int i4, int i10, CropImageView.RequestSizeOptions requestSizeOptions) {
        if (i4 > 0 && i10 > 0) {
            try {
                CropImageView.RequestSizeOptions requestSizeOptions2 = CropImageView.RequestSizeOptions.RESIZE_FIT;
                if (requestSizeOptions == requestSizeOptions2 || requestSizeOptions == CropImageView.RequestSizeOptions.RESIZE_INSIDE || requestSizeOptions == CropImageView.RequestSizeOptions.RESIZE_EXACT) {
                    Bitmap bitmap2 = null;
                    if (requestSizeOptions == CropImageView.RequestSizeOptions.RESIZE_EXACT) {
                        bitmap2 = Bitmap.createScaledBitmap(bitmap, i4, i10, false);
                    } else {
                        float width = bitmap.getWidth();
                        float height = bitmap.getHeight();
                        float max = Math.max(width / i4, height / i10);
                        if (max > 1.0f || requestSizeOptions == requestSizeOptions2) {
                            bitmap2 = Bitmap.createScaledBitmap(bitmap, (int) (width / max), (int) (height / max), false);
                        }
                    }
                    if (bitmap2 != null) {
                        if (bitmap2 != bitmap) {
                            bitmap.recycle();
                        }
                        return bitmap2;
                    }
                }
            } catch (Exception e4) {
                Log.w("AIC", "Failed to resize cropped image, return bitmap before resize", e4);
            }
        }
        return bitmap;
    }

    private static Bitmap z(Bitmap bitmap, int i4, boolean z9, boolean z10) {
        if (i4 > 0 || z9 || z10) {
            Matrix matrix = new Matrix();
            matrix.setRotate(i4);
            matrix.postScale(z9 ? -1.0f : 1.0f, z10 ? -1.0f : 1.0f);
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
            if (createBitmap != bitmap) {
                bitmap.recycle();
            }
            return createBitmap;
        }
        return bitmap;
    }
}
