package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import com.airbnb.lottie.model.content.j;
import java.util.Collections;
import java.util.List;

/* compiled from: ShapeLayer.java */
/* loaded from: classes.dex */
public class e extends a {
    private final com.airbnb.lottie.animation.content.d A;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(com.airbnb.lottie.h hVar, Layer layer) {
        super(hVar, layer);
        com.airbnb.lottie.animation.content.d dVar = new com.airbnb.lottie.animation.content.d(hVar, this, new j("__container", layer.l(), false));
        this.A = dVar;
        dVar.b(Collections.emptyList(), Collections.emptyList());
    }

    @Override // com.airbnb.lottie.model.layer.a
    protected void B(com.airbnb.lottie.model.d dVar, int i4, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        this.A.d(dVar, i4, list, dVar2);
    }

    @Override // com.airbnb.lottie.model.layer.a, com.airbnb.lottie.animation.content.e
    public void e(RectF rectF, Matrix matrix, boolean z9) {
        super.e(rectF, matrix, z9);
        this.A.e(rectF, this.f4586m, z9);
    }

    @Override // com.airbnb.lottie.model.layer.a
    void r(@NonNull Canvas canvas, Matrix matrix, int i4) {
        this.A.g(canvas, matrix, i4);
    }
}
