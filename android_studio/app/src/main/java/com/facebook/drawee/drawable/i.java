package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: InstrumentedDrawable.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class i extends h {

    /* renamed from: e  reason: collision with root package name */
    private final String f11477e;

    /* renamed from: f  reason: collision with root package name */
    private final a f11478f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f11479g;

    /* compiled from: InstrumentedDrawable.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(int viewWidth, int viewHeight, int imageWidth, int imageHeight, int scaledWidth, int scaledHeight, String scaleType);
    }

    public i(Drawable drawable, a listener) {
        super(drawable);
        this.f11479g = false;
        this.f11478f = listener;
        this.f11477e = z(drawable);
    }

    private String z(Drawable drawable) {
        return drawable instanceof r ? ((r) drawable).C().toString() : "none";
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f11479g) {
            this.f11479g = true;
            RectF rectF = new RectF();
            q(rectF);
            int width = (int) rectF.width();
            int height = (int) rectF.height();
            w(rectF);
            int width2 = (int) rectF.width();
            int height2 = (int) rectF.height();
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            a aVar = this.f11478f;
            if (aVar != null) {
                aVar.a(width, height, intrinsicWidth, intrinsicHeight, width2, height2, this.f11477e);
            }
        }
        super.draw(canvas);
    }
}
