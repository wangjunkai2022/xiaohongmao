package iamutkarshtiwari.github.io.ananas.editimage.utils;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.TypedValue;

/* compiled from: PaintUtil.java */
/* loaded from: classes3.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final int f69701a = -1;

    /* renamed from: b  reason: collision with root package name */
    private static final String f69702b = "#AAFFFFFF";

    /* renamed from: c  reason: collision with root package name */
    private static final String f69703c = "#B0000000";

    /* renamed from: d  reason: collision with root package name */
    private static final float f69704d = 3.0f;

    /* renamed from: e  reason: collision with root package name */
    private static final float f69705e = 5.0f;

    /* renamed from: f  reason: collision with root package name */
    private static final float f69706f = 1.0f;

    public static float a() {
        return f69705e;
    }

    public static float b() {
        return 3.0f;
    }

    public static Paint c(Context context) {
        Paint paint = new Paint();
        paint.setColor(Color.parseColor(f69703c));
        return paint;
    }

    public static Paint d(Context context) {
        float applyDimension = TypedValue.applyDimension(1, 3.0f, context.getResources().getDisplayMetrics());
        Paint paint = new Paint();
        paint.setColor(Color.parseColor(f69702b));
        paint.setStrokeWidth(applyDimension);
        paint.setStyle(Paint.Style.STROKE);
        return paint;
    }

    public static Paint e(Context context) {
        float applyDimension = TypedValue.applyDimension(1, f69705e, context.getResources().getDisplayMetrics());
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setStrokeWidth(applyDimension);
        paint.setStyle(Paint.Style.STROKE);
        return paint;
    }

    public static Paint f() {
        Paint paint = new Paint();
        paint.setColor(Color.parseColor(f69702b));
        paint.setStrokeWidth(1.0f);
        return paint;
    }

    public static Paint g() {
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setStrokeWidth(3.0f);
        return paint;
    }
}
