package com.github.chrisbanes.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.OverScroller;

/* compiled from: PhotoViewAttacher.java */
/* loaded from: classes2.dex */
public class l implements View.OnTouchListener, View.OnLayoutChangeListener {
    private static float F = 3.0f;
    private static float G = 1.75f;
    private static float H = 1.0f;
    private static int I = 200;
    private static final int J = -1;
    private static final int K = 0;
    private static final int L = 1;
    private static final int M = 2;
    private static final int N = -1;
    private static final int O = 0;
    private static final int P = 1;
    private static final int Q = 2;
    private static int R = 1;
    private float B;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f19260h;

    /* renamed from: i  reason: collision with root package name */
    private GestureDetector f19261i;

    /* renamed from: j  reason: collision with root package name */
    private com.github.chrisbanes.photoview.c f19262j;

    /* renamed from: p  reason: collision with root package name */
    private com.github.chrisbanes.photoview.e f19268p;

    /* renamed from: q  reason: collision with root package name */
    private g f19269q;

    /* renamed from: r  reason: collision with root package name */
    private com.github.chrisbanes.photoview.f f19270r;

    /* renamed from: s  reason: collision with root package name */
    private k f19271s;

    /* renamed from: t  reason: collision with root package name */
    private View.OnClickListener f19272t;

    /* renamed from: u  reason: collision with root package name */
    private View.OnLongClickListener f19273u;

    /* renamed from: v  reason: collision with root package name */
    private h f19274v;

    /* renamed from: w  reason: collision with root package name */
    private i f19275w;

    /* renamed from: x  reason: collision with root package name */
    private j f19276x;

    /* renamed from: y  reason: collision with root package name */
    private f f19277y;

    /* renamed from: a  reason: collision with root package name */
    private Interpolator f19253a = new AccelerateDecelerateInterpolator();

    /* renamed from: b  reason: collision with root package name */
    private int f19254b = I;

    /* renamed from: c  reason: collision with root package name */
    private float f19255c = H;

    /* renamed from: d  reason: collision with root package name */
    private float f19256d = G;

    /* renamed from: e  reason: collision with root package name */
    private float f19257e = F;

    /* renamed from: f  reason: collision with root package name */
    private boolean f19258f = true;

    /* renamed from: g  reason: collision with root package name */
    private boolean f19259g = false;

    /* renamed from: k  reason: collision with root package name */
    private final Matrix f19263k = new Matrix();

    /* renamed from: l  reason: collision with root package name */
    private final Matrix f19264l = new Matrix();

    /* renamed from: m  reason: collision with root package name */
    private final Matrix f19265m = new Matrix();

    /* renamed from: n  reason: collision with root package name */
    private final RectF f19266n = new RectF();

    /* renamed from: o  reason: collision with root package name */
    private final float[] f19267o = new float[9];

    /* renamed from: z  reason: collision with root package name */
    private int f19278z = 2;
    private int A = 2;
    private boolean C = true;
    private ImageView.ScaleType D = ImageView.ScaleType.FIT_CENTER;
    private com.github.chrisbanes.photoview.d E = new a();

    /* compiled from: PhotoViewAttacher.java */
    /* loaded from: classes2.dex */
    class a implements com.github.chrisbanes.photoview.d {
        a() {
        }

        @Override // com.github.chrisbanes.photoview.d
        public void a(float f10, float f11) {
            if (l.this.f19262j.e()) {
                return;
            }
            if (l.this.f19276x != null) {
                l.this.f19276x.a(f10, f11);
            }
            l.this.f19265m.postTranslate(f10, f11);
            l.this.B();
            ViewParent parent = l.this.f19260h.getParent();
            if (!l.this.f19258f || l.this.f19262j.e() || l.this.f19259g) {
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
            } else if ((l.this.f19278z == 2 || ((l.this.f19278z == 0 && f10 >= 1.0f) || ((l.this.f19278z == 1 && f10 <= -1.0f) || ((l.this.A == 0 && f11 >= 1.0f) || (l.this.A == 1 && f11 <= -1.0f))))) && parent != null) {
                parent.requestDisallowInterceptTouchEvent(false);
            }
        }

        @Override // com.github.chrisbanes.photoview.d
        public void b(float f10, float f11, float f12) {
            if (l.this.N() < l.this.f19257e || f10 < 1.0f) {
                if (l.this.f19274v != null) {
                    l.this.f19274v.a(f10, f11, f12);
                }
                l.this.f19265m.postScale(f10, f10, f11, f12);
                l.this.B();
            }
        }

