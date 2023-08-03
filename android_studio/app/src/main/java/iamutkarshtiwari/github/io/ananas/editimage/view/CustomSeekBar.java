package iamutkarshtiwari.github.io.ananas.editimage.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.SeekBar;

/* loaded from: classes3.dex */
public class CustomSeekBar extends SeekBar {

    /* renamed from: a  reason: collision with root package name */
    private Rect f69720a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f69721b;

    /* renamed from: c  reason: collision with root package name */
    private int f69722c;

    /* renamed from: d  reason: collision with root package name */
    private float f69723d;

    /* renamed from: e  reason: collision with root package name */
    private float f69724e;

    public CustomSeekBar(Context context) {
        super(context);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        this.f69720a.set(getThumbOffset(), (getHeight() / 2) - (this.f69722c / 2), getWidth() - getThumbOffset(), (getHeight() / 2) + (this.f69722c / 2));
        this.f69721b.setColor(-7829368);
        canvas.drawRect(this.f69720a, this.f69721b);
        super.onDraw(canvas);
    }

    public CustomSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f69720a = new Rect();
        this.f69721b = new Paint();
        this.f69722c = 6;
        float max = getMax();
        this.f69723d = max;
        this.f69724e = max / 2.0f;
    }

    public CustomSeekBar(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
