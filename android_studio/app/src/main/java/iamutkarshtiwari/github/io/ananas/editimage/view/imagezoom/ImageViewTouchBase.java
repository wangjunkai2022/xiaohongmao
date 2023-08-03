package iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;

/* loaded from: classes3.dex */
public abstract class ImageViewTouchBase extends ImageView implements iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.utils.c {
    protected static final boolean A = false;
    public static final float B = -1.0f;

    /* renamed from: z  reason: collision with root package name */
    public static final String f69782z = "ImageViewTouchBase";

    /* renamed from: a  reason: collision with root package name */
    protected k7.e f69783a;

    /* renamed from: b  reason: collision with root package name */
    protected Matrix f69784b;

    /* renamed from: c  reason: collision with root package name */
    protected Matrix f69785c;

    /* renamed from: d  reason: collision with root package name */
    protected Matrix f69786d;

    /* renamed from: e  reason: collision with root package name */
    protected Handler f69787e;

    /* renamed from: f  reason: collision with root package name */
    protected Runnable f69788f;

    /* renamed from: g  reason: collision with root package name */
    protected boolean f69789g;

    /* renamed from: h  reason: collision with root package name */
    private float f69790h;

    /* renamed from: i  reason: collision with root package name */
    private float f69791i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f69792j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f69793k;

    /* renamed from: l  reason: collision with root package name */
    protected final Matrix f69794l;

    /* renamed from: m  reason: collision with root package name */
    protected final float[] f69795m;

    /* renamed from: n  reason: collision with root package name */
    private int f69796n;

    /* renamed from: o  reason: collision with root package name */
    private int f69797o;

    /* renamed from: p  reason: collision with root package name */
    private PointF f69798p;

    /* renamed from: q  reason: collision with root package name */
    protected DisplayType f69799q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f69800r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f69801s;

    /* renamed from: t  reason: collision with root package name */
    protected final int f69802t;

    /* renamed from: u  reason: collision with root package name */
    protected RectF f69803u;

    /* renamed from: v  reason: collision with root package name */
    protected RectF f69804v;

    /* renamed from: w  reason: collision with root package name */
    protected RectF f69805w;

    /* renamed from: x  reason: collision with root package name */
    private d f69806x;

    /* renamed from: y  reason: collision with root package name */
    private e f69807y;

    /* loaded from: classes3.dex */
    public enum DisplayType {
        NONE,
        FIT_TO_SCREEN,
        FIT_IF_BIGGER
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Drawable f69809a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Matrix f69810b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ float f69811c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ float f69812d;

