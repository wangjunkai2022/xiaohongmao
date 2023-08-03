package com.qennnsad.aknkaksd.presentation.ui.room.view;

import android.content.Context;
import android.graphics.Matrix;
import android.util.AttributeSet;
import com.facebook.drawee.view.SimpleDraweeView;

/* loaded from: classes3.dex */
public class TranslateDraweeView extends SimpleDraweeView {
    public TranslateDraweeView(Context context, com.facebook.drawee.generic.a aVar) {
        super(context, aVar);
    }

    @Override // android.widget.ImageView
    public void animateTransform(Matrix matrix) {
        invalidate();
    }

    public TranslateDraweeView(Context context) {
        super(context);
    }

    public TranslateDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TranslateDraweeView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }

    public TranslateDraweeView(Context context, AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4, i10);
    }
}
