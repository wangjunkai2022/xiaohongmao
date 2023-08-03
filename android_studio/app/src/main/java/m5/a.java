package m5;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;

/* compiled from: CenteredImageSpan.java */
/* loaded from: classes3.dex */
public class a extends ImageSpan {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Drawable> f86949a;

    public a(Drawable drawable) {
        super(drawable);
    }

    private Drawable a() {
        WeakReference<Drawable> weakReference = this.f86949a;
        Drawable drawable = weakReference != null ? weakReference.get() : null;
        if (drawable == null) {
            Drawable drawable2 = getDrawable();
            this.f86949a = new WeakReference<>(drawable2);
            return drawable2;
        }
        return drawable;
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(@NonNull Canvas canvas, CharSequence charSequence, int i4, int i10, float f10, int i11, int i12, int i13, @NonNull Paint paint) {
        Drawable a10 = a();
        canvas.save();
        int intrinsicHeight = a10.getIntrinsicHeight();
        canvas.translate(f10, ((i13 - a10.getBounds().bottom) + (((intrinsicHeight - paint.getFontMetricsInt().descent) + paint.getFontMetricsInt().ascent) / 2)) / 2);
        a10.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i4, int i10, Paint.FontMetricsInt fontMetricsInt) {
        Rect bounds = a().getBounds();
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return bounds.right;
    }
}
