package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.sentry.protocol.y;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: TransformationUtils.java */
/* loaded from: classes.dex */
public final class e0 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f9220a = "TransformationUtils";

    /* renamed from: b  reason: collision with root package name */
    public static final int f9221b = 6;

    /* renamed from: d  reason: collision with root package name */
    private static final int f9223d = 7;

    /* renamed from: f  reason: collision with root package name */
    private static final Paint f9225f;

    /* renamed from: g  reason: collision with root package name */
    private static final Set<String> f9226g;

    /* renamed from: h  reason: collision with root package name */
    private static final Lock f9227h;

    /* renamed from: c  reason: collision with root package name */
    private static final Paint f9222c = new Paint(6);

    /* renamed from: e  reason: collision with root package name */
    private static final Paint f9224e = new Paint(7);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TransformationUtils.java */
    /* loaded from: classes.dex */
    public class a implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f9228a;

        a(int i4) {
            this.f9228a = i4;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.e0.c
        public void a(Canvas canvas, Paint paint, RectF rectF) {
            int i4 = this.f9228a;
            canvas.drawRoundRect(rectF, i4, i4, paint);
        }
    }

    /* compiled from: TransformationUtils.java */
    /* loaded from: classes.dex */
    class b implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f9229a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f9230b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ float f9231c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ float f9232d;

        b(float f10, float f11, float f12, float f13) {
            this.f9229a = f10;
            this.f9230b = f11;
            this.f9231c = f12;
            this.f9232d = f13;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.e0.c
        public void a(Canvas canvas, Paint paint, RectF rectF) {
            Path path = new Path();
            float f10 = this.f9229a;
            float f11 = this.f9230b;
            float f12 = this.f9231c;
            float f13 = this.f9232d;
            path.addRoundRect(rectF, new float[]{f10, f10, f11, f11, f12, f12, f13, f13}, Path.Direction.CW);
            canvas.drawPath(path, paint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TransformationUtils.java */
    /* loaded from: classes.dex */
    public interface c {
        void a(Canvas canvas, Paint paint, RectF rectF);
    }

    /* compiled from: TransformationUtils.java */
    /* loaded from: classes.dex */
    private static final class d implements Lock {
        d() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
        }

        @Override // java.util.concurrent.locks.Lock
        @NonNull
        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock(long j4, @NonNull TimeUnit timeUnit) throws InterruptedException {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public void unlock() {
        }
    }

    static {
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        f9226g = hashSet;
        f9227h = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new d();
        Paint paint = new Paint(7);
        f9225f = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    private e0() {
    }

    private static void a(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, Matrix matrix) {
        Lock lock = f9227h;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f9222c);
            e(canvas);
            lock.unlock();
        } catch (Throwable th) {
            f9227h.unlock();
            throw th;
        }
    }

    public static Bitmap b(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4, int i10) {
        float width;
        float height;
        if (bitmap.getWidth() == i4 && bitmap.getHeight() == i10) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f10 = 0.0f;
        if (bitmap.getWidth() * i10 > bitmap.getHeight() * i4) {
            width = i10 / bitmap.getHeight();
            f10 = (i4 - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i4 / bitmap.getWidth();
            height = (i10 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (f10 + 0.5f), (int) (height + 0.5f));
        Bitmap e4 = eVar.e(i4, i10, k(bitmap));
        t(bitmap, e4);
        a(bitmap, e4, matrix);
        return e4;
    }

    public static Bitmap c(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4, int i10) {
        if (bitmap.getWidth() <= i4 && bitmap.getHeight() <= i10) {
            if (Log.isLoggable(f9220a, 2)) {
                Log.v(f9220a, "requested target size larger or equal to input, returning input");
            }
            return bitmap;
        }
        if (Log.isLoggable(f9220a, 2)) {
            Log.v(f9220a, "requested target size too big for input, fit centering instead");
        }
        return f(eVar, bitmap, i4, i10);
    }

    public static Bitmap d(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4, int i10) {
        int min = Math.min(i4, i10);
        float f10 = min;
        float f11 = f10 / 2.0f;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float max = Math.max(f10 / width, f10 / height);
        float f12 = width * max;
        float f13 = max * height;
        float f14 = (f10 - f12) / 2.0f;
        float f15 = (f10 - f13) / 2.0f;
        RectF rectF = new RectF(f14, f15, f12 + f14, f13 + f15);
        Bitmap g4 = g(eVar, bitmap);
        Bitmap e4 = eVar.e(min, min, h(bitmap));
        e4.setHasAlpha(true);
        Lock lock = f9227h;
        lock.lock();
        try {
            Canvas canvas = new Canvas(e4);
            canvas.drawCircle(f11, f11, f11, f9224e);
            canvas.drawBitmap(g4, (Rect) null, rectF, f9225f);
            e(canvas);
            lock.unlock();
            if (!g4.equals(bitmap)) {
                eVar.d(g4);
            }
            return e4;
        } catch (Throwable th) {
            f9227h.unlock();
            throw th;
        }
    }

    private static void e(Canvas canvas) {
        canvas.setBitmap(null);
    }

    public static Bitmap f(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4, int i10) {
        if (bitmap.getWidth() == i4 && bitmap.getHeight() == i10) {
            if (Log.isLoggable(f9220a, 2)) {
                Log.v(f9220a, "requested target size matches input, returning input");
            }
            return bitmap;
        }
        float min = Math.min(i4 / bitmap.getWidth(), i10 / bitmap.getHeight());
        int round = Math.round(bitmap.getWidth() * min);
        int round2 = Math.round(bitmap.getHeight() * min);
        if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
            if (Log.isLoggable(f9220a, 2)) {
                Log.v(f9220a, "adjusted target size matches input, returning input");
            }
            return bitmap;
        }
        Bitmap e4 = eVar.e((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), k(bitmap));
        t(bitmap, e4);
        if (Log.isLoggable(f9220a, 2)) {
            Log.v(f9220a, "request: " + i4 + y.b.f83919g + i10);
            Log.v(f9220a, "toFit:   " + bitmap.getWidth() + y.b.f83919g + bitmap.getHeight());
            Log.v(f9220a, "toReuse: " + e4.getWidth() + y.b.f83919g + e4.getHeight());
            StringBuilder sb = new StringBuilder();
            sb.append("minPct:   ");
            sb.append(min);
            Log.v(f9220a, sb.toString());
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        a(bitmap, e4, matrix);
        return e4;
    }

    private static Bitmap g(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap) {
        Bitmap.Config h4 = h(bitmap);
        if (h4.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap e4 = eVar.e(bitmap.getWidth(), bitmap.getHeight(), h4);
        new Canvas(e4).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return e4;
    }

    @NonNull
    private static Bitmap.Config h(@NonNull Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) {
            return Bitmap.Config.RGBA_F16;
        }
        return Bitmap.Config.ARGB_8888;
    }

    public static Lock i() {
        return f9227h;
    }

    public static int j(int i4) {
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

    @NonNull
    private static Bitmap.Config k(@NonNull Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    @VisibleForTesting
    static void l(int i4, Matrix matrix) {
        switch (i4) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return;
            case 3:
                matrix.setRotate(180.0f);
                return;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 6:
                matrix.setRotate(90.0f);
                return;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 8:
                matrix.setRotate(-90.0f);
                return;
            default:
                return;
        }
    }

    public static boolean m(int i4) {
        switch (i4) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public static Bitmap n(@NonNull Bitmap bitmap, int i4) {
        if (i4 != 0) {
            try {
                Matrix matrix = new Matrix();
                matrix.setRotate(i4);
                return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            } catch (Exception e4) {
                if (Log.isLoggable(f9220a, 6)) {
                    Log.e(f9220a, "Exception when trying to orient image", e4);
                    return bitmap;
                }
                return bitmap;
            }
        }
        return bitmap;
    }

    public static Bitmap o(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4) {
        if (m(i4)) {
            Matrix matrix = new Matrix();
            l(i4, matrix);
            RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
            matrix.mapRect(rectF);
            Bitmap e4 = eVar.e(Math.round(rectF.width()), Math.round(rectF.height()), k(bitmap));
            matrix.postTranslate(-rectF.left, -rectF.top);
            e4.setHasAlpha(bitmap.hasAlpha());
            a(bitmap, e4, matrix);
            return e4;
        }
        return bitmap;
    }

    public static Bitmap p(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, float f10, float f11, float f12, float f13) {
        return s(eVar, bitmap, new b(f10, f11, f12, f13));
    }

    public static Bitmap q(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4) {
        com.bumptech.glide.util.m.a(i4 > 0, "roundingRadius must be greater than 0.");
        return s(eVar, bitmap, new a(i4));
    }

    @Deprecated
    public static Bitmap r(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, int i4, int i10, int i11) {
        return q(eVar, bitmap, i11);
    }

    private static Bitmap s(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.e eVar, @NonNull Bitmap bitmap, c cVar) {
        Bitmap.Config h4 = h(bitmap);
        Bitmap g4 = g(eVar, bitmap);
        Bitmap e4 = eVar.e(g4.getWidth(), g4.getHeight(), h4);
        e4.setHasAlpha(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(g4, tileMode, tileMode);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, e4.getWidth(), e4.getHeight());
        Lock lock = f9227h;
        lock.lock();
        try {
            Canvas canvas = new Canvas(e4);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            cVar.a(canvas, paint, rectF);
            e(canvas);
            lock.unlock();
            if (!g4.equals(bitmap)) {
                eVar.d(g4);
            }
            return e4;
        } catch (Throwable th) {
            f9227h.unlock();
            throw th;
        }
    }

    public static void t(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }
}