        @Override // com.github.chrisbanes.photoview.d
        public void c(float f10, float f11, float f12, float f13) {
            l lVar = l.this;
            lVar.f19277y = new f(lVar.f19260h.getContext());
            f fVar = l.this.f19277y;
            l lVar2 = l.this;
            int J = lVar2.J(lVar2.f19260h);
            l lVar3 = l.this;
            fVar.b(J, lVar3.I(lVar3.f19260h), (int) f12, (int) f13);
            l.this.f19260h.post(l.this.f19277y);
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* loaded from: classes2.dex */
    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            if (l.this.f19275w == null || l.this.N() > l.H || motionEvent.getPointerCount() > l.R || motionEvent2.getPointerCount() > l.R) {
                return false;
            }
            return l.this.f19275w.onFling(motionEvent, motionEvent2, f10, f11);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (l.this.f19273u != null) {
                l.this.f19273u.onLongClick(l.this.f19260h);
            }
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* loaded from: classes2.dex */
    class c implements GestureDetector.OnDoubleTapListener {
        c() {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            try {
                float N = l.this.N();
                float x9 = motionEvent.getX();
                float y9 = motionEvent.getY();
                if (N < l.this.L()) {
                    l lVar = l.this;
                    lVar.o0(lVar.L(), x9, y9, true);
                } else if (N >= l.this.L() && N < l.this.K()) {
                    l lVar2 = l.this;
                    lVar2.o0(lVar2.K(), x9, y9, true);
                } else {
                    l lVar3 = l.this;
                    lVar3.o0(lVar3.M(), x9, y9, true);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (l.this.f19272t != null) {
                l.this.f19272t.onClick(l.this.f19260h);
            }
            RectF E = l.this.E();
            float x9 = motionEvent.getX();
            float y9 = motionEvent.getY();
            if (l.this.f19271s != null) {
                l.this.f19271s.a(l.this.f19260h, x9, y9);
            }
            if (E != null) {
                if (E.contains(x9, y9)) {
                    float width = (x9 - E.left) / E.width();
                    float height = (y9 - E.top) / E.height();
                    if (l.this.f19269q != null) {
                        l.this.f19269q.a(l.this.f19260h, width, height);
                        return true;
                    }
                    return true;
                } else if (l.this.f19270r != null) {
                    l.this.f19270r.a(l.this.f19260h);
                    return false;
                } else {
                    return false;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PhotoViewAttacher.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f19282a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f19282a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19282a[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19282a[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19282a[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PhotoViewAttacher.java */
    /* loaded from: classes2.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final float f19283a;

        /* renamed from: b  reason: collision with root package name */
        private final float f19284b;

        /* renamed from: c  reason: collision with root package name */
        private final long f19285c = System.currentTimeMillis();

        /* renamed from: d  reason: collision with root package name */
        private final float f19286d;

        /* renamed from: e  reason: collision with root package name */
        private final float f19287e;

        public e(float f10, float f11, float f12, float f13) {
            this.f19283a = f12;
            this.f19284b = f13;
            this.f19286d = f10;
            this.f19287e = f11;
        }

        private float a() {
            return l.this.f19253a.getInterpolation(Math.min(1.0f, (((float) (System.currentTimeMillis() - this.f19285c)) * 1.0f) / l.this.f19254b));
        }

        @Override // java.lang.Runnable
        public void run() {
            float a10 = a();
            float f10 = this.f19286d;
            l.this.E.b((f10 + ((this.f19287e - f10) * a10)) / l.this.N(), this.f19283a, this.f19284b);
            if (a10 < 1.0f) {
                com.github.chrisbanes.photoview.b.a(l.this.f19260h, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PhotoViewAttacher.java */
    /* loaded from: classes2.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final OverScroller f19289a;

        /* renamed from: b  reason: collision with root package name */
        private int f19290b;

        /* renamed from: c  reason: collision with root package name */
        private int f19291c;

        public f(Context context) {
            this.f19289a = new OverScroller(context);
        }

        public void a() {
            this.f19289a.forceFinished(true);
        }

        public void b(int i4, int i10, int i11, int i12) {
            int i13;
            int i14;
            int i15;
            int i16;
            RectF E = l.this.E();
            if (E == null) {
                return;
            }
            int round = Math.round(-E.left);
            float f10 = i4;
            if (f10 < E.width()) {
                i14 = Math.round(E.width() - f10);
                i13 = 0;
            } else {
                i13 = round;
                i14 = i13;
            }
            int round2 = Math.round(-E.top);
            float f11 = i10;
            if (f11 < E.height()) {
                i16 = Math.round(E.height() - f11);
                i15 = 0;
            } else {
                i15 = round2;
                i16 = i15;
            }
            this.f19290b = round;
            this.f19291c = round2;
            if (round == i14 && round2 == i16) {
                return;
            }
            this.f19289a.fling(round, round2, i11, i12, i13, i14, i15, i16, 0, 0);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f19289a.isFinished() && this.f19289a.computeScrollOffset()) {
                int currX = this.f19289a.getCurrX();
                int currY = this.f19289a.getCurrY();
                l.this.f19265m.postTranslate(this.f19290b - currX, this.f19291c - currY);
                l.this.B();
                this.f19290b = currX;
                this.f19291c = currY;
                com.github.chrisbanes.photoview.b.a(l.this.f19260h, this);
            }
        }
    }

    public l(ImageView imageView) {
        this.f19260h = imageView;
        imageView.setOnTouchListener(this);
        imageView.addOnLayoutChangeListener(this);
        if (imageView.isInEditMode()) {
            return;
        }
        this.B = 0.0f;
        this.f19262j = new com.github.chrisbanes.photoview.c(imageView.getContext(), this.E);
        GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new b());
        this.f19261i = gestureDetector;
        gestureDetector.setOnDoubleTapListener(new c());
    }

    private void A() {
        f fVar = this.f19277y;
        if (fVar != null) {
            fVar.a();
            this.f19277y = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (C()) {
            X(G());
        }
    }

    private boolean C() {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        RectF F2 = F(G());
        if (F2 == null) {
            return false;
        }
        float height = F2.height();
        float width = F2.width();
        float I2 = I(this.f19260h);
        float f15 = 0.0f;
        if (height <= I2) {
            int i4 = d.f19282a[this.D.ordinal()];
            if (i4 != 2) {
                if (i4 != 3) {
                    f13 = (I2 - height) / 2.0f;
                    f14 = F2.top;
                } else {
                    f13 = I2 - height;
                    f14 = F2.top;
                }
                f10 = f13 - f14;
            } else {
                f10 = -F2.top;
            }
            this.A = 2;
        } else {
            float f16 = F2.top;
            if (f16 > 0.0f) {
                this.A = 0;
                f10 = -f16;
            } else {
                float f17 = F2.bottom;
                if (f17 < I2) {
                    this.A = 1;
                    f10 = I2 - f17;
                } else {
                    this.A = -1;
                    f10 = 0.0f;
                }
            }
        }
        float J2 = J(this.f19260h);
        if (width <= J2) {
            int i10 = d.f19282a[this.D.ordinal()];
            if (i10 != 2) {
                if (i10 != 3) {
                    f11 = (J2 - width) / 2.0f;
                    f12 = F2.left;
                } else {
                    f11 = J2 - width;
                    f12 = F2.left;
                }
                f15 = f11 - f12;
            } else {
                f15 = -F2.left;
            }
            this.f19278z = 2;
        } else {
            float f18 = F2.left;
            if (f18 > 0.0f) {
                this.f19278z = 0;
                f15 = -f18;
            } else {
                float f19 = F2.right;
                if (f19 < J2) {
                    f15 = J2 - f19;
                    this.f19278z = 1;
                } else {
                    this.f19278z = -1;
                }
            }
        }
        this.f19265m.postTranslate(f15, f10);
        return true;
    }

    private RectF F(Matrix matrix) {
        Drawable drawable = this.f19260h.getDrawable();
        if (drawable != null) {
            this.f19266n.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrix.mapRect(this.f19266n);
            return this.f19266n;
        }
        return null;
    }

    private Matrix G() {
        this.f19264l.set(this.f19263k);
        this.f19264l.postConcat(this.f19265m);
        return this.f19264l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int I(ImageView imageView) {
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int J(ImageView imageView) {
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    private float Q(Matrix matrix, int i4) {
        matrix.getValues(this.f19267o);
        return this.f19267o[i4];
    }

    private void T() {
        this.f19265m.reset();
        l0(this.B);
        X(G());
        C();
    }

    private void X(Matrix matrix) {
        RectF F2;
        this.f19260h.setImageMatrix(matrix);
        if (this.f19268p == null || (F2 = F(matrix)) == null) {
            return;
        }
        this.f19268p.a(F2);
    }

    private void w0(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        float J2 = J(this.f19260h);
        float I2 = I(this.f19260h);
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.f19263k.reset();
        float f10 = intrinsicWidth;
        float f11 = J2 / f10;
        float f12 = intrinsicHeight;
        float f13 = I2 / f12;
        ImageView.ScaleType scaleType = this.D;
        if (scaleType == ImageView.ScaleType.CENTER) {
            this.f19263k.postTranslate((J2 - f10) / 2.0f, (I2 - f12) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float max = Math.max(f11, f13);
            this.f19263k.postScale(max, max);
            this.f19263k.postTranslate((J2 - (f10 * max)) / 2.0f, (I2 - (f12 * max)) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            float min = Math.min(1.0f, Math.min(f11, f13));
            this.f19263k.postScale(min, min);
            this.f19263k.postTranslate((J2 - (f10 * min)) / 2.0f, (I2 - (f12 * min)) / 2.0f);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, f10, f12);
            RectF rectF2 = new RectF(0.0f, 0.0f, J2, I2);
            if (((int) this.B) % com.facebook.imagepipeline.common.e.f12205e != 0) {
                rectF = new RectF(0.0f, 0.0f, f12, f10);
            }
            int i4 = d.f19282a[this.D.ordinal()];
            if (i4 == 1) {
                this.f19263k.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            } else if (i4 == 2) {
                this.f19263k.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
            } else if (i4 == 3) {
                this.f19263k.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
            } else if (i4 == 4) {
                this.f19263k.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            }
        }
        T();
    }

    public void D(Matrix matrix) {
        matrix.set(G());
    }

    public RectF E() {
        C();
        return F(G());
    }

    public Matrix H() {
        return this.f19264l;
    }

    public float K() {
        return this.f19257e;
    }

    public float L() {
        return this.f19256d;
    }

    public float M() {
        return this.f19255c;
    }

    public float N() {
        return (float) Math.sqrt(((float) Math.pow(Q(this.f19265m, 0), 2.0d)) + ((float) Math.pow(Q(this.f19265m, 3), 2.0d)));
    }

    public ImageView.ScaleType O() {
        return this.D;
    }

    public void P(Matrix matrix) {
        matrix.set(this.f19265m);
    }

    @Deprecated
    public boolean R() {
        return this.C;
    }

    public boolean S() {
        return this.C;
    }

    public void U(boolean z9) {
        this.f19258f = z9;
    }

    public void V(float f10) {
        this.B = f10 % 360.0f;
        v0();
        l0(this.B);
        B();
    }

    public boolean W(Matrix matrix) {
        if (matrix != null) {
            if (this.f19260h.getDrawable() == null) {
                return false;
            }
            this.f19265m.set(matrix);
            B();
            return true;
        }
        throw new IllegalArgumentException("Matrix cannot be null");
    }

    public void Y(float f10) {
        n.a(this.f19255c, this.f19256d, f10);
        this.f19257e = f10;
    }

    public void Z(float f10) {
        n.a(this.f19255c, f10, this.f19257e);
        this.f19256d = f10;
    }

    public void a0(float f10) {
        n.a(f10, this.f19256d, this.f19257e);
        this.f19255c = f10;
    }

    public void b0(View.OnClickListener onClickListener) {
        this.f19272t = onClickListener;
    }

    public void c0(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f19261i.setOnDoubleTapListener(onDoubleTapListener);
    }

    public void d0(View.OnLongClickListener onLongClickListener) {
        this.f19273u = onLongClickListener;
    }

    public void e0(com.github.chrisbanes.photoview.e eVar) {
        this.f19268p = eVar;
    }

    public void f0(com.github.chrisbanes.photoview.f fVar) {
        this.f19270r = fVar;
    }

    public void g0(g gVar) {
        this.f19269q = gVar;
    }

    public void h0(h hVar) {
        this.f19274v = hVar;
    }

    public void i0(i iVar) {
        this.f19275w = iVar;
    }

    public void j0(j jVar) {
        this.f19276x = jVar;
    }

    public void k0(k kVar) {
        this.f19271s = kVar;
    }

    public void l0(float f10) {
        this.f19265m.postRotate(f10 % 360.0f);
        B();
    }

    public void m0(float f10) {
        this.f19265m.setRotate(f10 % 360.0f);
        B();
    }

    public void n0(float f10) {
        p0(f10, false);
    }

    public void o0(float f10, float f11, float f12, boolean z9) {
        if (f10 < this.f19255c || f10 > this.f19257e) {
            throw new IllegalArgumentException("Scale must be within the range of minScale and maxScale");
        }
        if (z9) {
            this.f19260h.post(new e(N(), f10, f11, f12));
            return;
        }
        this.f19265m.setScale(f10, f10, f11, f12);
        B();
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i4, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        if (i4 == i13 && i10 == i14 && i11 == i15 && i12 == i16) {
            return;
        }
        w0(this.f19260h.getDrawable());
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouch(android.view.View r11, android.view.MotionEvent r12) {
        /*
            r10 = this;
            boolean r0 = r10.C
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lbe
            r0 = r11
            android.widget.ImageView r0 = (android.widget.ImageView) r0
            boolean r0 = com.github.chrisbanes.photoview.n.c(r0)
            if (r0 == 0) goto Lbe
            int r0 = r12.getAction()
            if (r0 == 0) goto L6e
            if (r0 == r2) goto L1b
            r3 = 3
            if (r0 == r3) goto L1b
            goto L7a
        L1b:
            float r0 = r10.N()
            float r3 = r10.f19255c
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L44
            android.graphics.RectF r0 = r10.E()
            if (r0 == 0) goto L7a
            com.github.chrisbanes.photoview.l$e r9 = new com.github.chrisbanes.photoview.l$e
            float r5 = r10.N()
            float r6 = r10.f19255c
            float r7 = r0.centerX()
            float r8 = r0.centerY()
            r3 = r9
            r4 = r10
            r3.<init>(r5, r6, r7, r8)
            r11.post(r9)
            goto L6c
        L44:
            float r0 = r10.N()
            float r3 = r10.f19257e
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 <= 0) goto L7a
            android.graphics.RectF r0 = r10.E()
            if (r0 == 0) goto L7a
            com.github.chrisbanes.photoview.l$e r9 = new com.github.chrisbanes.photoview.l$e
            float r5 = r10.N()
            float r6 = r10.f19257e
            float r7 = r0.centerX()
            float r8 = r0.centerY()
            r3 = r9
            r4 = r10
            r3.<init>(r5, r6, r7, r8)
            r11.post(r9)
        L6c:
            r11 = 1
            goto L7b
        L6e:
            android.view.ViewParent r11 = r11.getParent()
            if (r11 == 0) goto L77
            r11.requestDisallowInterceptTouchEvent(r2)
        L77:
            r10.A()
        L7a:
            r11 = 0
        L7b:
            com.github.chrisbanes.photoview.c r0 = r10.f19262j
            if (r0 == 0) goto Lb2
            boolean r11 = r0.e()
            com.github.chrisbanes.photoview.c r0 = r10.f19262j
            boolean r0 = r0.d()
            com.github.chrisbanes.photoview.c r3 = r10.f19262j
            boolean r3 = r3.f(r12)
            if (r11 != 0) goto L9b
            com.github.chrisbanes.photoview.c r11 = r10.f19262j
            boolean r11 = r11.e()
            if (r11 != 0) goto L9b
            r11 = 1
            goto L9c
        L9b:
            r11 = 0
        L9c:
            if (r0 != 0) goto La8
            com.github.chrisbanes.photoview.c r0 = r10.f19262j
            boolean r0 = r0.d()
            if (r0 != 0) goto La8
            r0 = 1
            goto La9
        La8:
            r0 = 0
        La9:
            if (r11 == 0) goto Lae
            if (r0 == 0) goto Lae
            r1 = 1
        Lae:
            r10.f19259g = r1
            r1 = r3
            goto Lb3
        Lb2:
            r1 = r11
        Lb3:
            android.view.GestureDetector r11 = r10.f19261i
            if (r11 == 0) goto Lbe
            boolean r11 = r11.onTouchEvent(r12)
            if (r11 == 0) goto Lbe
            r1 = 1
        Lbe:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.chrisbanes.photoview.l.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public void p0(float f10, boolean z9) {
        o0(f10, this.f19260h.getRight() / 2, this.f19260h.getBottom() / 2, z9);
    }

    public void q0(float f10, float f11, float f12) {
        n.a(f10, f11, f12);
        this.f19255c = f10;
        this.f19256d = f11;
        this.f19257e = f12;
    }

    public void r0(ImageView.ScaleType scaleType) {
        if (!n.d(scaleType) || scaleType == this.D) {
            return;
        }
        this.D = scaleType;
        v0();
    }

    public void s0(Interpolator interpolator) {
        this.f19253a = interpolator;
    }

    public void t0(int i4) {
        this.f19254b = i4;
    }

    public void u0(boolean z9) {
        this.C = z9;
        v0();
    }

    public void v0() {
        if (this.C) {
            w0(this.f19260h.getDrawable());
        } else {
            T();
        }
    }
}
