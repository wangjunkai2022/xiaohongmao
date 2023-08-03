package iamutkarshtiwari.github.io.ananas.editimage.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public class TextStickerView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f69757a;

    public TextStickerView(Context context) {
        super(context);
        a(null);
    }

    private void a(@Nullable AttributeSet attributeSet) {
    }

    public void b(Bitmap bitmap) {
        ImageView imageView = this.f69757a;
        if (imageView != null) {
            removeView(imageView);
        }
        this.f69757a = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13, -1);
        this.f69757a.setLayoutParams(layoutParams);
        this.f69757a.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.f69757a.setAdjustViewBounds(true);
        this.f69757a.setDrawingCacheEnabled(true);
        this.f69757a.setImageBitmap(bitmap);
        addView(this.f69757a);
    }

    public ImageView getBitmapHolderImageView() {
        return this.f69757a;
    }

    public TextStickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public TextStickerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        a(attributeSet);
    }
}
