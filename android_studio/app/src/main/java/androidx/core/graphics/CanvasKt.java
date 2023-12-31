package androidx.core.graphics;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.exoplayer2.text.ttml.d;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Canvas.kt */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a1\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a1\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\t2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a1\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\n2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001aI\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001aI\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00102\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a3\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001aG\u0010\u0014\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\f2\b\b\u0002\u0010\u0016\u001a\u00020\f2\b\b\u0002\u0010\u0017\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a)\u0010\u0018\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001aQ\u0010\u0019\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\f2\b\b\u0002\u0010\u0016\u001a\u00020\f2\b\b\u0002\u0010\u0017\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a=\u0010\u001c\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u001a=\u0010\u001d\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001e"}, d2 = {"withClip", "", "Landroid/graphics/Canvas;", "clipPath", "Landroid/graphics/Path;", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "clipRect", "Landroid/graphics/Rect;", "Landroid/graphics/RectF;", d.f25720l0, "", "top", d.f25723n0, "bottom", "", "withMatrix", "matrix", "Landroid/graphics/Matrix;", "withRotation", "degrees", "pivotX", "pivotY", "withSave", "withScale", y.b.f83919g, y.b.f83920h, "withSkew", "withTranslation", "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class CanvasKt {
    public static final void withClip(@g Canvas canvas, @g Rect clipRect, @g Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(clipRect, "clipRect");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.clipRect(clipRect);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withMatrix(@g Canvas canvas, @g Matrix matrix, @g Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.concat(matrix);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ void withMatrix$default(Canvas canvas, Matrix matrix, Function1 block, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            matrix = new Matrix();
        }
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.concat(matrix);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withRotation(@g Canvas canvas, float f10, float f11, float f12, @g Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.rotate(f10, f11, f12);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ void withRotation$default(Canvas canvas, float f10, float f11, float f12, Function1 block, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            f10 = 0.0f;
        }
        if ((i4 & 2) != 0) {
            f11 = 0.0f;
        }
        if ((i4 & 4) != 0) {
            f12 = 0.0f;
        }
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.rotate(f10, f11, f12);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withSave(@g Canvas canvas, @g Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withScale(@g Canvas canvas, float f10, float f11, float f12, float f13, @g Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.scale(f10, f11, f12, f13);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ void withScale$default(Canvas canvas, float f10, float f11, float f12, float f13, Function1 block, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            f10 = 1.0f;
        }
        if ((i4 & 2) != 0) {
            f11 = 1.0f;
        }
        if ((i4 & 4) != 0) {
            f12 = 0.0f;
        }
        if ((i4 & 8) != 0) {
            f13 = 0.0f;
        }
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.scale(f10, f11, f12, f13);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withSkew(@g Canvas canvas, float f10, float f11, @g Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.skew(f10, f11);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ void withSkew$default(Canvas canvas, float f10, float f11, Function1 block, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            f10 = 0.0f;
        }
        if ((i4 & 2) != 0) {
            f11 = 0.0f;
        }
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.skew(f10, f11);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withTranslation(@g Canvas canvas, float f10, float f11, @g Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.translate(f10, f11);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ void withTranslation$default(Canvas canvas, float f10, float f11, Function1 block, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            f10 = 0.0f;
        }
        if ((i4 & 2) != 0) {
            f11 = 0.0f;
        }
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.translate(f10, f11);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withClip(@g Canvas canvas, @g RectF clipRect, @g Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(clipRect, "clipRect");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.clipRect(clipRect);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withClip(@g Canvas canvas, int i4, int i10, int i11, int i12, @g Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.clipRect(i4, i10, i11, i12);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withClip(@g Canvas canvas, float f10, float f11, float f12, float f13, @g Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.clipRect(f10, f11, f12, f13);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }

    public static final void withClip(@g Canvas canvas, @g Path clipPath, @g Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(clipPath, "clipPath");
        Intrinsics.checkNotNullParameter(block, "block");
        int save = canvas.save();
        canvas.clipPath(clipPath);
        try {
            block.invoke(canvas);
        } finally {
            InlineMarker.finallyStart(1);
            canvas.restoreToCount(save);
            InlineMarker.finallyEnd(1);
        }
    }
}
