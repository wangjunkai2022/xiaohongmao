package tv.cjump.jni;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.Log;
import androidx.core.internal.view.SupportMenu;
import java.lang.reflect.Field;

/* loaded from: classes5.dex */
public class NativeBitmapFactory {

    /* renamed from: a  reason: collision with root package name */
    static Field f93877a = null;

    /* renamed from: b  reason: collision with root package name */
    static boolean f93878b = false;

    /* renamed from: c  reason: collision with root package name */
    static boolean f93879c = false;

    public static Bitmap a(int i4, int i10, Bitmap.Config config) {
        return b(i4, i10, config, config.equals(Bitmap.Config.ARGB_4444) || config.equals(Bitmap.Config.ARGB_8888));
    }

    public static synchronized Bitmap b(int i4, int i10, Bitmap.Config config, boolean z9) {
        synchronized (NativeBitmapFactory.class) {
            if (f93878b && f93877a != null) {
                return c(i4, i10, config, z9);
            }
            return Bitmap.createBitmap(i4, i10, config);
        }
    }

    private static Bitmap c(int i4, int i10, Bitmap.Config config, boolean z9) {
        return createBitmap(i4, i10, d(config), z9);
    }

    private static native Bitmap createBitmap(int i4, int i10, int i11, boolean z9);

    private static native Bitmap createBitmap19(int i4, int i10, int i11, boolean z9);

    public static int d(Bitmap.Config config) {
        try {
            Field field = f93877a;
            if (field == null) {
                return 0;
            }
            return field.getInt(config);
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
            return 0;
        } catch (IllegalArgumentException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    static void e() {
        try {
            Field declaredField = Bitmap.Config.class.getDeclaredField("nativeInt");
            f93877a = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e4) {
            f93877a = null;
            e4.printStackTrace();
        }
    }

    public static boolean f() {
        return f93878b && f93877a != null;
    }

    public static void g() {
        if (f93879c) {
            return;
        }
        if (!DeviceUtils.h() && !DeviceUtils.i()) {
            f93879c = true;
            f93878b = false;
        } else if (f93878b) {
        } else {
            try {
                if (Build.VERSION.SDK_INT < 23) {
                    System.loadLibrary("ndkbitmap");
                    f93878b = true;
                } else {
                    f93879c = true;
                    f93878b = false;
                }
            } catch (Error e4) {
                e4.printStackTrace();
                f93879c = true;
                f93878b = false;
            } catch (Exception e10) {
                e10.printStackTrace();
                f93879c = true;
                f93878b = false;
            }
            if (f93878b) {
                if (!init()) {
                    release();
                    f93879c = true;
                    f93878b = false;
                } else {
                    e();
                    if (!j()) {
                        release();
                        f93879c = true;
                        f93878b = false;
                    }
                }
            }
            Log.e("NativeBitmapFactory", "loaded" + f93878b);
        }
    }

    public static void h(Bitmap bitmap) {
        bitmap.recycle();
    }

    public static synchronized void i() {
        synchronized (NativeBitmapFactory.class) {
            boolean z9 = f93878b;
            f93877a = null;
            f93878b = false;
            if (z9) {
                release();
            }
        }
    }

    private static native boolean init();

    @SuppressLint({"NewApi"})
    private static boolean j() {
        if (f93877a == null) {
            return false;
        }
        Bitmap bitmap = null;
        try {
            try {
                bitmap = c(2, 2, Bitmap.Config.ARGB_8888, true);
                boolean z9 = bitmap != null && bitmap.getWidth() == 2 && bitmap.getHeight() == 2;
                if (z9) {
                    if (!bitmap.isPremultiplied()) {
                        bitmap.setPremultiplied(true);
                    }
                    Canvas canvas = new Canvas(bitmap);
                    Paint paint = new Paint();
                    paint.setColor(SupportMenu.CATEGORY_MASK);
                    paint.setTextSize(20.0f);
                    canvas.drawRect(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight(), paint);
                    canvas.drawText("TestLib", 0.0f, 0.0f, paint);
                    z9 = bitmap.isPremultiplied();
                }
                if (bitmap != null) {
                    bitmap.recycle();
                }
                return z9;
            } catch (Error unused) {
                if (bitmap != null) {
                    bitmap.recycle();
                }
                return false;
            } catch (Exception e4) {
                Log.e("NativeBitmapFactory", "exception:" + e4.toString());
                if (bitmap != null) {
                    bitmap.recycle();
                }
                return false;
            }
        } catch (Throwable th) {
            if (bitmap != null) {
                bitmap.recycle();
            }
            throw th;
        }
    }

    private static native boolean release();
}
