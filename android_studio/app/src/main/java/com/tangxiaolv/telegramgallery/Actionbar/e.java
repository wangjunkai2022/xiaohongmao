package com.tangxiaolv.telegramgallery.Actionbar;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.animation.DecelerateInterpolator;
import com.google.android.exoplayer2.extractor.ts.h0;

/* compiled from: BackDrawable.java */
/* loaded from: classes3.dex */
public class e extends Drawable {

    /* renamed from: c  reason: collision with root package name */
    private long f56033c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f56034d;

    /* renamed from: e  reason: collision with root package name */
    private float f56035e;

    /* renamed from: f  reason: collision with root package name */
    private float f56036f;

    /* renamed from: g  reason: collision with root package name */
    private int f56037g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f56038h;

    /* renamed from: a  reason: collision with root package name */
    private Paint f56031a = new Paint(1);

    /* renamed from: b  reason: collision with root package name */
    private boolean f56032b = false;

    /* renamed from: i  reason: collision with root package name */
    private DecelerateInterpolator f56039i = new DecelerateInterpolator();

    public e(boolean z9) {
        this.f56031a.setColor(-1);
        this.f56031a.setStrokeWidth(com.tangxiaolv.telegramgallery.Utils.a.g(2.0f));
        this.f56038h = z9;
    }

    public void a(float f10, boolean z9) {
        this.f56033c = 0L;
        float f11 = this.f56036f;
        if (f11 == 1.0f) {
            this.f56032b = true;
        } else if (f11 == 0.0f) {
            this.f56032b = false;
        }
        this.f56033c = 0L;
        if (z9) {
            if (f11 < f10) {
                this.f56037g = (int) (f11 * 300.0f);
            } else {
                this.f56037g = (int) ((1.0f - f11) * 300.0f);
            }
            this.f56033c = System.currentTimeMillis();
            this.f56035e = f10;
        } else {
            this.f56036f = f10;
            this.f56035e = f10;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f10;
        if (this.f56036f != this.f56035e) {
            if (this.f56033c != 0) {
                int currentTimeMillis = (int) (this.f56037g + (System.currentTimeMillis() - this.f56033c));
                this.f56037g = currentTimeMillis;
                if (currentTimeMillis >= 300) {
                    this.f56036f = this.f56035e;
                } else if (this.f56036f < this.f56035e) {
                    this.f56036f = this.f56039i.getInterpolation(currentTimeMillis / 300.0f) * this.f56035e;
                } else {
                    this.f56036f = 1.0f - this.f56039i.getInterpolation(currentTimeMillis / 300.0f);
                }
            }
            this.f56033c = System.currentTimeMillis();
            invalidateSelf();
        }
        int i4 = ((int) (this.f56036f * (-138.0f))) + 255;
        this.f56031a.setColor(Color.rgb(i4, i4, i4));
        canvas.save();
        canvas.translate(getIntrinsicWidth() / 2, getIntrinsicHeight() / 2);
        float f11 = this.f56036f;
        if (this.f56038h) {
            canvas.rotate((f11 * (this.f56032b ? -180 : com.facebook.imagepipeline.common.e.f12205e)) + 135.0f);
            f10 = 1.0f;
        } else {
            canvas.rotate((this.f56032b ? -225 : h0.J) * f11);
            f10 = f11;
        }
        canvas.drawLine((-com.tangxiaolv.telegramgallery.Utils.a.g(7.0f)) - (com.tangxiaolv.telegramgallery.Utils.a.g(1.0f) * f10), 0.0f, com.tangxiaolv.telegramgallery.Utils.a.g(8.0f), 0.0f, this.f56031a);
        float f12 = -com.tangxiaolv.telegramgallery.Utils.a.g(0.5f);
        float g4 = com.tangxiaolv.telegramgallery.Utils.a.g(7.0f) + (com.tangxiaolv.telegramgallery.Utils.a.g(1.0f) * f10);
        float g10 = (-com.tangxiaolv.telegramgallery.Utils.a.g(7.0f)) + (com.tangxiaolv.telegramgallery.Utils.a.g(7.0f) * f10);
        float g11 = com.tangxiaolv.telegramgallery.Utils.a.g(0.5f) - (com.tangxiaolv.telegramgallery.Utils.a.g(0.5f) * f10);
        canvas.drawLine(g10, -f12, g11, -g4, this.f56031a);
        canvas.drawLine(g10, f12, g11, g4, this.f56031a);
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
