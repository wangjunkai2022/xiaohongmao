package iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ViewConfiguration;

/* loaded from: classes3.dex */
public class ImageViewTouch extends ImageViewTouchBase {
    static final float P = 1.0f;
    protected ScaleGestureDetector C;
    protected GestureDetector D;
    protected int E;
    protected float F;
    protected int G;
    protected GestureDetector.OnGestureListener H;
    protected ScaleGestureDetector.OnScaleGestureListener I;
    protected boolean J;
    protected boolean K;
    protected boolean L;
    private c M;
    private d N;
    private b O;

    /* loaded from: classes3.dex */
    public class a extends GestureDetector.SimpleOnGestureListener {
        public a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            Log.i(ImageViewTouchBase.f69782z, "onDoubleTap. double tap enabled? " + ImageViewTouch.this.J);
            ImageViewTouch imageViewTouch = ImageViewTouch.this;
            if (imageViewTouch.J) {
                imageViewTouch.f69789g = true;
                float scale = imageViewTouch.getScale();
                ImageViewTouch imageViewTouch2 = ImageViewTouch.this;
                ImageViewTouch.this.I(Math.min(ImageViewTouch.this.getMaxScale(), Math.max(imageViewTouch2.M(scale, imageViewTouch2.getMaxScale()), ImageViewTouch.this.getMinScale())), motionEvent.getX(), motionEvent.getY(), 200.0f);
                ImageViewTouch.this.invalidate();
            }
            if (ImageViewTouch.this.M != null) {
                ImageViewTouch.this.M.onDoubleTap();
            }
            return super.onDoubleTap(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            return ImageViewTouch.this.N(motionEvent, motionEvent2, f10, f11);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (!ImageViewTouch.this.isLongClickable() || ImageViewTouch.this.C.isInProgress()) {
                return;
            }
            ImageViewTouch.this.setPressed(true);
            ImageViewTouch.this.performLongClick();
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            return ImageViewTouch.this.O(motionEvent, motionEvent2, f10, f11);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (ImageViewTouch.this.N != null) {
                ImageViewTouch.this.N.a();
            }
            return super.onSingleTapConfirmed(motionEvent);
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11);
    }

    /* loaded from: classes3.dex */
    public interface c {
        void onDoubleTap();
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a();
    }

    /* loaded from: classes3.dex */
    public class e extends ScaleGestureDetector.SimpleOnScaleGestureListener {

        /* renamed from: a  reason: collision with root package name */
        protected boolean f69780a = false;

        public e() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float currentSpan = scaleGestureDetector.getCurrentSpan() - scaleGestureDetector.getPreviousSpan();
            float scale = ImageViewTouch.this.getScale() * scaleGestureDetector.getScaleFactor();
            ImageViewTouch imageViewTouch = ImageViewTouch.this;
            if (imageViewTouch.K) {
                boolean z9 = this.f69780a;
                if (z9 && currentSpan != 0.0f) {
                    imageViewTouch.f69789g = true;
                    ImageViewTouch.this.H(Math.min(imageViewTouch.getMaxScale(), Math.max(scale, ImageViewTouch.this.getMinScale() - 0.1f)), scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
                    ImageViewTouch imageViewTouch2 = ImageViewTouch.this;
                    imageViewTouch2.G = 1;
                    imageViewTouch2.invalidate();
                    return true;
                } else if (!z9) {
                    this.f69780a = true;
                }
            }
            return true;
        }
    }

    public ImageViewTouch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.J = true;
        this.K = true;
        this.L = true;
    }

    public boolean L(int i4) {
        RectF bitmapRect = getBitmapRect();
        E(bitmapRect, this.f69805w);
        Rect rect = new Rect();
        getGlobalVisibleRect(rect);
        if (bitmapRect == null) {
            return false;
        }
        float f10 = bitmapRect.right;
        int i10 = rect.right;
        return (f10 < ((float) i10) || i4 >= 0) ? ((double) Math.abs(bitmapRect.left - this.f69805w.left)) > 1.0d : Math.abs(f10 - ((float) i10)) > 1.0f;
    }

    protected float M(float f10, float f11) {
        if (this.G == 1) {
            float f12 = this.F;
            if ((2.0f * f12) + f10 <= f11) {
                return f10 + f12;
            }
            this.G = -1;
            return f11;
        }
        this.G = 1;
        return 1.0f;
    }

    public boolean N(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        if (this.L) {
            b bVar = this.O;
            if (bVar != null) {
                bVar.onFling(motionEvent, motionEvent2, f10, f11);
            }
            if (motionEvent.getPointerCount() > 1 || motionEvent2.getPointerCount() > 1 || this.C.isInProgress() || getScale() == 1.0f) {
                return false;
            }
            float x9 = motionEvent2.getX() - motionEvent.getX();
            float y9 = motionEvent2.getY() - motionEvent.getY();
            if (Math.abs(f10) > 800.0f || Math.abs(f11) > 800.0f) {
                this.f69789g = true;
                B(x9 / 2.0f, y9 / 2.0f, 300.0d);
                invalidate();
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean O(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        if (!this.L || motionEvent == null || motionEvent2 == null || motionEvent.getPointerCount() > 1 || motionEvent2.getPointerCount() > 1 || this.C.isInProgress() || getScale() == 1.0f) {
            return false;
        }
        this.f69789g = true;
        A(-f10, -f11);
        invalidate();
        return true;
    }

    public void P() {
        I(Math.min(getMaxScale(), Math.max(getScale(), getMinScale())), 0.0f, 0.0f, 200.0f);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.ImageViewTouchBase
    public void a(Drawable drawable, Matrix matrix, float f10, float f11) {
        super.a(drawable, matrix, f10, f11);
        this.F = getMaxScale() / 3.0f;
    }

    public boolean getDoubleTapEnabled() {
        return this.J;
    }

    protected GestureDetector.OnGestureListener getGestureListener() {
        return new a();
    }

    protected ScaleGestureDetector.OnScaleGestureListener getScaleListener() {
        return new e();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.C.onTouchEvent(motionEvent);
        if (!this.C.isInProgress()) {
            this.D.onTouchEvent(motionEvent);
        }
        if ((motionEvent.getAction() & 255) == 1 && getScale() < getMinScale()) {
            G(getMinScale(), 500.0f);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.ImageViewTouchBase
    public void p() {
        super.p();
        this.E = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.H = getGestureListener();
        this.I = getScaleListener();
        this.C = new ScaleGestureDetector(getContext(), this.I);
        this.D = new GestureDetector(getContext(), this.H, null, true);
        this.G = 1;
    }

    public void setDoubleTapEnabled(boolean z9) {
        this.J = z9;
    }

    public void setDoubleTapListener(c cVar) {
        this.M = cVar;
    }

    public void setFlingListener(b bVar) {
        this.O = bVar;
    }

    public void setScaleEnabled(boolean z9) {
        this.K = z9;
        setDoubleTapEnabled(z9);
    }

    public void setScrollEnabled(boolean z9) {
        this.L = z9;
    }

    public void setSingleTapListener(d dVar) {
        this.N = dVar;
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.ImageViewTouchBase
    protected void u(float f10) {
        if (f10 < getMinScale()) {
            G(getMinScale(), 50.0f);
        }
    }
}
