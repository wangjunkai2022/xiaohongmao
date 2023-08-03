package com.yalantis.ucrop.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: BitmapLoadUtils.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f61112a = "content";

    /* renamed from: b  reason: collision with root package name */
    private static final String f61113b = "BitmapLoadUtils";

    public static int a(@NonNull BitmapFactory.Options options, int i4, int i10) {
        int i11 = options.outHeight;
        int i12 = options.outWidth;
        int i13 = 1;
        if (i11 > i10 || i12 > i4) {
            while (true) {
                if (i11 / i13 <= i10 && i12 / i13 <= i4) {
                    break;
                }
                i13 *= 2;
            }
        }
        return i13;
    }

    public static int b(@NonNull Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Point point = new Point();
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getSize(point);
        }
        int sqrt = (int) Math.sqrt(Math.pow(point.x, 2.0d) + Math.pow(point.y, 2.0d));
        Canvas canvas = new Canvas();
        int min = Math.min(canvas.getMaximumBitmapWidth(), canvas.getMaximumBitmapHeight());
        if (min > 0) {
            sqrt = Math.min(sqrt, min);
        }
        int c10 = c.c();
        if (c10 > 0) {
            sqrt = Math.min(sqrt, c10);
        }
        Log.d(f61113b, "maxBitmapSize: " + sqrt);
        return sqrt;
    }

    public static void c(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void d(@NonNull Context context, @NonNull Uri uri, @Nullable Uri uri2, int i4, int i10, a6.b bVar) {
        new com.yalantis.ucrop.task.b(context, uri, uri2, i4, i10, bVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static int e(int i4) {
        switch (i4) {
            case 3:
            case 4:
                return com.facebook.imagepipeline.common.e.f12205e;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return com.facebook.imagepipeline.common.e.f12206f;
            default:
                return 0;
        }
    }

    public static int f(int i4) {
        return (i4 == 2 || i4 == 7 || i4 == 4 || i4 == 5) ? -1 : 1;
    }

    public static int g(@NonNull Context context, @NonNull Uri uri) {
        int i4 = 0;
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            if (openInputStream == null) {
                return 0;
            }
            i4 = new f(openInputStream).g();
            c(openInputStream);
            return i4;
        } catch (IOException e4) {
            Log.e(f61113b, "getExifOrientation: " + uri.toString(), e4);
            return i4;
        }
    }

    public static boolean h(Uri uri) {
        return uri != null && "content".equals(uri.getScheme());
    }

    public static Bitmap i(@NonNull Bitmap bitmap, @NonNull Matrix matrix) {
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            return !bitmap.sameAs(createBitmap) ? createBitmap : bitmap;
        } catch (OutOfMemoryError e4) {
            Log.e(f61113b, "transformBitmap: ", e4);
            return bitmap;
        }
    }
}
