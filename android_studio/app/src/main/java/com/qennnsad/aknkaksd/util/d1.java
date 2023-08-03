package com.qennnsad.aknkaksd.util;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.style.ReplacementSpan;

/* compiled from: RadiusBackgroundSpan.java */
/* loaded from: classes3.dex */
public class d1 extends ReplacementSpan {

    /* renamed from: a  reason: collision with root package name */
    private int f54593a;

    /* renamed from: b  reason: collision with root package name */
    private int f54594b;

    /* renamed from: c  reason: collision with root package name */
    private int f54595c;

    public d1(int i4, int i10) {
        this.f54594b = i4;
        this.f54595c = i10;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i4, int i10, float f10, int i11, int i12, int i13, Paint paint) {
        paint.getColor();
        int parseColor = Color.parseColor("#fafafa");
        paint.setColor(this.f54594b);
        paint.setAntiAlias(true);
        float f11 = i12;
        RectF rectF = new RectF(f10, paint.ascent() + f11, this.f54593a + f10, paint.descent() + f11);
        int i14 = this.f54595c;
        canvas.drawRoundRect(rectF, i14, i14, paint);
        paint.setColor(parseColor);
        canvas.drawText(charSequence, i4, i10, f10 + this.f54595c, f11, paint);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i4, int i10, Paint.FontMetricsInt fontMetricsInt) {
        int measureText = (int) (paint.measureText(charSequence, i4, i10) + (this.f54595c * 2));
        this.f54593a = measureText;
        return measureText;
    }
}
