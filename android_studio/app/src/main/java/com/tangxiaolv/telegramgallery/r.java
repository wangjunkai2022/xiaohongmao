package com.tangxiaolv.telegramgallery;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.TypedValue;
import com.tangxiaolv.telegramgallery.q;

/* compiled from: Theme.java */
/* loaded from: classes3.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    public static final int f58815a = 1090519039;

    /* renamed from: b  reason: collision with root package name */
    public static final int f58816b = 788529152;

    /* renamed from: c  reason: collision with root package name */
    public static final int f58817c = -986896;

    /* renamed from: d  reason: collision with root package name */
    private static Paint f58818d = new Paint(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Theme.java */
    /* loaded from: classes3.dex */
    public class a extends Drawable {
        a() {
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Rect bounds = getBounds();
            canvas.drawCircle(bounds.centerX(), bounds.centerY(), com.tangxiaolv.telegramgallery.Utils.a.g(18.0f), r.f58818d);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i4) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    public static Drawable b(int i4) {
        return c(i4, true);
    }

    public static Drawable c(int i4, boolean z9) {
        a aVar;
        if (z9) {
            f58818d.setColor(i4);
            aVar = new a();
        } else {
            aVar = null;
        }
        return new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{i4}), null, aVar);
    }

    public static int d(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getApplicationContext().getTheme().resolveAttribute(q.d.Y2, typedValue, true);
        return typedValue.data;
    }

    public static int e(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getApplicationContext().getTheme().resolveAttribute(q.d.f57051d3, typedValue, true);
        return typedValue.data;
    }

    public static int f(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getApplicationContext().getTheme().resolveAttribute(q.d.f57133l3, typedValue, true);
        return typedValue.data;
    }
}
