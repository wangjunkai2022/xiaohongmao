package iamutkarshtiwari.github.io.ananas.editimage.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class ZoomLayout extends FrameLayout implements ScaleGestureDetector.OnScaleGestureListener {

    /* renamed from: m  reason: collision with root package name */
    private static final float f69623m = 1.0f;

    /* renamed from: n  reason: collision with root package name */
    private static final float f69624n = 4.0f;

    /* renamed from: o  reason: collision with root package name */
    private static final int f69625o = 300;

    /* renamed from: a  reason: collision with root package name */
    private a f69626a;

    /* renamed from: b  reason: collision with root package name */
    private float f69627b;

    /* renamed from: c  reason: collision with root package name */
    private float f69628c;

    /* renamed from: d  reason: collision with root package name */
    private float f69629d;

    /* renamed from: e  reason: collision with root package name */
    private float f69630e;

    /* renamed from: f  reason: collision with root package name */
    private float f69631f;

    /* renamed from: g  reason: collision with root package name */
    private float f69632g;

    /* renamed from: h  reason: collision with root package name */
    private float f69633h;

    /* renamed from: i  reason: collision with root package name */
    private float f69634i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f69635j;

    /* renamed from: k  reason: collision with root package name */
    private long f69636k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f69637l;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum a {
        NONE,
        DRAG,
        ZOOM
    }

    public ZoomLayout(Context context) {
        super(context);
        this.f69626a = a.NONE;
        this.f69627b = 1.0f;
        this.f69628c = 0.0f;
        this.f69629d = 0.0f;
        this.f69630e = 0.0f;
        this.f69631f = 0.0f;
        this.f69632g = 0.0f;
        this.f69633h = 0.0f;
        this.f69634i = 0.0f;
        this.f69635j = false;
        this.f69636k = System.currentTimeMillis();
        this.f69637l = false;
        d(context);
    }

    private void b() {
        c().setScaleX(this.f69627b);
        c().setScaleY(this.f69627b);
        c().setTranslationX(this.f69631f);
        c().setTranslationY(this.f69632g);
    }

    private View c() {
        return getChildAt(0);
    }

    private void d(Context context) {
        final ScaleGestureDetector scaleGestureDetector = new ScaleGestureDetector(context, this);
        setOnTouchListener(new View.OnTouchListener() { // from class: iamutkarshtiwari.github.io.ananas.editimage.layout.a
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean e4;
                e4 = ZoomLayout.this.e(scaleGestureDetector, view, motionEvent);
                return e4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean e(ScaleGestureDetector scaleGestureDetector, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action == 1) {
                this.f69626a = a.NONE;
                this.f69633h = this.f69631f;
                this.f69634i = this.f69632g;
            } else if (action != 2) {
                if (action == 5) {
                    this.f69626a = a.ZOOM;
                } else if (action == 6) {
                    this.f69626a = a.NONE;
                }
            } else if (this.f69626a == a.DRAG) {
                this.f69631f = motionEvent.getX() - this.f69629d;
                this.f69632g = motionEvent.getY() - this.f69630e;
            }
        } else if (this.f69635j && System.currentTimeMillis() - this.f69636k <= 300) {
            if (this.f69637l) {
                this.f69627b = 1.0f;
                this.f69637l = false;
            } else {
                this.f69627b *= 2.0f;
                this.f69637l = true;
            }
            this.f69626a = a.ZOOM;
            this.f69635j = false;
        } else {
            if (this.f69627b > 1.0f) {
                this.f69626a = a.DRAG;
                this.f69629d = motionEvent.getX() - this.f69633h;
                this.f69630e = motionEvent.getY() - this.f69634i;
            }
            this.f69635j = true;
            this.f69636k = System.currentTimeMillis();
        }
        scaleGestureDetector.onTouchEvent(motionEvent);
        a aVar = this.f69626a;
        if ((aVar == a.DRAG && this.f69627b >= 1.0f) || aVar == a.ZOOM) {
            getParent().requestDisallowInterceptTouchEvent(true);
            float f10 = this.f69627b;
            float width = ((c().getWidth() - (c().getWidth() / f10)) / 2.0f) * f10;
            float f11 = this.f69627b;
            float height = ((c().getHeight() - (c().getHeight() / f11)) / 2.0f) * f11;
            this.f69631f = Math.min(Math.max(this.f69631f, -width), width);
            this.f69632g = Math.min(Math.max(this.f69632g, -height), height);
            b();
        }
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        if (this.f69628c != 0.0f && Math.signum(scaleFactor) != Math.signum(this.f69628c)) {
            this.f69628c = 0.0f;
            return true;
        }
        float f10 = this.f69627b * scaleFactor;
        this.f69627b = f10;
        this.f69627b = Math.max(1.0f, Math.min(f10, (float) f69624n));
        this.f69628c = scaleFactor;
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }

    public void setChildScale(float f10) {
        this.f69627b = f10;
        c().setScaleX(f10);
        c().setScaleY(f10);
    }

    public ZoomLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f69626a = a.NONE;
        this.f69627b = 1.0f;
        this.f69628c = 0.0f;
        this.f69629d = 0.0f;
        this.f69630e = 0.0f;
        this.f69631f = 0.0f;
        this.f69632g = 0.0f;
        this.f69633h = 0.0f;
        this.f69634i = 0.0f;
        this.f69635j = false;
        this.f69636k = System.currentTimeMillis();
        this.f69637l = false;
        d(context);
    }

    public ZoomLayout(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f69626a = a.NONE;
        this.f69627b = 1.0f;
        this.f69628c = 0.0f;
        this.f69629d = 0.0f;
        this.f69630e = 0.0f;
        this.f69631f = 0.0f;
        this.f69632g = 0.0f;
        this.f69633h = 0.0f;
        this.f69634i = 0.0f;
        this.f69635j = false;
        this.f69636k = System.currentTimeMillis();
        this.f69637l = false;
        d(context);
    }
}
