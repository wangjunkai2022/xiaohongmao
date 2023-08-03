package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.drawable.NinePatchDrawable;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: RoundedNinePatchDrawable.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class q extends p {
    public q(NinePatchDrawable ninePatchDrawable) {
        super(ninePatchDrawable);
    }

    @Override // com.facebook.drawee.drawable.p, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("RoundedNinePatchDrawable#draw");
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
        canvas.clipPath(this.f11519e);
        super.draw(canvas);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }
}
