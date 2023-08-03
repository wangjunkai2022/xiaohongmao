package iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.graphic;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import java.io.InputStream;

/* compiled from: FastBitmapDrawable.java */
/* loaded from: classes3.dex */
public class a extends Drawable implements b {

    /* renamed from: a  reason: collision with root package name */
    protected Bitmap f69828a;

    /* renamed from: b  reason: collision with root package name */
    protected Paint f69829b;

    public a(Bitmap bitmap) {
        this.f69828a = bitmap;
        Paint paint = new Paint();
        this.f69829b = paint;
        paint.setDither(true);
        this.f69829b.setFilterBitmap(true);
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.graphic.b
    public Bitmap a() {
        return this.f69828a;
    }

    public void b(boolean z9) {
        this.f69829b.setAntiAlias(z9);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawBitmap(this.f69828a, 0.0f, 0.0f, this.f69829b);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f69828a.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f69828a.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f69828a.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f69828a.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i4) {
        this.f69829b.setAlpha(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f69829b.setColorFilter(colorFilter);
    }

    public a(Resources resources, InputStream inputStream) {
        this(BitmapFactory.decodeStream(inputStream));
    }
}
