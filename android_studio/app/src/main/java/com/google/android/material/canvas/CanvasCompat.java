package com.google.android.material.canvas;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class CanvasCompat {
    private CanvasCompat() {
    }

    public static int saveLayerAlpha(@NonNull Canvas canvas, @Nullable RectF rectF, int i4) {
        if (Build.VERSION.SDK_INT > 21) {
            return canvas.saveLayerAlpha(rectF, i4);
        }
        return canvas.saveLayerAlpha(rectF, i4, 31);
    }

    public static int saveLayerAlpha(@NonNull Canvas canvas, float f10, float f11, float f12, float f13, int i4) {
        if (Build.VERSION.SDK_INT > 21) {
            return canvas.saveLayerAlpha(f10, f11, f12, f13, i4);
        }
        return canvas.saveLayerAlpha(f10, f11, f12, f13, i4, 31);
    }
}
