package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* compiled from: MatrixDrawable.java */
/* loaded from: classes.dex */
public class j extends h {

    /* renamed from: e  reason: collision with root package name */
    private Matrix f11480e;
    @r7.h

    /* renamed from: f  reason: collision with root package name */
    private Matrix f11481f;

    /* renamed from: g  reason: collision with root package name */
    private int f11482g;

    /* renamed from: h  reason: collision with root package name */
    private int f11483h;

    public j(Drawable drawable, Matrix matrix) {
        super((Drawable) com.facebook.common.internal.j.i(drawable));
        this.f11482g = 0;
        this.f11483h = 0;
        this.f11480e = matrix;
    }

    private void A() {
        if (this.f11482g == getCurrent().getIntrinsicWidth() && this.f11483h == getCurrent().getIntrinsicHeight()) {
            return;
        }
        z();
    }

    private void z() {
        Drawable current = getCurrent();
        Rect bounds = getBounds();
        int intrinsicWidth = current.getIntrinsicWidth();
        this.f11482g = intrinsicWidth;
        int intrinsicHeight = current.getIntrinsicHeight();
        this.f11483h = intrinsicHeight;
        if (intrinsicWidth > 0 && intrinsicHeight > 0) {
            current.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            this.f11481f = this.f11480e;
            return;
        }
        current.setBounds(bounds);
        this.f11481f = null;
    }

    public Matrix B() {
        return this.f11480e;
    }

    public void C(Matrix matrix) {
        this.f11480e = matrix;
        z();
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        A();
        if (this.f11481f != null) {
            int save = canvas.save();
            canvas.clipRect(getBounds());
            canvas.concat(this.f11481f);
            super.draw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        super.draw(canvas);
    }

    @Override // com.facebook.drawee.drawable.h, com.facebook.drawee.drawable.u
    public void f(Matrix transform) {
        super.f(transform);
        Matrix matrix = this.f11481f;
        if (matrix != null) {
            transform.preConcat(matrix);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        z();
    }

    @Override // com.facebook.drawee.drawable.h
    public Drawable x(@r7.h Drawable newDelegate) {
        Drawable x9 = super.x(newDelegate);
        z();
        return x9;
    }
}
