package com.qennnsad.aknkaksd.presentation.ui.room.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.qennnsad.aknkaksd.util.o0;

/* loaded from: classes3.dex */
public class WaterTextView extends View {

    /* renamed from: f  reason: collision with root package name */
    private static final String f54314f = "water";

    /* renamed from: a  reason: collision with root package name */
    private String f54315a;

    /* renamed from: b  reason: collision with root package name */
    private int f54316b;

    /* renamed from: c  reason: collision with root package name */
    private int f54317c;

    /* renamed from: d  reason: collision with root package name */
    private Rect f54318d;

    /* renamed from: e  reason: collision with root package name */
    private Paint f54319e;

    public WaterTextView(Context context) {
        this(context, null);
    }

    private void a() {
        this.f54315a = " I Love You ！";
        this.f54316b = -1;
        this.f54317c = 20;
        Paint paint = new Paint();
        this.f54319e = paint;
        paint.setColor(this.f54316b);
        this.f54319e.setTextSize(this.f54317c);
        this.f54319e.setShadowLayer(10.0f, 5.0f, 5.0f, Color.parseColor("#FF000000"));
        this.f54318d = new Rect();
        Paint paint2 = this.f54319e;
        String str = this.f54315a;
        paint2.getTextBounds(str, 0, str.length(), this.f54318d);
        o0.g(f54314f, "Left :" + this.f54318d.left + ",Right:" + this.f54318d.right + ",Top:" + this.f54318d.top + ",Bottom:" + this.f54318d.bottom);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawText(this.f54315a, (getWidth() / 2) - (this.f54318d.width() / 2), (getHeight() / 2) + (this.f54318d.height() / 2), this.f54319e);
        o0.g(f54314f, "getWidth():" + getWidth() + ",getHeight(): " + getHeight());
    }

    @Override // android.view.View
    protected void onMeasure(int i4, int i10) {
        int paddingLeft;
        super.onMeasure(i4, i10);
        int mode = View.MeasureSpec.getMode(i4);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i4);
        int size2 = View.MeasureSpec.getSize(i10);
        o0.g(f54314f, "widthMode:" + mode);
        o0.g(f54314f, "heightMode:" + mode2);
        o0.g(f54314f, "widthSize:" + size);
        o0.g(f54314f, "heightSize:" + size2);
        if (mode == 1073741824) {
            paddingLeft = size;
        } else {
            paddingLeft = (int) (getPaddingLeft() + this.f54318d.width() + getPaddingRight());
        }
        if (mode2 != 1073741824) {
            size = (int) (getPaddingTop() + this.f54318d.height() + getPaddingBottom());
        }
        setMeasuredDimension(paddingLeft, size);
    }

    public void setmText(String str) {
        this.f54315a = str;
    }

    public WaterTextView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WaterTextView(Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        a();
    }
}