        a(Drawable drawable, Matrix matrix, float f10, float f11) {
            this.f69809a = drawable;
            this.f69810b = matrix;
            this.f69811c = f10;
            this.f69812d = f11;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageViewTouchBase.this.D(this.f69809a, this.f69810b, this.f69811c, this.f69812d);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        double f69814a = 0.0d;

        /* renamed from: b  reason: collision with root package name */
        double f69815b = 0.0d;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ double f69816c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ long f69817d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ double f69818e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ double f69819f;

        b(double d4, long j4, double d10, double d11) {
            this.f69816c = d4;
            this.f69817d = j4;
            this.f69818e = d10;
            this.f69819f = d11;
        }

        @Override // java.lang.Runnable
        public void run() {
            double min = Math.min(this.f69816c, System.currentTimeMillis() - this.f69817d);
            double c10 = ImageViewTouchBase.this.f69783a.c(min, 0.0d, this.f69818e, this.f69816c);
            double c11 = ImageViewTouchBase.this.f69783a.c(min, 0.0d, this.f69819f, this.f69816c);
            ImageViewTouchBase.this.v(c10 - this.f69814a, c11 - this.f69815b);
            this.f69814a = c10;
            this.f69815b = c11;
            if (min < this.f69816c) {
                ImageViewTouchBase.this.f69787e.post(this);
                return;
            }
            ImageViewTouchBase imageViewTouchBase = ImageViewTouchBase.this;
            RectF i4 = imageViewTouchBase.i(imageViewTouchBase.f69785c, true, true);
            float f10 = i4.left;
            if (f10 == 0.0f && i4.top == 0.0f) {
                return;
            }
            ImageViewTouchBase.this.A(f10, i4.top);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f69821a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f69822b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ float f69823c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ float f69824d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ float f69825e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ float f69826f;

        c(float f10, long j4, float f11, float f12, float f13, float f14) {
            this.f69821a = f10;
            this.f69822b = j4;
            this.f69823c = f11;
            this.f69824d = f12;
            this.f69825e = f13;
            this.f69826f = f14;
        }

        @Override // java.lang.Runnable
        public void run() {
            float min = Math.min(this.f69821a, (float) (System.currentTimeMillis() - this.f69822b));
            ImageViewTouchBase.this.H(this.f69824d + ((float) ImageViewTouchBase.this.f69783a.b(min, 0.0d, this.f69823c, this.f69821a)), this.f69825e, this.f69826f);
            if (min < this.f69821a) {
                ImageViewTouchBase.this.f69787e.post(this);
                return;
            }
            ImageViewTouchBase imageViewTouchBase = ImageViewTouchBase.this;
            imageViewTouchBase.u(imageViewTouchBase.getScale());
            ImageViewTouchBase.this.b(true, true);
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(Drawable drawable);
    }

    /* loaded from: classes3.dex */
    public interface e {
        void a(boolean z9, int i4, int i10, int i11, int i12);
    }

    public ImageViewTouchBase(Context context) {
        super(context);
        this.f69783a = new k7.d();
        this.f69784b = new Matrix();
        this.f69785c = new Matrix();
        this.f69787e = new Handler();
        this.f69788f = null;
        this.f69789g = false;
        this.f69790h = -1.0f;
        this.f69791i = -1.0f;
        this.f69794l = new Matrix();
        this.f69795m = new float[9];
        this.f69796n = -1;
        this.f69797o = -1;
        this.f69798p = new PointF();
        this.f69799q = DisplayType.NONE;
        this.f69802t = 200;
        this.f69803u = new RectF();
        this.f69804v = new RectF();
        this.f69805w = new RectF();
        p();
    }

    public void A(float f10, float f11) {
        v(f10, f11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void B(float f10, float f11, double d4) {
        this.f69787e.post(new b(d4, System.currentTimeMillis(), f10, f11));
    }

    public void C(Bitmap bitmap, Matrix matrix, float f10, float f11) {
        if (bitmap != null) {
            D(new iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.graphic.a(bitmap), matrix, f10, f11);
        } else {
            D(null, matrix, f10, f11);
        }
    }

    public void D(Drawable drawable, Matrix matrix, float f10, float f11) {
        if (getWidth() <= 0) {
            this.f69788f = new a(drawable, matrix, f10, f11);
        } else {
            a(drawable, matrix, f10, f11);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void E(RectF rectF, RectF rectF2) {
        if (rectF == null) {
            return;
        }
        if (rectF.top >= 0.0f && rectF.bottom <= this.f69797o) {
            rectF2.top = 0.0f;
        }
        if (rectF.left >= 0.0f && rectF.right <= this.f69796n) {
            rectF2.left = 0.0f;
        }
        float f10 = rectF.top;
        if (rectF2.top + f10 >= 0.0f && rectF.bottom > this.f69797o) {
            rectF2.top = (int) (0.0f - f10);
        }
        float f11 = rectF.bottom;
        int i4 = this.f69797o;
        if (rectF2.top + f11 <= i4 + 0 && rectF.top < 0.0f) {
            rectF2.top = (int) ((i4 + 0) - f11);
        }
        float f12 = rectF.left;
        if (rectF2.left + f12 >= 0.0f) {
            rectF2.left = (int) (0.0f - f12);
        }
        float f13 = rectF.right;
        int i10 = this.f69796n;
        if (rectF2.left + f13 <= i10 + 0) {
            rectF2.left = (int) ((i10 + 0) - f13);
        }
    }

    protected void F(float f10) {
        if (f10 > getMaxScale()) {
            f10 = getMaxScale();
        }
        if (f10 < getMinScale()) {
            f10 = getMinScale();
        }
        PointF center = getCenter();
        H(f10, center.x, center.y);
    }

    public void G(float f10, float f11) {
        PointF center = getCenter();
        I(f10, center.x, center.y, f11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void H(float f10, float f11, float f12) {
        if (f10 > getMaxScale()) {
            f10 = getMaxScale();
        }
        w(f10 / getScale(), f11, f12);
        t(getScale());
        b(true, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void I(float f10, float f11, float f12, float f13) {
        if (f10 > getMaxScale()) {
            f10 = getMaxScale();
        }
        long currentTimeMillis = System.currentTimeMillis();
        float scale = getScale();
        Matrix matrix = new Matrix(this.f69785c);
        matrix.postScale(f10, f10, f11, f12);
        RectF i4 = i(matrix, true, true);
        this.f69787e.post(new c(f13, currentTimeMillis, f10 - scale, scale, f11 + (i4.left * f10), f12 + (i4.top * f10)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Drawable drawable, Matrix matrix, float f10, float f11) {
        if (drawable != null) {
            super.setImageDrawable(drawable);
        } else {
            this.f69784b.reset();
            super.setImageDrawable(null);
        }
        if (f10 != -1.0f && f11 != -1.0f) {
            float min = Math.min(f10, f11);
            float max = Math.max(min, f11);
            this.f69791i = min;
            this.f69790h = max;
            this.f69793k = true;
            this.f69792j = true;
            DisplayType displayType = this.f69799q;
            if (displayType == DisplayType.FIT_TO_SCREEN || displayType == DisplayType.FIT_IF_BIGGER) {
                if (min >= 1.0f) {
                    this.f69793k = false;
                    this.f69791i = -1.0f;
                }
                if (max <= 1.0f) {
                    this.f69792j = true;
                    this.f69790h = -1.0f;
                }
            }
        } else {
            this.f69791i = -1.0f;
            this.f69790h = -1.0f;
            this.f69793k = false;
            this.f69792j = false;
        }
        if (matrix != null) {
            this.f69786d = new Matrix(matrix);
        }
        this.f69801s = true;
        requestLayout();
    }

    protected void b(boolean z9, boolean z10) {
        if (getDrawable() == null) {
            return;
        }
        RectF i4 = i(this.f69785c, z9, z10);
        float f10 = i4.left;
        if (f10 == 0.0f && i4.top == 0.0f) {
            return;
        }
        x(f10, i4.top);
    }

    public void c() {
        setImageBitmap(null);
    }

    protected float d() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return 1.0f;
        }
        return Math.max(drawable.getIntrinsicWidth() / this.f69796n, drawable.getIntrinsicHeight() / this.f69797o) * 8.0f;
    }

    @Override // iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.utils.c
    public void dispose() {
        c();
    }

    protected float e() {
        if (getDrawable() == null) {
            return 1.0f;
        }
        return Math.min(1.0f, 1.0f / n(this.f69784b));
    }

    protected void f(Drawable drawable) {
        d dVar = this.f69806x;
        if (dVar != null) {
            dVar.a(drawable);
        }
    }

    protected void g(int i4, int i10, int i11, int i12) {
        e eVar = this.f69807y;
        if (eVar != null) {
            eVar.a(true, i4, i10, i11, i12);
        }
    }

    public RectF getBitmapRect() {
        return h(this.f69785c);
    }

    protected PointF getCenter() {
        return this.f69798p;
    }

    public Matrix getDisplayMatrix() {
        return new Matrix(this.f69785c);
    }

    public DisplayType getDisplayType() {
        return this.f69799q;
    }

    public Matrix getImageViewMatrix() {
        return k(this.f69785c);
    }

    public float getMaxScale() {
        if (this.f69790h == -1.0f) {
            this.f69790h = d();
        }
        return this.f69790h;
    }

    public float getMinScale() {
        if (this.f69791i == -1.0f) {
            this.f69791i = e();
        }
        return this.f69791i;
    }

    @Override // android.view.View
    @SuppressLint({"Override"})
    public float getRotation() {
        return 0.0f;
    }

    public float getScale() {
        return n(this.f69785c);
    }

    protected RectF h(Matrix matrix) {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return null;
        }
        Matrix k10 = k(matrix);
        this.f69803u.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        k10.mapRect(this.f69803u);
        return this.f69803u;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005d, code lost:
        if (r7 < r8) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected android.graphics.RectF i(android.graphics.Matrix r7, boolean r8, boolean r9) {
        /*
            r6 = this;
            android.graphics.drawable.Drawable r0 = r6.getDrawable()
            r1 = 0
            if (r0 != 0) goto Ld
            android.graphics.RectF r7 = new android.graphics.RectF
            r7.<init>(r1, r1, r1, r1)
            return r7
        Ld:
            android.graphics.RectF r0 = r6.f69804v
            r0.set(r1, r1, r1, r1)
            android.graphics.RectF r7 = r6.h(r7)
            float r0 = r7.height()
            float r2 = r7.width()
            r3 = 1073741824(0x40000000, float:2.0)
            if (r9 == 0) goto L41
            int r9 = r6.f69797o
            float r4 = (float) r9
            int r5 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r5 >= 0) goto L2f
            float r4 = r4 - r0
            float r4 = r4 / r3
            float r9 = r7.top
            float r4 = r4 - r9
            goto L42
        L2f:
            float r0 = r7.top
            int r5 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r5 <= 0) goto L37
            float r4 = -r0
            goto L42
        L37:
            float r0 = r7.bottom
            int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r4 >= 0) goto L41
            float r9 = (float) r9
            float r4 = r9 - r0
            goto L42
        L41:
            r4 = 0
        L42:
            if (r8 == 0) goto L60
            int r8 = r6.f69796n
            float r8 = (float) r8
            int r9 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r9 >= 0) goto L51
            float r8 = r8 - r2
            float r8 = r8 / r3
            float r7 = r7.left
        L4f:
            float r8 = r8 - r7
            goto L61
        L51:
            float r9 = r7.left
            int r0 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r0 <= 0) goto L59
            float r8 = -r9
            goto L61
        L59:
            float r7 = r7.right
            int r9 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r9 >= 0) goto L60
            goto L4f
        L60:
            r8 = 0
        L61:
            android.graphics.RectF r7 = r6.f69804v
            r7.set(r8, r4, r1, r1)
            android.graphics.RectF r7 = r6.f69804v
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: iamutkarshtiwari.github.io.ananas.editimage.view.imagezoom.ImageViewTouchBase.i(android.graphics.Matrix, boolean, boolean):android.graphics.RectF");
    }

    protected float j(DisplayType displayType) {
        if (displayType == DisplayType.FIT_TO_SCREEN) {
            return 1.0f;
        }
        if (displayType == DisplayType.FIT_IF_BIGGER) {
            return Math.min(1.0f, 1.0f / n(this.f69784b));
        }
        return 1.0f / n(this.f69784b);
    }

    public Matrix k(Matrix matrix) {
        this.f69794l.set(this.f69784b);
        this.f69794l.postConcat(matrix);
        return this.f69794l;
    }

    protected void l(Drawable drawable, Matrix matrix) {
        float f10 = this.f69796n;
        float f11 = this.f69797o;
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        matrix.reset();
        if (intrinsicWidth <= f10 && intrinsicHeight <= f11) {
            float min = Math.min(f10 / intrinsicWidth, f11 / intrinsicHeight);
            matrix.postScale(min, min);
            matrix.postTranslate((f10 - (intrinsicWidth * min)) / 2.0f, (f11 - (intrinsicHeight * min)) / 2.0f);
            return;
        }
        float min2 = Math.min(f10 / intrinsicWidth, f11 / intrinsicHeight);
        matrix.postScale(min2, min2);
        matrix.postTranslate((f10 - (intrinsicWidth * min2)) / 2.0f, (f11 - (intrinsicHeight * min2)) / 2.0f);
    }

    protected void m(Drawable drawable, Matrix matrix) {
        float f10 = this.f69796n;
        float f11 = this.f69797o;
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        matrix.reset();
        float min = Math.min(f10 / intrinsicWidth, f11 / intrinsicHeight);
        matrix.postScale(min, min);
        matrix.postTranslate((f10 - (intrinsicWidth * min)) / 2.0f, (f11 - (intrinsicHeight * min)) / 2.0f);
    }

    protected float n(Matrix matrix) {
        return o(matrix, 0);
    }

    protected float o(Matrix matrix, int i4) {
        matrix.getValues(this.f69795m);
        return this.f69795m[i4];
    }

    @Override // android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        int i13;
        int i14;
        float j4;
        super.onLayout(z9, i4, i10, i11, i12);
        if (z9) {
            int i15 = this.f69796n;
            int i16 = this.f69797o;
            int i17 = i11 - i4;
            this.f69796n = i17;
            int i18 = i12 - i10;
            this.f69797o = i18;
            i13 = i17 - i15;
            i14 = i18 - i16;
            PointF pointF = this.f69798p;
            pointF.x = i17 / 2.0f;
            pointF.y = i18 / 2.0f;
        } else {
            i13 = 0;
            i14 = 0;
        }
        Runnable runnable = this.f69788f;
        if (runnable != null) {
            this.f69788f = null;
            runnable.run();
        }
        Drawable drawable = getDrawable();
        if (drawable != null) {
            if (z9 || this.f69800r || this.f69801s) {
                j(this.f69799q);
                float n9 = n(this.f69784b);
                float scale = getScale();
                float min = Math.min(1.0f, 1.0f / n9);
                l(drawable, this.f69784b);
                float n10 = n(this.f69784b);
                if (this.f69801s || this.f69800r) {
                    Matrix matrix = this.f69786d;
                    if (matrix != null) {
                        this.f69785c.set(matrix);
                        this.f69786d = null;
                        j4 = getScale();
                    } else {
                        this.f69785c.reset();
                        j4 = j(this.f69799q);
                    }
                    r12 = j4;
                    setImageMatrix(getImageViewMatrix());
                    if (r12 != getScale()) {
                        F(r12);
                    }
                } else if (z9) {
                    if (!this.f69793k) {
                        this.f69791i = -1.0f;
                    }
                    if (!this.f69792j) {
                        this.f69790h = -1.0f;
                    }
                    setImageMatrix(getImageViewMatrix());
                    x(-i13, -i14);
                    if (!this.f69789g) {
                        r12 = j(this.f69799q);
                        F(r12);
                    } else {
                        r12 = ((double) Math.abs(scale - min)) > 0.001d ? (n9 / n10) * scale : 1.0f;
                        F(r12);
                    }
                }
                this.f69789g = false;
                if (r12 > getMaxScale() || r12 < getMinScale()) {
                    F(r12);
                }
                b(true, true);
                if (this.f69801s) {
                    q(drawable);
                }
                if (z9 || this.f69801s || this.f69800r) {
                    s(i4, i10, i11, i12);
                }
                if (this.f69800r) {
                    this.f69800r = false;
                }
                if (this.f69801s) {
                    this.f69801s = false;
                    return;
                }
                return;
            }
            return;
        }
        if (this.f69801s) {
            q(drawable);
        }
        if (z9 || this.f69801s || this.f69800r) {
            s(i4, i10, i11, i12);
        }
        if (this.f69801s) {
            this.f69801s = false;
        }
        if (this.f69800r) {
            this.f69800r = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p() {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    protected void q(Drawable drawable) {
        f(drawable);
    }

    protected void r() {
    }

    protected void s(int i4, int i10, int i11, int i12) {
        g(i4, i10, i11, i12);
    }

    public void setDisplayType(DisplayType displayType) {
        if (displayType != this.f69799q) {
            this.f69789g = false;
            this.f69799q = displayType;
            this.f69800r = true;
            requestLayout();
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        C(bitmap, null, -1.0f, -1.0f);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        D(drawable, null, -1.0f, -1.0f);
    }

    @Override // android.widget.ImageView
    public void setImageMatrix(Matrix matrix) {
        Matrix imageMatrix = getImageMatrix();
        boolean z9 = (matrix == null && !imageMatrix.isIdentity()) || !(matrix == null || imageMatrix.equals(matrix));
        super.setImageMatrix(matrix);
        if (z9) {
            r();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i4) {
        setImageDrawable(getContext().getResources().getDrawable(i4));
    }

    protected void setMaxScale(float f10) {
        this.f69790h = f10;
    }

    protected void setMinScale(float f10) {
        this.f69791i = f10;
    }

    public void setOnDrawableChangedListener(d dVar) {
        this.f69806x = dVar;
    }

    public void setOnLayoutChangeListener(e eVar) {
        this.f69807y = eVar;
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == ImageView.ScaleType.MATRIX) {
            super.setScaleType(scaleType);
        } else {
            Log.w(f69782z, "Unsupported scaletype. Only MATRIX can be used");
        }
    }

    protected void t(float f10) {
    }

    protected void u(float f10) {
    }

    protected void v(double d4, double d10) {
        RectF bitmapRect = getBitmapRect();
        this.f69805w.set((float) d4, (float) d10, 0.0f, 0.0f);
        E(bitmapRect, this.f69805w);
        RectF rectF = this.f69805w;
        x(rectF.left, rectF.top);
        b(true, true);
    }

    protected void w(float f10, float f11, float f12) {
        this.f69785c.postScale(f10, f10, f11, f12);
        setImageMatrix(getImageViewMatrix());
    }

    protected void x(float f10, float f11) {
        if (f10 == 0.0f && f11 == 0.0f) {
            return;
        }
        this.f69785c.postTranslate(f10, f11);
        setImageMatrix(getImageViewMatrix());
    }

    public void y(Matrix matrix) {
        float o9 = o(matrix, 0);
        float o10 = o(matrix, 4);
        float o11 = o(matrix, 2);
        float o12 = o(matrix, 5);
        Log.d(f69782z, "matrix: { x: " + o11 + ", y: " + o12 + ", scalex: " + o9 + ", scaley: " + o10 + " }");
    }

    public void z() {
        this.f69801s = true;
        requestLayout();
    }

    public ImageViewTouchBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f69783a = new k7.d();
        this.f69784b = new Matrix();
        this.f69785c = new Matrix();
        this.f69787e = new Handler();
        this.f69788f = null;
        this.f69789g = false;
        this.f69790h = -1.0f;
        this.f69791i = -1.0f;
        this.f69794l = new Matrix();
        this.f69795m = new float[9];
        this.f69796n = -1;
        this.f69797o = -1;
        this.f69798p = new PointF();
        this.f69799q = DisplayType.NONE;
        this.f69802t = 200;
        this.f69803u = new RectF();
        this.f69804v = new RectF();
        this.f69805w = new RectF();
        p();
    }
}
