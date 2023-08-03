package com.qennnsad.aknkaksd.presentation.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import com.qennnsad.aknkaksd.g;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public class StrokeTextView extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private final TextPaint f54347a;

    /* renamed from: b  reason: collision with root package name */
    private final int f54348b;

    /* renamed from: c  reason: collision with root package name */
    private final int f54349c;

    public StrokeTextView(Context context, int i4, int i10) {
        super(context);
        this.f54347a = getPaint();
        this.f54348b = i10;
        this.f54349c = i4;
    }

    private void setTextColorUseReflection(int i4) {
        try {
            Field declaredField = TextView.class.getDeclaredField("mCurTextColor");
            declaredField.setAccessible(true);
            declaredField.set(this, Integer.valueOf(i4));
            declaredField.setAccessible(false);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException e4) {
            e4.printStackTrace();
        }
        this.f54347a.setColor(i4);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        setTextColorUseReflection(this.f54349c);
        this.f54347a.setStrokeWidth(5.0f);
        this.f54347a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f54347a.setFakeBoldText(true);
        this.f54347a.setShadowLayer(1.0f, 0.0f, 0.0f, 0);
        super.onDraw(canvas);
        setTextColorUseReflection(this.f54348b);
        this.f54347a.setStrokeWidth(0.0f);
        this.f54347a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f54347a.setFakeBoldText(false);
        this.f54347a.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        super.onDraw(canvas);
    }

    public StrokeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54347a = getPaint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.u.RE);
        this.f54348b = obtainStyledAttributes.getColor(0, 16777215);
        this.f54349c = obtainStyledAttributes.getColor(1, 16777215);
        obtainStyledAttributes.recycle();
    }
}
