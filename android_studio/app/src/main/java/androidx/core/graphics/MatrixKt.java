package androidx.core.graphics;

import android.graphics.Matrix;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import p.a;

/* compiled from: Matrix.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\u0014\n\u0000\u001a\"\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u001a\u001a\u0010\u0006\u001a\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003\u001a\u001a\u0010\t\u001a\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u001a\u0015\u0010\f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0086\n\u001a\r\u0010\u000e\u001a\u00020\u000f*\u00020\u0001H\u0086\b¨\u0006\u0010"}, d2 = {"rotationMatrix", "Landroid/graphics/Matrix;", "degrees", "", "px", "py", "scaleMatrix", "sx", "sy", "translationMatrix", "tx", a.f93055i, "times", "m", "values", "", "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MatrixKt {
    @g
    public static final Matrix rotationMatrix(float f10, float f11, float f12) {
        Matrix matrix = new Matrix();
        matrix.setRotate(f10, f11, f12);
        return matrix;
    }

    public static /* synthetic */ Matrix rotationMatrix$default(float f10, float f11, float f12, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            f11 = 0.0f;
        }
        if ((i4 & 4) != 0) {
            f12 = 0.0f;
        }
        return rotationMatrix(f10, f11, f12);
    }

    @g
    public static final Matrix scaleMatrix(float f10, float f11) {
        Matrix matrix = new Matrix();
        matrix.setScale(f10, f11);
        return matrix;
    }

    public static /* synthetic */ Matrix scaleMatrix$default(float f10, float f11, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            f10 = 1.0f;
        }
        if ((i4 & 2) != 0) {
            f11 = 1.0f;
        }
        return scaleMatrix(f10, f11);
    }

    @g
    public static final Matrix times(@g Matrix matrix, @g Matrix m9) {
        Intrinsics.checkNotNullParameter(matrix, "<this>");
        Intrinsics.checkNotNullParameter(m9, "m");
        Matrix matrix2 = new Matrix(matrix);
        matrix2.preConcat(m9);
        return matrix2;
    }

    @g
    public static final Matrix translationMatrix(float f10, float f11) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(f10, f11);
        return matrix;
    }

    public static /* synthetic */ Matrix translationMatrix$default(float f10, float f11, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            f10 = 0.0f;
        }
        if ((i4 & 2) != 0) {
            f11 = 0.0f;
        }
        return translationMatrix(f10, f11);
    }

    @g
    public static final float[] values(@g Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<this>");
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        return fArr;
    }
}
