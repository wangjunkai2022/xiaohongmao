package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class CutCornerTreatment extends CornerTreatment {
    float size;

    public CutCornerTreatment() {
        this.size = -1.0f;
    }

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(@NonNull ShapePath shapePath, float f10, float f11, float f12) {
        shapePath.reset(0.0f, f12 * f11, 180.0f, 180.0f - f10);
        double d4 = f12;
        double d10 = f11;
        shapePath.lineTo((float) (Math.sin(Math.toRadians(f10)) * d4 * d10), (float) (Math.sin(Math.toRadians(90.0f - f10)) * d4 * d10));
    }

    @Deprecated
    public CutCornerTreatment(float f10) {
        this.size = f10;
    }
}
