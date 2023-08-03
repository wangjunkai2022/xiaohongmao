package iamutkarshtiwari.github.io.ananas.editimage.utils;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.media.ExifInterface;
import android.os.Environment;
import android.util.Log;
import android.view.Display;
import android.view.View;
import io.sentry.instrumentation.file.l;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* compiled from: BitmapUtils.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f69692a = "BitmapUtils";

    /* renamed from: b  reason: collision with root package name */
    public static final long f69693b = 524288;

    /* compiled from: BitmapUtils.java */
    /* renamed from: iamutkarshtiwari.github.io.ananas.editimage.utils.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0533a {

        /* renamed from: a  reason: collision with root package name */
        public int f69694a;

        /* renamed from: b  reason: collision with root package name */
        public int f69695b;

        public C0533a(int i4, int i10) {
            this.f69694a = i4;
            this.f69695b = i10;
        }
    }

    public static byte[] a(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 30, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] b(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static Bitmap c(byte[] bArr) {
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
    }

    public static int d(BitmapFactory.Options options, int i4, int i10) {
        int i11 = options.outHeight;
        int i12 = options.outWidth;
        int i13 = 1;
        if (i11 > i10 || i12 > i4) {
            int i14 = i11 / 2;
            int i15 = i12 / 2;
            while (i14 / i13 >= i10 && i15 / i13 >= i4) {
                i13 *= 2;
            }
        }
        return i13;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap e(android.graphics.Bitmap r8) {
        /*
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream
            r0.<init>()
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.JPEG
            r2 = 100
            r8.compress(r1, r2, r0)
            byte[] r1 = r0.toByteArray()
            int r1 = r1.length
            r2 = 1024(0x400, float:1.435E-42)
            int r1 = r1 / r2
            if (r1 <= r2) goto L20
            r0.reset()
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.JPEG
            r2 = 50
            r8.compress(r1, r2, r0)
        L20:
            java.io.ByteArrayInputStream r8 = new java.io.ByteArrayInputStream
            byte[] r1 = r0.toByteArray()
            r8.<init>(r1)
            android.graphics.BitmapFactory$Options r1 = new android.graphics.BitmapFactory$Options
            r1.<init>()
            r2 = 1
            r1.inJustDecodeBounds = r2
            r3 = 0
            android.graphics.BitmapFactory.decodeStream(r8, r3, r1)
            r8 = 0
            r1.inJustDecodeBounds = r8
            int r8 = r1.outWidth
            int r4 = r1.outHeight
            r5 = 1145569280(0x44480000, float:800.0)
            r6 = 1139802112(0x43f00000, float:480.0)
            if (r8 <= r4) goto L4b
            float r7 = (float) r8
            int r7 = (r7 > r6 ? 1 : (r7 == r6 ? 0 : -1))
            if (r7 <= 0) goto L4b
            float r8 = (float) r8
            float r8 = r8 / r6
        L49:
            int r8 = (int) r8
            goto L56
        L4b:
            if (r8 >= r4) goto L55
            float r8 = (float) r4
            int r8 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r8 <= 0) goto L55
            float r8 = (float) r4
            float r8 = r8 / r5
            goto L49
        L55:
            r8 = 1
        L56:
            if (r8 > 0) goto L59
            goto L5a
        L59:
            r2 = r8
        L5a:
            r1.inSampleSize = r2
            java.io.ByteArrayInputStream r8 = new java.io.ByteArrayInputStream
            byte[] r0 = r0.toByteArray()
            r8.<init>(r0)
            android.graphics.Bitmap r8 = android.graphics.BitmapFactory.decodeStream(r8, r3, r1)
            android.graphics.Bitmap r8 = f(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: iamutkarshtiwari.github.io.ananas.editimage.utils.a.e(android.graphics.Bitmap):android.graphics.Bitmap");
    }

    private static Bitmap f(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        int i4 = 100;
        while (byteArrayOutputStream.toByteArray().length / 1024 > 100) {
            byteArrayOutputStream.reset();
            bitmap.compress(Bitmap.CompressFormat.JPEG, i4, byteArrayOutputStream);
            i4 -= 10;
        }
        return BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), null, null);
    }

    public static Bitmap g(byte[] bArr) {
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        Matrix matrix = new Matrix();
        matrix.reset();
        matrix.postRotate(90.0f);
        Bitmap createBitmap = Bitmap.createBitmap(decodeByteArray, 0, 0, decodeByteArray.getWidth(), decodeByteArray.getHeight(), matrix, true);
        decodeByteArray.recycle();
        System.gc();
        return createBitmap;
    }

    public static Bitmap h(View view) {
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Drawable background = view.getBackground();
        if (background != null) {
            background.draw(canvas);
        } else {
            canvas.drawColor(-1);
        }
        view.draw(canvas);
        return createBitmap;
    }

    public static C0533a i(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        return new C0533a(options.outWidth, options.outHeight);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap j(java.lang.String r6) {
        /*
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options
            r0.<init>()
            r1 = 1
            r0.inJustDecodeBounds = r1
            android.graphics.BitmapFactory.decodeFile(r6, r0)
            r2 = 0
            r0.inJustDecodeBounds = r2
            int r2 = r0.outWidth
            int r3 = r0.outHeight
            if (r2 <= r3) goto L1f
            float r4 = (float) r2
            r5 = 1139802112(0x43f00000, float:480.0)
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L1f
            float r2 = (float) r2
            float r2 = r2 / r5
        L1d:
            int r2 = (int) r2
            goto L2c
        L1f:
            if (r2 >= r3) goto L2b
            float r2 = (float) r3
            r4 = 1145569280(0x44480000, float:800.0)
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 <= 0) goto L2b
            float r2 = (float) r3
            float r2 = r2 / r4
            goto L1d
        L2b:
            r2 = 1
        L2c:
            if (r2 > 0) goto L2f
            goto L30
        L2f:
            r1 = r2
        L30:
            r0.inSampleSize = r1
            android.graphics.Bitmap r6 = android.graphics.BitmapFactory.decodeFile(r6, r0)
            android.graphics.Bitmap r6 = f(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: iamutkarshtiwari.github.io.ananas.editimage.utils.a.j(java.lang.String):android.graphics.Bitmap");
    }

    public static int k(String str) {
        try {
            int attributeInt = new ExifInterface(new File(str).getAbsolutePath()).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
            if (attributeInt != 3) {
                if (attributeInt != 6) {
                    if (attributeInt != 8) {
                        return 0;
                    }
                    return com.facebook.imagepipeline.common.e.f12206f;
                }
                return 90;
            }
            return com.facebook.imagepipeline.common.e.f12205e;
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public static Bitmap l(String str, int i4, int i10) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.inSampleSize = d(options, i4, i10);
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inJustDecodeBounds = false;
        return p(BitmapFactory.decodeFile(str, options), str);
    }

    public static C0533a m(int i4, int i10, int i11) {
        float f10 = i4 / i10;
        double d4 = i11 / f10;
        return new C0533a((int) (f10 * Math.sqrt(d4)), (int) Math.sqrt(d4));
    }

    public static Bitmap n(Activity activity) {
        View decorView = activity.getWindow().getDecorView();
        decorView.setDrawingCacheEnabled(true);
        decorView.buildDrawingCache();
        return decorView.getDrawingCache();
    }

    public static Bitmap o(View view) {
        view.setDrawingCacheEnabled(true);
        view.buildDrawingCache();
        return view.getDrawingCache();
    }

    public static Bitmap p(Bitmap bitmap, String str) {
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
            if (attributeInt == 3) {
                bitmap = t(bitmap, 180.0f);
            } else if (attributeInt == 6) {
                bitmap = t(bitmap, 90.0f);
            } else if (attributeInt == 8) {
                bitmap = t(bitmap, 270.0f);
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        return bitmap;
    }

    public static Bitmap r(Bitmap bitmap, int i4, int i10) throws OutOfMemoryError {
        return s(bitmap, i4, i10, 0);
    }

    public static Bitmap s(Bitmap bitmap, int i4, int i10, int i11) throws OutOfMemoryError {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (i11 == 90 || i11 == 270) {
            i10 = i4;
            i4 = i10;
        }
        boolean z9 = false;
        if (width > i4 || height > i10) {
            if (width <= height || width <= i4) {
                i4 = (int) (width * (i10 / height));
            } else {
                i10 = (int) (height * (i4 / width));
            }
            z9 = true;
        } else {
            i4 = width;
            i10 = height;
        }
        if (z9 || i11 != 0) {
            if (i11 == 0) {
                return Bitmap.createScaledBitmap(bitmap, i4, i10, true);
            }
            Matrix matrix = new Matrix();
            matrix.postScale(i4 / width, i10 / height);
            matrix.postRotate(i11);
            return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        }
        return bitmap;
    }

    public static Bitmap t(Bitmap bitmap, float f10) {
        Matrix matrix = new Matrix();
        matrix.postRotate(f10);
        try {
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } catch (OutOfMemoryError e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static boolean u(Bitmap bitmap, String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        try {
            FileOutputStream a10 = l.b.a(new FileOutputStream(file), file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 90, a10);
            a10.flush();
            a10.close();
            return true;
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
            return false;
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean v(Bitmap bitmap, String str) {
        FileOutputStream fileOutputStream;
        File externalStorageDirectory;
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.PNG;
        try {
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
            fileOutputStream = null;
        }
        if ("mounted".equals(Environment.getExternalStorageState())) {
            if (Environment.getExternalStorageDirectory().getFreeSpace() < 10000) {
                Log.e("Utils", "存储空间不够");
                return false;
            }
            new File(externalStorageDirectory.getPath() + str).getParentFile().mkdirs();
            String str2 = externalStorageDirectory.getPath() + str;
            fileOutputStream = l.b.d(new FileOutputStream(str2), str2);
            return bitmap.compress(compressFormat, 100, fileOutputStream);
        }
        return false;
    }

    public void q(View view, Activity activity) {
        View decorView = activity.getWindow().getDecorView();
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        decorView.layout(0, 0, defaultDisplay.getWidth(), defaultDisplay.getHeight());
        decorView.setDrawingCacheEnabled(true);
        Bitmap.createBitmap(decorView.getDrawingCache());
    }
}
