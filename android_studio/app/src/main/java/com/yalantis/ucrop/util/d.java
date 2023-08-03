package com.yalantis.ucrop.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* compiled from: FastBitmapDrawable.java */
/* loaded from: classes3.dex */
public class d extends Drawable {

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f61116b;

    /* renamed from: d  reason: collision with root package name */
    private int f61118d;

    /* renamed from: e  reason: collision with root package name */
    private int f61119e;

    /* renamed from: a  reason: collision with root package name */
    private final Paint f61115a = new Paint(2);

    /* renamed from: c  reason: collision with root package name */
    private int f61117c = 255;

    public d(Bitmap bitmap) {
        b(bitmap);
    }

    public Bitmap a() {
        return this.f61116b;
    }

    public void b(Bitmap bitmap) {
        this.f61116b = bitmap;
        if (bitmap != null) {
            this.f61118d = bitmap.getWidth();
            this.f61119e = this.f61116b.getHeight();
            return;
        }
        this.f61119e = 0;
        this.f61118d = 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Bitmap bitmap = this.f61116b;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        canvas.drawBitmap(this.f61116b, (Rect) null, getBounds(), this.f61115a);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f61117c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f61119e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f61118d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f61119e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f61118d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i4) {
        this.f61117c = i4;
        this.f61115a.setAlpha(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f61115a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z9) {
        this.f61115a.setFilterBitmap(z9);
    }
}
