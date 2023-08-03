package com.facebook.drawee.generic;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import com.facebook.drawee.drawable.h;
import com.facebook.drawee.drawable.v;
import com.facebook.drawee.drawable.w;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: RootDrawable.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d extends h implements v {
    @r7.h
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    Drawable f11625e;
    @r7.h

    /* renamed from: f  reason: collision with root package name */
    private w f11626f;

    public d(Drawable drawable) {
        super(drawable);
        this.f11625e = null;
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    @SuppressLint({"WrongCall"})
    public void draw(Canvas canvas) {
        if (isVisible()) {
            w wVar = this.f11626f;
            if (wVar != null) {
                wVar.onDraw();
            }
            super.draw(canvas);
            Drawable drawable = this.f11625e;
            if (drawable != null) {
                drawable.setBounds(getBounds());
                this.f11625e.draw(canvas);
            }
        }
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return -1;
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return -1;
    }

    @Override // com.facebook.drawee.drawable.v
    public void r(@r7.h w visibilityCallback) {
        this.f11626f = visibilityCallback;
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public boolean setVisible(boolean visible, boolean restart) {
        w wVar = this.f11626f;
        if (wVar != null) {
            wVar.a(visible);
        }
        return super.setVisible(visible, restart);
    }

    public void z(@r7.h Drawable controllerOverlay) {
        this.f11625e = controllerOverlay;
        invalidateSelf();
    }
}
