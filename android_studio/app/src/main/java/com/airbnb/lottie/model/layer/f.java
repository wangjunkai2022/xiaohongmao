package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.keyframe.p;
import com.airbnb.lottie.m;
import com.airbnb.lottie.value.j;

/* compiled from: SolidLayer.java */
/* loaded from: classes.dex */
public class f extends a {
    private final RectF A;
    private final Paint B;
    private final float[] C;
    private final Path D;
    private final Layer E;
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> F;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(com.airbnb.lottie.h hVar, Layer layer) {
        super(hVar, layer);
        this.A = new RectF();
        com.airbnb.lottie.animation.a aVar = new com.airbnb.lottie.animation.a();
        this.B = aVar;
        this.C = new float[8];
        this.D = new Path();
        this.E = layer;
        aVar.setAlpha(0);
        aVar.setStyle(Paint.Style.FILL);
        aVar.setColor(layer.m());
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.model.e
    public <T> void c(T t9, @Nullable j<T> jVar) {
        super.c(t9, jVar);
        if (t9 == m.B) {
            if (jVar == null) {
                this.F = null;
            } else {
                this.F = new p(jVar);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.e
    public void e(RectF rectF, Matrix matrix, boolean z9) {
        super.e(rectF, matrix, z9);
        this.A.set(0.0f, 0.0f, this.E.o(), this.E.n());
        this.f4586m.mapRect(this.A);
        rectF.set(this.A);
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void r(Canvas canvas, Matrix matrix, int i4) {
        int alpha = Color.alpha(this.E.m());
        if (alpha == 0) {
            return;
        }
        int intValue = (int) ((i4 / 255.0f) * (((alpha / 255.0f) * (this.f4594u.h() == null ? 100 : this.f4594u.h().h().intValue())) / 100.0f) * 255.0f);
        this.B.setAlpha(intValue);
        com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.F;
        if (aVar != null) {
            this.B.setColorFilter(aVar.h());
        }
        if (intValue > 0) {
            float[] fArr = this.C;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.E.o();
            float[] fArr2 = this.C;
            fArr2[3] = 0.0f;
            fArr2[4] = this.E.o();
            this.C[5] = this.E.n();
            float[] fArr3 = this.C;
            fArr3[6] = 0.0f;
            fArr3[7] = this.E.n();
            matrix.mapPoints(this.C);
            this.D.reset();
            Path path = this.D;
            float[] fArr4 = this.C;
            path.moveTo(fArr4[0], fArr4[1]);
            Path path2 = this.D;
            float[] fArr5 = this.C;
            path2.lineTo(fArr5[2], fArr5[3]);
            Path path3 = this.D;
            float[] fArr6 = this.C;
            path3.lineTo(fArr6[4], fArr6[5]);
            Path path4 = this.D;
            float[] fArr7 = this.C;
            path4.lineTo(fArr7[6], fArr7[7]);
            Path path5 = this.D;
            float[] fArr8 = this.C;
            path5.lineTo(fArr8[0], fArr8[1]);
            this.D.close();
            canvas.drawPath(this.D, this.B);
        }
    }
}
