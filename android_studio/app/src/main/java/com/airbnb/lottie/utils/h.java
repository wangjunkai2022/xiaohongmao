package com.airbnb.lottie.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import android.provider.Settings;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.content.t;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;

/* compiled from: Utils.java */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final int f5640a = 1000000000;

    /* renamed from: b  reason: collision with root package name */
    private static final PathMeasure f5641b = new PathMeasure();

    /* renamed from: c  reason: collision with root package name */
    private static final Path f5642c = new Path();

    /* renamed from: d  reason: collision with root package name */
    private static final Path f5643d = new Path();

    /* renamed from: e  reason: collision with root package name */
    private static final float[] f5644e = new float[4];

    /* renamed from: f  reason: collision with root package name */
    private static final float f5645f = (float) Math.sqrt(2.0d);

    /* renamed from: g  reason: collision with root package name */
    private static float f5646g = -1.0f;

    private h() {
    }

    public static void a(Path path, float f10, float f11, float f12) {
        com.airbnb.lottie.e.a("applyTrimPathIfNeeded");
        PathMeasure pathMeasure = f5641b;
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f10 == 1.0f && f11 == 0.0f) {
            com.airbnb.lottie.e.b("applyTrimPathIfNeeded");
        } else if (length >= 1.0f && Math.abs((f11 - f10) - 1.0f) >= 0.01d) {
            float f13 = f10 * length;
            float f14 = f11 * length;
            float f15 = f12 * length;
            float min = Math.min(f13, f14) + f15;
            float max = Math.max(f13, f14) + f15;
            if (min >= length && max >= length) {
                min = g.f(min, length);
                max = g.f(max, length);
            }
            if (min < 0.0f) {
                min = g.f(min, length);
            }
            if (max < 0.0f) {
                max = g.f(max, length);
            }
            int i4 = (min > max ? 1 : (min == max ? 0 : -1));
            if (i4 == 0) {
                path.reset();
                com.airbnb.lottie.e.b("applyTrimPathIfNeeded");
                return;
            }
            if (i4 >= 0) {
                min -= length;
            }
            Path path2 = f5642c;
            path2.reset();
            pathMeasure.getSegment(min, max, path2, true);
            if (max > length) {
                Path path3 = f5643d;
                path3.reset();
                pathMeasure.getSegment(0.0f, max % length, path3, true);
                path2.addPath(path3);
            } else if (min < 0.0f) {
                Path path4 = f5643d;
                path4.reset();
                pathMeasure.getSegment(min + length, length, path4, true);
                path2.addPath(path4);
            }
            path.set(path2);
            com.airbnb.lottie.e.b("applyTrimPathIfNeeded");
        } else {
            com.airbnb.lottie.e.b("applyTrimPathIfNeeded");
        }
    }

    public static void b(Path path, @Nullable t tVar) {
        if (tVar == null || tVar.j()) {
            return;
        }
        a(path, ((com.airbnb.lottie.animation.keyframe.c) tVar.h()).n() / 100.0f, ((com.airbnb.lottie.animation.keyframe.c) tVar.d()).n() / 100.0f, ((com.airbnb.lottie.animation.keyframe.c) tVar.f()).n() / 360.0f);
    }

    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e4) {
                throw e4;
            } catch (Exception unused) {
            }
        }
    }

    public static Path d(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 != null && pointF4 != null && (pointF3.length() != 0.0f || pointF4.length() != 0.0f)) {
            float f10 = pointF.x;
            float f11 = pointF2.x;
            float f12 = pointF2.y;
            path.cubicTo(pointF3.x + f10, pointF.y + pointF3.y, f11 + pointF4.x, f12 + pointF4.y, f11, f12);
        } else {
            path.lineTo(pointF2.x, pointF2.y);
        }
        return path;
    }

    public static float e() {
        if (f5646g == -1.0f) {
            f5646g = Resources.getSystem().getDisplayMetrics().density;
        }
        return f5646g;
    }

    public static float f(Context context) {
        return Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    public static float g(Matrix matrix) {
        float[] fArr = f5644e;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f10 = f5645f;
        fArr[2] = f10;
        fArr[3] = f10;
        matrix.mapPoints(fArr);
        return ((float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1])) / 2.0f;
    }

    public static boolean h(Matrix matrix) {
        float[] fArr = f5644e;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 37394.73f;
        fArr[3] = 39575.234f;
        matrix.mapPoints(fArr);
        return fArr[0] == fArr[2] || fArr[1] == fArr[3];
    }

    public static int i(float f10, float f11, float f12, float f13) {
        int i4 = f10 != 0.0f ? (int) (527 * f10) : 17;
        if (f11 != 0.0f) {
            i4 = (int) (i4 * 31 * f11);
        }
        if (f12 != 0.0f) {
            i4 = (int) (i4 * 31 * f12);
        }
        return f13 != 0.0f ? (int) (i4 * 31 * f13) : i4;
    }

    public static boolean j(int i4, int i10, int i11, int i12, int i13, int i14) {
        if (i4 < i12) {
            return false;
        }
        if (i4 > i12) {
            return true;
        }
        if (i10 < i13) {
            return false;
        }
        return i10 > i13 || i11 >= i14;
    }

    public static boolean k(Throwable th) {
        return (th instanceof SocketException) || (th instanceof ClosedChannelException) || (th instanceof InterruptedIOException) || (th instanceof ProtocolException) || (th instanceof SSLException) || (th instanceof UnknownHostException) || (th instanceof UnknownServiceException);
    }

    public static Bitmap l(Path path) {
        RectF rectF = new RectF();
        path.computeBounds(rectF, false);
        Bitmap createBitmap = Bitmap.createBitmap((int) rectF.right, (int) rectF.bottom, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        com.airbnb.lottie.animation.a aVar = new com.airbnb.lottie.animation.a();
        aVar.setAntiAlias(true);
        aVar.setColor(-16776961);
        canvas.drawPath(path, aVar);
        return createBitmap;
    }

    public static Bitmap m(Bitmap bitmap, int i4, int i10) {
        if (bitmap.getWidth() == i4 && bitmap.getHeight() == i10) {
            return bitmap;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i4, i10, true);
        bitmap.recycle();
        return createScaledBitmap;
    }

    public static void n(Canvas canvas, RectF rectF, Paint paint) {
        o(canvas, rectF, paint, 31);
    }

    public static void o(Canvas canvas, RectF rectF, Paint paint, int i4) {
        com.airbnb.lottie.e.a("Utils#saveLayer");
        if (Build.VERSION.SDK_INT < 23) {
            canvas.saveLayer(rectF, paint, i4);
        } else {
            canvas.saveLayer(rectF, paint);
        }
        com.airbnb.lottie.e.b("Utils#saveLayer");
    }
}
