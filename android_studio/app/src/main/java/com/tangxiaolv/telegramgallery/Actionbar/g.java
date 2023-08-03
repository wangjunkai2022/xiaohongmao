package com.tangxiaolv.telegramgallery.Actionbar;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.animation.DecelerateInterpolator;

/* compiled from: MenuDrawable.java */
/* loaded from: classes3.dex */
public class g extends Drawable {

    /* renamed from: c  reason: collision with root package name */
    private long f56053c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f56054d;

    /* renamed from: e  reason: collision with root package name */
    private float f56055e;

    /* renamed from: f  reason: collision with root package name */
    private float f56056f;

    /* renamed from: g  reason: collision with root package name */
    private int f56057g;

    /* renamed from: a  reason: collision with root package name */
    private Paint f56051a = new Paint(1);

    /* renamed from: b  reason: collision with root package name */
    private boolean f56052b = false;

    /* renamed from: h  reason: collision with root package name */
    private DecelerateInterpolator f56058h = new DecelerateInterpolator();

    public g() {
        this.f56051a.setColor(-1);
        this.f56051a.setStrokeWidth(com.tangxiaolv.telegramgallery.Utils.a.g(2.0f));
    }

    public void a(float f10, boolean z9) {
        this.f56053c = 0L;
        float f11 = this.f56056f;
        if (f11 == 1.0f) {
            this.f56052b = true;
        } else if (f11 == 0.0f) {
            this.f56052b = false;
        }
        this.f56053c = 0L;
        if (z9) {
            if (f11 < f10) {
                this.f56057g = (int) (f11 * 300.0f);
            } else {
                this.f56057g = (int) ((1.0f - f11) * 300.0f);
            }
            this.f56053c = System.currentTimeMillis();
            this.f56055e = f10;
        } else {
            this.f56056f = f10;
            this.f56055e = f10;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f56056f != this.f56055e) {
            if (this.f56053c != 0) {
                int currentTimeMillis = (int) (this.f56057g + (System.currentTimeMillis() - this.f56053c));
                this.f56057g = currentTimeMillis;
                if (currentTimeMillis >= 300) {
                    this.f56056f = this.f56055e;
                } else if (this.f56056f < this.f56055e) {
                    this.f56056f = this.f56058h.getInterpolation(currentTimeMillis / 300.0f) * this.f56055e;
                } else {
                    this.f56056f = 1.0f - this.f56058h.getInterpolation(currentTimeMillis / 300.0f);
                }
            }
            this.f56053c = System.currentTimeMillis();
            invalidateSelf();
        }
        canvas.save();
        canvas.translate(getIntrinsicWidth() / 2, getIntrinsicHeight() / 2);
        canvas.rotate(this.f56056f * (this.f56052b ? -180 : com.facebook.imagepipeline.common.e.f12205e));
        canvas.drawLine(-com.tangxiaolv.telegramgallery.Utils.a.g(9.0f), 0.0f, com.tangxiaolv.telegramgallery.Utils.a.g(9.0f) - (com.tangxiaolv.telegramgallery.Utils.a.g(3.0f) * this.f56056f), 0.0f, this.f56051a);
        float g4 = (com.tangxiaolv.telegramgallery.Utils.a.g(5.0f) * (1.0f - Math.abs(this.f56056f))) - (com.tangxiaolv.telegramgallery.Utils.a.g(0.5f) * Math.abs(this.f56056f));
        float g10 = com.tangxiaolv.telegramgallery.Utils.a.g(9.0f) - (com.tangxiaolv.telegramgallery.Utils.a.g(2.5f) * Math.abs(this.f56056f));
        float g11 = com.tangxiaolv.telegramgallery.Utils.a.g(5.0f) + (com.tangxiaolv.telegramgallery.Utils.a.g(2.0f) * Math.abs(this.f56056f));
        float g12 = (-com.tangxiaolv.telegramgallery.Utils.a.g(9.0f)) + (com.tangxiaolv.telegramgallery.Utils.a.g(7.5f) * Math.abs(this.f56056f));
        canvas.drawLine(g12, -g11, g10, -g4, this.f56051a);
        canvas.drawLine(g12, g11, g10, g4, this.f56051a);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return com.tangxiaolv.telegramgallery.Utils.a.g(24.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return com.tangxiaolv.telegramgallery.Utils.a.g(24.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i4) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
