package com.yalantis.ucrop.view.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.yalantis.ucrop.c;
import com.yalantis.ucrop.model.AspectRatio;
import java.util.Locale;

/* loaded from: classes3.dex */
public class AspectRatioTextView extends AppCompatTextView {

    /* renamed from: a  reason: collision with root package name */
    private final float f61225a;

    /* renamed from: b  reason: collision with root package name */
    private final Rect f61226b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f61227c;

    /* renamed from: d  reason: collision with root package name */
    private int f61228d;

    /* renamed from: e  reason: collision with root package name */
    private float f61229e;

    /* renamed from: f  reason: collision with root package name */
    private String f61230f;

    /* renamed from: g  reason: collision with root package name */
    private float f61231g;

    /* renamed from: h  reason: collision with root package name */
    private float f61232h;

    public AspectRatioTextView(Context context) {
        this(context, null);
    }

    private void a(@ColorInt int i4) {
        Paint paint = this.f61227c;
        if (paint != null) {
            paint.setColor(i4);
        }
        setTextColor(new ColorStateList(new int[][]{new int[]{16842913}, new int[]{0}}, new int[]{i4, ContextCompat.getColor(getContext(), c.e.f60181b1)}));
    }

    private void c(@NonNull TypedArray typedArray) {
        setGravity(1);
        this.f61230f = typedArray.getString(c.o.f60971y8);
        this.f61231g = typedArray.getFloat(c.o.f60981z8, 0.0f);
        float f10 = typedArray.getFloat(c.o.A8, 0.0f);
        this.f61232h = f10;
        float f11 = this.f61231g;
        if (f11 != 0.0f && f10 != 0.0f) {
            this.f61229e = f11 / f10;
        } else {
            this.f61229e = 0.0f;
        }
        this.f61228d = getContext().getResources().getDimensionPixelSize(c.f.G1);
        Paint paint = new Paint(1);
        this.f61227c = paint;
        paint.setStyle(Paint.Style.FILL);
        d();
        a(getResources().getColor(c.e.f60184c1));
        typedArray.recycle();
    }

    private void d() {
        if (TextUtils.isEmpty(this.f61230f)) {
            setText(String.format(Locale.US, "%d:%d", Integer.valueOf((int) this.f61231g), Integer.valueOf((int) this.f61232h)));
        } else {
            setText(this.f61230f);
        }
    }

    private void e() {
        if (this.f61229e != 0.0f) {
            float f10 = this.f61231g;
            float f11 = this.f61232h;
            this.f61231g = f11;
            this.f61232h = f10;
            this.f61229e = f11 / f10;
        }
    }

    public float b(boolean z9) {
        if (z9) {
            e();
            d();
        }
        return this.f61229e;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isSelected()) {
            canvas.getClipBounds(this.f61226b);
            Rect rect = this.f61226b;
            float f10 = rect.bottom - (rect.top / 2.0f);
            int i4 = this.f61228d;
            canvas.drawCircle((rect.right - rect.left) / 2.0f, f10 - (i4 * 1.5f), i4 / 2.0f, this.f61227c);
        }
    }

    public void setActiveColor(@ColorInt int i4) {
        a(i4);
        invalidate();
    }

    public void setAspectRatio(@NonNull AspectRatio aspectRatio) {
        this.f61230f = aspectRatio.getAspectRatioTitle();
        this.f61231g = aspectRatio.getAspectRatioX();
        float aspectRatioY = aspectRatio.getAspectRatioY();
        this.f61232h = aspectRatioY;
        float f10 = this.f61231g;
        if (f10 != 0.0f && aspectRatioY != 0.0f) {
            this.f61229e = f10 / aspectRatioY;
        } else {
            this.f61229e = 0.0f;
        }
        d();
    }

    public AspectRatioTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AspectRatioTextView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f61225a = 1.5f;
        this.f61226b = new Rect();
        c(context.obtainStyledAttributes(attributeSet, c.o.f60961x8));
    }

    @TargetApi(21)
    public AspectRatioTextView(Context context, AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4);
        this.f61225a = 1.5f;
        this.f61226b = new Rect();
        c(context.obtainStyledAttributes(attributeSet, c.o.f60961x8));
    }
}
