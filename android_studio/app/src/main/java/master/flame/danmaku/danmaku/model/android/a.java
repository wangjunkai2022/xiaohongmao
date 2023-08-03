package master.flame.danmaku.danmaku.model.android;

import android.annotation.SuppressLint;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import com.qennnsad.aknkaksd.util.a1;
import java.util.HashMap;
import java.util.Map;

/* compiled from: AndroidDisplayer.java */
/* loaded from: classes4.dex */
public class a extends master.flame.danmaku.danmaku.model.b<Canvas, Typeface> {

    /* renamed from: j  reason: collision with root package name */
    public Canvas f87172j;

    /* renamed from: k  reason: collision with root package name */
    private int f87173k;

    /* renamed from: l  reason: collision with root package name */
    private int f87174l;

    /* renamed from: m  reason: collision with root package name */
    private float f87175m;

    /* renamed from: f  reason: collision with root package name */
    private Camera f87168f = new Camera();

    /* renamed from: g  reason: collision with root package name */
    private Matrix f87169g = new Matrix();

    /* renamed from: h  reason: collision with root package name */
    private final C0783a f87170h = new C0783a();

    /* renamed from: i  reason: collision with root package name */
    private b f87171i = new i();

    /* renamed from: n  reason: collision with root package name */
    private float f87176n = 1.0f;

    /* renamed from: o  reason: collision with root package name */
    private int f87177o = a1.f54532a;

    /* renamed from: p  reason: collision with root package name */
    private float f87178p = 1.0f;

    /* renamed from: q  reason: collision with root package name */
    private int f87179q = 0;

    /* renamed from: r  reason: collision with root package name */
    private boolean f87180r = true;

    /* renamed from: s  reason: collision with root package name */
    private int f87181s = 2048;

    /* renamed from: t  reason: collision with root package name */
    private int f87182t = 2048;

    /* compiled from: AndroidDisplayer.java */
    /* renamed from: master.flame.danmaku.danmaku.model.android.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0783a {
        public static final int B = 4;

        /* renamed from: a  reason: collision with root package name */
        private float f87183a;

        /* renamed from: c  reason: collision with root package name */
        public final TextPaint f87185c;

        /* renamed from: d  reason: collision with root package name */
        public final TextPaint f87186d;

        /* renamed from: e  reason: collision with root package name */
        private Paint f87187e;

        /* renamed from: f  reason: collision with root package name */
        private Paint f87188f;

        /* renamed from: g  reason: collision with root package name */
        private Paint f87189g;

        /* renamed from: v  reason: collision with root package name */
        private boolean f87204v;

        /* renamed from: b  reason: collision with root package name */
        private final Map<Float, Float> f87184b = new HashMap(10);

        /* renamed from: h  reason: collision with root package name */
        public int f87190h = 4;

        /* renamed from: i  reason: collision with root package name */
        private float f87191i = 4.0f;

        /* renamed from: j  reason: collision with root package name */
        private float f87192j = 3.5f;

        /* renamed from: k  reason: collision with root package name */
        public float f87193k = 1.0f;

        /* renamed from: l  reason: collision with root package name */
        public float f87194l = 1.0f;

        /* renamed from: m  reason: collision with root package name */
        private int f87195m = 204;

        /* renamed from: n  reason: collision with root package name */
        public boolean f87196n = false;

        /* renamed from: o  reason: collision with root package name */
        private boolean f87197o = false;

        /* renamed from: p  reason: collision with root package name */
        public boolean f87198p = true;

        /* renamed from: q  reason: collision with root package name */
        private boolean f87199q = true;

        /* renamed from: r  reason: collision with root package name */
        public boolean f87200r = false;

        /* renamed from: s  reason: collision with root package name */
        public boolean f87201s = false;

        /* renamed from: t  reason: collision with root package name */
        public boolean f87202t = true;

        /* renamed from: u  reason: collision with root package name */
        private boolean f87203u = true;

        /* renamed from: w  reason: collision with root package name */
        private int f87205w = master.flame.danmaku.danmaku.model.c.f87276a;

        /* renamed from: x  reason: collision with root package name */
        private float f87206x = 1.0f;

        /* renamed from: y  reason: collision with root package name */
        private boolean f87207y = false;

        /* renamed from: z  reason: collision with root package name */
        private int f87208z = 0;
        private int A = 0;

        public C0783a() {
            TextPaint textPaint = new TextPaint();
            this.f87185c = textPaint;
            textPaint.setStrokeWidth(this.f87192j);
            this.f87186d = new TextPaint(textPaint);
            this.f87187e = new Paint();
            Paint paint = new Paint();
            this.f87188f = paint;
            paint.setStrokeWidth(this.f87190h);
            this.f87188f.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.f87189g = paint2;
            paint2.setStyle(Paint.Style.STROKE);
            this.f87189g.setStrokeWidth(4.0f);
        }

