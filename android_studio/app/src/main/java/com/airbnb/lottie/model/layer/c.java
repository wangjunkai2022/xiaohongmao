package com.airbnb.lottie.model.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.keyframe.p;
import com.airbnb.lottie.m;
import com.airbnb.lottie.value.j;

/* compiled from: ImageLayer.java */
/* loaded from: classes.dex */
public class c extends a {
    private final Paint A;
    private final Rect B;
    private final Rect C;
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> D;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(com.airbnb.lottie.h hVar, Layer layer) {
        super(hVar, layer);
        this.A = new com.airbnb.lottie.animation.a(3);
        this.B = new Rect();
        this.C = new Rect();
    }

    @Nullable
    private Bitmap H() {
        return this.f4587n.q(this.f4588o.k());
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.model.e
    public <T> void c(T t9, @Nullable j<T> jVar) {
        super.c(t9, jVar);
        if (t9 == m.B) {
            if (jVar == null) {
                this.D = null;
            } else {
                this.D = new p(jVar);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.e
    public void e(RectF rectF, Matrix matrix, boolean z9) {
        super.e(rectF, matrix, z9);
        Bitmap H = H();
        if (H != null) {
            rectF.set(0.0f, 0.0f, H.getWidth() * com.airbnb.lottie.utils.h.e(), H.getHeight() * com.airbnb.lottie.utils.h.e());
            this.f4586m.mapRect(rectF);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void r(@NonNull Canvas canvas, Matrix matrix, int i4) {
        Bitmap H = H();
        if (H == null || H.isRecycled()) {
            return;
        }
        float e4 = com.airbnb.lottie.utils.h.e();
        this.A.setAlpha(i4);
        com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.D;
        if (aVar != null) {
            this.A.setColorFilter(aVar.h());
        }
        canvas.save();
        canvas.concat(matrix);
        this.B.set(0, 0, H.getWidth(), H.getHeight());
        this.C.set(0, 0, (int) (H.getWidth() * e4), (int) (H.getHeight() * e4));
        canvas.drawBitmap(H, this.B, this.C, this.A);
        canvas.restore();
    }
}
