package com.facebook.drawee.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;

/* compiled from: RoundedBitmapDrawable.java */
/* loaded from: classes.dex */
public class n extends p {
    private final Paint D;
    private final Paint E;
    @r7.h
    private final Bitmap F;
    @r7.h
    private WeakReference<Bitmap> G;

    public n(Resources res, @r7.h Bitmap bitmap, @r7.h Paint paint) {
        super(new BitmapDrawable(res, bitmap));
        Paint paint2 = new Paint();
        this.D = paint2;
        Paint paint3 = new Paint(1);
        this.E = paint3;
        this.F = bitmap;
        if (paint != null) {
            paint2.set(paint);
        }
        paint2.setFlags(1);
        paint3.setStyle(Paint.Style.STROKE);
    }

    public static n q(Resources res, BitmapDrawable bitmapDrawable) {
        return new n(res, bitmapDrawable.getBitmap(), bitmapDrawable.getPaint());
    }

    private void s() {
        WeakReference<Bitmap> weakReference = this.G;
        if (weakReference == null || weakReference.get() != this.F) {
            this.G = new WeakReference<>(this.F);
            Paint paint = this.D;
            Bitmap bitmap = this.F;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
            this.f11520f = true;
        }
        if (this.f11520f) {
            this.D.getShader().setLocalMatrix(this.f11538x);
            this.f11520f = false;
        }
        this.D.setFilterBitmap(j());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.drawee.drawable.p
    @VisibleForTesting
    public boolean b() {
        return super.b() && this.F != null;
    }

    @Override // com.facebook.drawee.drawable.p, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("RoundedBitmapDrawable#draw");
        }
        if (!b()) {
            super.draw(canvas);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
                return;
            }
            return;
        }
        f();
        e();
        s();
        int save = canvas.save();
        canvas.concat(this.f11535u);
        canvas.drawPath(this.f11519e, this.D);
        float f10 = this.f11518d;
        if (f10 > 0.0f) {
            this.E.setStrokeWidth(f10);
            this.E.setColor(f.d(this.f11521g, this.D.getAlpha()));
            canvas.drawPath(this.f11522h, this.E);
        }
        canvas.restoreToCount(save);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    Paint r() {
        return this.D;
    }

    @Override // com.facebook.drawee.drawable.p, android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        super.setAlpha(alpha);
        if (alpha != this.D.getAlpha()) {
            this.D.setAlpha(alpha);
            super.setAlpha(alpha);
            invalidateSelf();
        }
    }

    @Override // com.facebook.drawee.drawable.p, android.graphics.drawable.Drawable
    public void setColorFilter(@r7.h ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
        this.D.setColorFilter(colorFilter);
    }

    public n(Resources res, @r7.h Bitmap bitmap) {
        this(res, bitmap, null);
    }
}