        private void h(master.flame.danmaku.danmaku.model.d dVar, Paint paint) {
            if (this.f87207y) {
                Float f10 = this.f87184b.get(Float.valueOf(dVar.f87289l));
                if (f10 == null || this.f87183a != this.f87206x) {
                    float f11 = this.f87206x;
                    this.f87183a = f11;
                    f10 = Float.valueOf(dVar.f87289l * f11);
                    this.f87184b.put(Float.valueOf(dVar.f87289l), f10);
                }
                paint.setTextSize(f10.floatValue());
            }
        }

        public void g(master.flame.danmaku.danmaku.model.d dVar, Paint paint, boolean z9) {
            if (this.f87204v) {
                if (z9) {
                    paint.setStyle(this.f87201s ? Paint.Style.FILL : Paint.Style.FILL_AND_STROKE);
                    paint.setColor(dVar.f87287j & 16777215);
                    paint.setAlpha(this.f87201s ? (int) (this.f87195m * (this.f87205w / master.flame.danmaku.danmaku.model.c.f87276a)) : this.f87205w);
                } else {
                    paint.setStyle(Paint.Style.FILL);
                    paint.setColor(dVar.f87284g & 16777215);
                    paint.setAlpha(this.f87205w);
                }
            } else if (z9) {
                paint.setStyle(this.f87201s ? Paint.Style.FILL : Paint.Style.FILL_AND_STROKE);
                paint.setColor(dVar.f87287j & 16777215);
                paint.setAlpha(this.f87201s ? this.f87195m : master.flame.danmaku.danmaku.model.c.f87276a);
            } else {
                paint.setStyle(Paint.Style.FILL);
                paint.setColor(dVar.f87284g & 16777215);
                paint.setAlpha(master.flame.danmaku.danmaku.model.c.f87276a);
            }
            if (dVar.n() == 7) {
                paint.setAlpha(dVar.c());
            }
        }

        public void i() {
            this.f87184b.clear();
        }

        public void j(boolean z9) {
            this.f87199q = this.f87198p;
            this.f87197o = this.f87196n;
            this.f87201s = this.f87200r;
            this.f87203u = this.f87202t;
        }

        public Paint k(master.flame.danmaku.danmaku.model.d dVar) {
            this.f87189g.setColor(dVar.f87290m);
            return this.f87189g;
        }

        public TextPaint l(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
            TextPaint textPaint;
            int i4;
            if (z9) {
                textPaint = this.f87185c;
            } else {
                textPaint = this.f87186d;
                textPaint.set(this.f87185c);
            }
            textPaint.setTextSize(dVar.f87289l);
            h(dVar, textPaint);
            if (this.f87197o) {
                float f10 = this.f87191i;
                if (f10 > 0.0f && (i4 = dVar.f87287j) != 0) {
                    textPaint.setShadowLayer(f10, 0.0f, 0.0f, i4);
                    textPaint.setAntiAlias(this.f87203u);
                    return textPaint;
                }
            }
            textPaint.clearShadowLayer();
            textPaint.setAntiAlias(this.f87203u);
            return textPaint;
        }

        public float m() {
            boolean z9 = this.f87197o;
            if (z9 && this.f87199q) {
                return Math.max(this.f87191i, this.f87192j);
            }
            if (z9) {
                return this.f87191i;
            }
            if (this.f87199q) {
                return this.f87192j;
            }
            return 0.0f;
        }

        public Paint n(master.flame.danmaku.danmaku.model.d dVar) {
            this.f87188f.setColor(dVar.f87288k);
            return this.f87188f;
        }

        public boolean o(master.flame.danmaku.danmaku.model.d dVar) {
            return (this.f87199q || this.f87201s) && this.f87192j > 0.0f && dVar.f87287j != 0;
        }

        public void p(boolean z9) {
            this.f87185c.setFakeBoldText(z9);
        }

        public void q(float f10, float f11, int i4) {
            if (this.f87193k == f10 && this.f87194l == f11 && this.f87195m == i4) {
                return;
            }
            if (f10 <= 1.0f) {
                f10 = 1.0f;
            }
            this.f87193k = f10;
            if (f11 <= 1.0f) {
                f11 = 1.0f;
            }
            this.f87194l = f11;
            if (i4 < 0) {
                i4 = 0;
            } else if (i4 > 255) {
                i4 = 255;
            }
            this.f87195m = i4;
        }

        public void r(float f10) {
            this.f87207y = f10 != 1.0f;
            this.f87206x = f10;
        }

        public void s(float f10) {
            this.f87191i = f10;
        }

