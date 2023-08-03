package com.google.android.material.animation;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class MatrixEvaluator implements TypeEvaluator<Matrix> {
    private final float[] tempStartValues = new float[9];
    private final float[] tempEndValues = new float[9];
    private final Matrix tempMatrix = new Matrix();

    @Override // android.animation.TypeEvaluator
    @NonNull
    public Matrix evaluate(float f10, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
        matrix.getValues(this.tempStartValues);
        matrix2.getValues(this.tempEndValues);
        for (int i4 = 0; i4 < 9; i4++) {
            float[] fArr = this.tempEndValues;
            float f11 = fArr[i4];
            float[] fArr2 = this.tempStartValues;
            fArr[i4] = fArr2[i4] + ((f11 - fArr2[i4]) * f10);
        }
        this.tempMatrix.setValues(this.tempEndValues);
        return this.tempMatrix;
    }
}
