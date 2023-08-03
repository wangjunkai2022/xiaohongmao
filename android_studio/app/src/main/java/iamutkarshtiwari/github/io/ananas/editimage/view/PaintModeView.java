package iamutkarshtiwari.github.io.ananas.editimage.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.RequiresApi;
import androidx.core.internal.view.SupportMenu;

/* loaded from: classes3.dex */
public class PaintModeView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f69726a;

    /* renamed from: b  reason: collision with root package name */
    private int f69727b;

    /* renamed from: c  reason: collision with root package name */
    private float f69728c;

    /* renamed from: d  reason: collision with root package name */
    private float f69729d;

    public PaintModeView(Context context) {
        super(context);
        this.f69728c = -1.0f;
        a(context);
    }

    protected void a(Context context) {
        Paint paint = new Paint();
        this.f69726a = paint;
        paint.setAntiAlias(true);
        this.f69726a.setColor(SupportMenu.CATEGORY_MASK);
    }

    public int getStokenColor() {
        return this.f69727b;
    }

    public float getStokenWidth() {
        if (this.f69728c < 0.0f) {
            this.f69728c = getMeasuredHeight();
        }
        return this.f69728c;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f69726a.setColor(this.f69727b);
        this.f69729d = this.f69728c / 2.0f;
        canvas.drawCircle(getWidth() >> 1, getHeight() >> 1, this.f69729d, this.f69726a);
    }

    public void setPaintStrokeColor(int i4) {
        this.f69727b = i4;
        invalidate();
    }

    public void setPaintStrokeWidth(float f10) {
        this.f69728c = f10;
        invalidate();
    }

    public PaintModeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f69728c = -1.0f;
        a(context);
    }

    public PaintModeView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f69728c = -1.0f;
        a(context);
    }

    @RequiresApi(api = 21)
    public PaintModeView(Context context, AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4, i10);
        this.f69728c = -1.0f;
        a(context);
    }
}