        public void t(float f10) {
            this.f87185c.setStrokeWidth(f10);
            this.f87192j = f10;
        }

        public void u(int i4) {
            this.f87204v = i4 != master.flame.danmaku.danmaku.model.c.f87276a;
            this.f87205w = i4;
        }

        public void v(Typeface typeface) {
            this.f87185c.setTypeface(typeface);
        }
    }

    private void E(master.flame.danmaku.danmaku.model.d dVar, TextPaint textPaint, boolean z9) {
        this.f87171i.e(dVar, textPaint, z9);
        N(dVar, dVar.f87293p, dVar.f87294q);
    }

    @SuppressLint({"NewApi"})
    private static final int H(Canvas canvas) {
        return canvas.getMaximumBitmapHeight();
    }

    @SuppressLint({"NewApi"})
    private static final int I(Canvas canvas) {
        return canvas.getMaximumBitmapWidth();
    }

    private synchronized TextPaint J(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
        return this.f87170h.l(dVar, z9);
    }

    private void K(Paint paint) {
        int alpha = paint.getAlpha();
        int i4 = master.flame.danmaku.danmaku.model.c.f87276a;
        if (alpha != i4) {
            paint.setAlpha(i4);
        }
    }

    private void L(Canvas canvas) {
        canvas.restore();
    }

    private int M(master.flame.danmaku.danmaku.model.d dVar, Canvas canvas, float f10, float f11) {
        this.f87168f.save();
        float f12 = this.f87175m;
        if (f12 != 0.0f) {
            this.f87168f.setLocation(0.0f, 0.0f, f12);
        }
        this.f87168f.rotateY(-dVar.f87286i);
        this.f87168f.rotateZ(-dVar.f87285h);
        this.f87168f.getMatrix(this.f87169g);
        this.f87169g.preTranslate(-f10, -f11);
        this.f87169g.postTranslate(f10, f11);
        this.f87168f.restore();
        int save = canvas.save();
        canvas.concat(this.f87169g);
        return save;
    }

    private void N(master.flame.danmaku.danmaku.model.d dVar, float f10, float f11) {
        int i4 = dVar.f87291n;
        float f12 = f10 + (i4 * 2);
        float f13 = f11 + (i4 * 2);
        if (dVar.f87290m != 0) {
            float f14 = 8;
            f12 += f14;
            f13 += f14;
        }
        dVar.f87293p = f12 + t();
        dVar.f87294q = f13;
    }

    private void T(Canvas canvas) {
        this.f87172j = canvas;
        if (canvas != null) {
            this.f87173k = canvas.getWidth();
            this.f87174l = canvas.getHeight();
            if (this.f87180r) {
                this.f87181s = I(canvas);
                this.f87182t = H(canvas);
            }
        }
    }

    @Override // master.flame.danmaku.danmaku.model.b
    public void A(boolean z9) {
        this.f87170h.p(z9);
    }

    @Override // master.flame.danmaku.danmaku.model.b
    public void B(float f10) {
        this.f87170h.r(f10);
    }

    @Override // master.flame.danmaku.danmaku.model.b
    public void C(int i4) {
        this.f87170h.u(i4);
    }

    @Override // master.flame.danmaku.danmaku.model.b
    /* renamed from: F */
    public synchronized void v(master.flame.danmaku.danmaku.model.d dVar, Canvas canvas, float f10, float f11, boolean z9) {
        b bVar = this.f87171i;
        if (bVar != null) {
            bVar.d(dVar, canvas, f10, f11, z9, this.f87170h);
        }
    }

    @Override // master.flame.danmaku.danmaku.model.b
    /* renamed from: G */
    public Canvas x() {
        return this.f87172j;
    }

    @Override // master.flame.danmaku.danmaku.model.b
    /* renamed from: O */
    public void z(Canvas canvas) {
        T(canvas);
    }

    public void P(float f10) {
        this.f87170h.t(f10);
    }

    public void Q(float f10, float f11, int i4) {
        this.f87170h.q(f10, f11, i4);
    }

    public void R(float f10) {
        this.f87170h.s(f10);
    }

    @Override // master.flame.danmaku.danmaku.model.b
    /* renamed from: S */
    public void D(Typeface typeface) {
        this.f87170h.v(typeface);
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public void a(float f10) {
        float max = Math.max(f10, getWidth() / 682.0f) * 25.0f;
        this.f87179q = (int) max;
        if (f10 > 1.0f) {
            this.f87179q = (int) (max * f10);
        }
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public int b() {
        return this.f87179q;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public void c(int i4, float[] fArr) {
        if (i4 != -1) {
            if (i4 == 0) {
                C0783a c0783a = this.f87170h;
                c0783a.f87196n = false;
                c0783a.f87198p = false;
                c0783a.f87200r = false;
                return;
            } else if (i4 == 1) {
                C0783a c0783a2 = this.f87170h;
                c0783a2.f87196n = true;
                c0783a2.f87198p = false;
                c0783a2.f87200r = false;
                R(fArr[0]);
                return;
            } else if (i4 != 2) {
                if (i4 != 3) {
                    return;
                }
                C0783a c0783a3 = this.f87170h;
                c0783a3.f87196n = false;
                c0783a3.f87198p = false;
                c0783a3.f87200r = true;
                Q(fArr[0], fArr[1], (int) fArr[2]);
                return;
            }
        }
        C0783a c0783a4 = this.f87170h;
        c0783a4.f87196n = false;
        c0783a4.f87198p = true;
        c0783a4.f87200r = false;
        P(fArr[0]);
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public void d(float f10, int i4, float f11) {
        this.f87176n = f10;
        this.f87177o = i4;
        this.f87178p = f11;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public int e() {
        return this.f87177o;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public float f() {
        return this.f87178p;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public int g() {
        return this.f87181s;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public int getHeight() {
        return this.f87174l;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public int getWidth() {
        return this.f87173k;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public void h(int i4, int i10) {
        this.f87173k = i4;
        this.f87174l = i10;
        this.f87175m = (float) ((i4 / 2.0f) / Math.tan(0.4799655442984406d));
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public float i() {
        return this.f87176n;
    }

    @Override // master.flame.danmaku.danmaku.model.b, master.flame.danmaku.danmaku.model.n
    public boolean isHardwareAccelerated() {
        return this.f87180r;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public void j(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
        TextPaint J = J(dVar, z9);
        if (this.f87170h.f87199q) {
            this.f87170h.g(dVar, J, true);
        }
        E(dVar, J, z9);
        if (this.f87170h.f87199q) {
            this.f87170h.g(dVar, J, false);
        }
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public void k(int i4) {
        this.f87170h.f87208z = i4;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public int l(master.flame.danmaku.danmaku.model.d dVar) {
        Paint paint;
        boolean z9;
        boolean z10;
        float m9 = dVar.m();
        float g4 = dVar.g();
        if (this.f87172j != null) {
            Paint paint2 = null;
            int i4 = 1;
            if (dVar.n() != 7) {
                paint = null;
                z9 = false;
            } else if (dVar.c() == master.flame.danmaku.danmaku.model.c.f87277b) {
                return 0;
            } else {
                if (dVar.f87285h == 0.0f && dVar.f87286i == 0.0f) {
                    z10 = false;
                } else {
                    M(dVar, this.f87172j, g4, m9);
                    z10 = true;
                }
                if (dVar.c() != master.flame.danmaku.danmaku.model.c.f87276a) {
                    paint2 = this.f87170h.f87187e;
                    paint2.setAlpha(dVar.c());
                }
                paint = paint2;
                z9 = z10;
            }
            if (paint == null || paint.getAlpha() != master.flame.danmaku.danmaku.model.c.f87277b) {
                if (!this.f87171i.c(dVar, this.f87172j, g4, m9, paint, this.f87170h.f87185c)) {
                    if (paint != null) {
                        this.f87170h.f87185c.setAlpha(paint.getAlpha());
                        this.f87170h.f87186d.setAlpha(paint.getAlpha());
                    } else {
                        K(this.f87170h.f87185c);
                    }
                    v(dVar, this.f87172j, g4, m9, false);
                    i4 = 2;
                }
                if (z9) {
                    L(this.f87172j);
                }
                return i4;
            }
            return 0;
        }
        return 0;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public void m(int i4) {
        this.f87170h.A = i4;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public void n(master.flame.danmaku.danmaku.model.d dVar) {
        b bVar = this.f87171i;
        if (bVar != null) {
            bVar.g(dVar);
        }
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public int o() {
        return this.f87170h.f87208z;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public int p() {
        return this.f87182t;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public void q(boolean z9) {
        this.f87180r = z9;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public int r() {
        return this.f87170h.A;
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public void s(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
        b bVar = this.f87171i;
        if (bVar != null) {
            bVar.f(dVar, z9);
        }
    }

    @Override // master.flame.danmaku.danmaku.model.n
    public float t() {
        return this.f87170h.m();
    }

    @Override // master.flame.danmaku.danmaku.model.b
    public void u() {
        this.f87171i.b();
        this.f87170h.i();
    }

    @Override // master.flame.danmaku.danmaku.model.b
    public b w() {
        return this.f87171i;
    }

    @Override // master.flame.danmaku.danmaku.model.b
    public void y(b bVar) {
        if (bVar != this.f87171i) {
            this.f87171i = bVar;
        }
    }
}
