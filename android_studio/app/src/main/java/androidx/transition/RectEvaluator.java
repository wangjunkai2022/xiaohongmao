package androidx.transition;

import android.animation.TypeEvaluator;
import android.graphics.Rect;

/* loaded from: classes.dex */
class RectEvaluator implements TypeEvaluator<Rect> {
    private Rect mRect;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RectEvaluator() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RectEvaluator(Rect rect) {
        this.mRect = rect;
    }

    @Override // android.animation.TypeEvaluator
    public Rect evaluate(float f10, Rect rect, Rect rect2) {
        int i4 = rect.left;
        int i10 = i4 + ((int) ((rect2.left - i4) * f10));
        int i11 = rect.top;
        int i12 = i11 + ((int) ((rect2.top - i11) * f10));
        int i13 = rect.right;
        int i14 = i13 + ((int) ((rect2.right - i13) * f10));
        int i15 = rect.bottom;
        int i16 = i15 + ((int) ((rect2.bottom - i15) * f10));
        Rect rect3 = this.mRect;
        if (rect3 == null) {
            return new Rect(i10, i12, i14, i16);
        }
        rect3.set(i10, i12, i14, i16);
        return this.mRect;
    }
}
