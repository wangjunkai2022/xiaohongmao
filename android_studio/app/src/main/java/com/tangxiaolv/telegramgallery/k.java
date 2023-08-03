package com.tangxiaolv.telegramgallery;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.tangxiaolv.telegramgallery.TL.d;
import com.tangxiaolv.telegramgallery.Utils.h;

/* compiled from: ImageReceiver.java */
/* loaded from: classes3.dex */
public class k implements h.c {
    private static PorterDuffColorFilter U = new PorterDuffColorFilter(-2236963, PorterDuff.Mode.MULTIPLY);
    private static Paint V;
    private Rect A;
    private boolean B;
    private boolean C;
    private boolean D;
    private int E;
    private BitmapShader F;
    private BitmapShader G;
    private RectF H;
    private RectF I;
    private Matrix J;
    private float K;
    private boolean L;
    private int M;
    private boolean N;
    private b O;
    private float P;
    private long Q;
    private byte R;
    private boolean S;
    private ColorFilter T;

    /* renamed from: a  reason: collision with root package name */
    private View f56724a;

    /* renamed from: b  reason: collision with root package name */
    private Integer f56725b;

    /* renamed from: c  reason: collision with root package name */
    private Integer f56726c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f56727d;

    /* renamed from: e  reason: collision with root package name */
    private c f56728e;

    /* renamed from: f  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.TL.m f56729f;

    /* renamed from: g  reason: collision with root package name */
    private String f56730g;

    /* renamed from: h  reason: collision with root package name */
    private String f56731h;

    /* renamed from: i  reason: collision with root package name */
    private String f56732i;

    /* renamed from: j  reason: collision with root package name */
    private String f56733j;

    /* renamed from: k  reason: collision with root package name */
    private String f56734k;

    /* renamed from: l  reason: collision with root package name */
    private String f56735l;

    /* renamed from: m  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.TL.d f56736m;

    /* renamed from: n  reason: collision with root package name */
    private int f56737n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f56738o;

    /* renamed from: p  reason: collision with root package name */
    private Drawable f56739p;

    /* renamed from: q  reason: collision with root package name */
    private Drawable f56740q;

    /* renamed from: r  reason: collision with root package name */
    private Drawable f56741r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f56742s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f56743t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f56744u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f56745v;

    /* renamed from: w  reason: collision with root package name */
    private int f56746w;

    /* renamed from: x  reason: collision with root package name */
    private int f56747x;

    /* renamed from: y  reason: collision with root package name */
    private int f56748y;

    /* renamed from: z  reason: collision with root package name */
    private int f56749z;

    /* compiled from: ImageReceiver.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(k kVar, boolean z9, boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageReceiver.java */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        public com.tangxiaolv.telegramgallery.TL.m f56750a;

        /* renamed from: b  reason: collision with root package name */
        public String f56751b;

        /* renamed from: c  reason: collision with root package name */
        public String f56752c;

        /* renamed from: d  reason: collision with root package name */
        public Drawable f56753d;

        /* renamed from: e  reason: collision with root package name */
        public com.tangxiaolv.telegramgallery.TL.d f56754e;

        /* renamed from: f  reason: collision with root package name */
        public String f56755f;

        /* renamed from: g  reason: collision with root package name */
        public int f56756g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f56757h;

        /* renamed from: i  reason: collision with root package name */
        public String f56758i;

        private c() {
        }
    }

    public k() {
        this(null);
    }

    private void Q(String str, boolean z9) {
        String str2;
        Drawable drawable;
        if (z9) {
            str2 = this.f56731h;
            drawable = this.f56740q;
        } else {
            str2 = this.f56730g;
            drawable = this.f56739p;
        }
        if (str2 != null && ((str == null || !str.equals(str2)) && drawable != null)) {
            if (drawable instanceof AnimatedFileDrawable) {
                ((AnimatedFileDrawable) drawable).D();
            } else if (drawable instanceof BitmapDrawable) {
                Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                boolean K = com.tangxiaolv.telegramgallery.Utils.e.T().K(str2);
                if (!com.tangxiaolv.telegramgallery.Utils.e.T().W(str2) && K) {
                    bitmap.recycle();
                }
            }
        }
        if (z9) {
            this.f56740q = null;
            this.f56731h = null;
            return;
        }
        this.f56739p = null;
        this.f56730g = null;
    }

    private void b(boolean z9) {
        if (this.P != 1.0f) {
            if (!z9) {
                long currentTimeMillis = System.currentTimeMillis() - this.Q;
                if (currentTimeMillis > 18) {
                    currentTimeMillis = 18;
                }
                float f10 = this.P + (((float) currentTimeMillis) / 150.0f);
                this.P = f10;
                if (f10 > 1.0f) {
                    this.P = 1.0f;
                }
            }
            this.Q = System.currentTimeMillis();
            View view = this.f56724a;
            if (view != null) {
                if (this.f56745v) {
                    view.invalidate();
                    return;
                }
                int i4 = this.f56746w;
                int i10 = this.f56747x;
                view.invalidate(i4, i10, this.f56748y + i4, this.f56749z + i10);
            }
        }
    }

    private void e(Canvas canvas, Drawable drawable, int i4, BitmapShader bitmapShader) {
        Paint paint;
        int height;
        int width;
        int i10;
        int i11;
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapShader != null) {
                paint = V;
            } else {
                paint = bitmapDrawable.getPaint();
            }
            boolean z9 = (paint == null || paint.getColorFilter() == null) ? false : true;
            if (!z9 || this.L) {
                if (!z9 && this.L) {
                    if (bitmapShader != null) {
                        V.setColorFilter(U);
                    } else {
                        bitmapDrawable.setColorFilter(U);
                    }
                }
            } else if (bitmapShader != null) {
                V.setColorFilter(null);
            } else {
                bitmapDrawable.setColorFilter(null);
            }
            ColorFilter colorFilter = this.T;
            if (colorFilter != null) {
                if (bitmapShader != null) {
                    V.setColorFilter(colorFilter);
                } else {
                    bitmapDrawable.setColorFilter(colorFilter);
                }
            }
            if (bitmapDrawable instanceof AnimatedFileDrawable) {
                int i12 = this.M;
                if (i12 % 360 != 90 && i12 % 360 != 270) {
                    height = bitmapDrawable.getIntrinsicWidth();
                    width = bitmapDrawable.getIntrinsicHeight();
                } else {
                    height = bitmapDrawable.getIntrinsicHeight();
                    width = bitmapDrawable.getIntrinsicWidth();
                }
            } else {
                int i13 = this.M;
                if (i13 % 360 != 90 && i13 % 360 != 270) {
                    height = bitmapDrawable.getBitmap().getWidth();
                    width = bitmapDrawable.getBitmap().getHeight();
                } else {
                    height = bitmapDrawable.getBitmap().getHeight();
                    width = bitmapDrawable.getBitmap().getWidth();
                }
            }
            float f10 = height;
            float f11 = f10 / this.f56748y;
            float f12 = width;
            float f13 = f12 / this.f56749z;
            if (bitmapShader != null) {
                V.setShader(bitmapShader);
                float min = Math.min(f11, f13);
                this.H.set(this.f56746w, this.f56747x, i10 + this.f56748y, i11 + this.f56749z);
                this.J.reset();
                float f14 = f11 - f13;
                if (Math.abs(f14) > 1.0E-5f) {
                    float f15 = f10 / f13;
                    int i14 = this.f56748y;
                    if (f15 > i14) {
                        Rect rect = this.A;
                        int i15 = this.f56746w;
                        int i16 = (int) f15;
                        int i17 = this.f56747x;
                        rect.set(i15 - ((i16 - i14) / 2), i17, i15 + ((i16 + i14) / 2), this.f56749z + i17);
                    } else {
                        Rect rect2 = this.A;
                        int i18 = this.f56746w;
                        int i19 = this.f56747x;
                        int i20 = (int) (f12 / f11);
                        int i21 = this.f56749z;
                        rect2.set(i18, i19 - ((i20 - i21) / 2), i14 + i18, i19 + ((i20 + i21) / 2));
                    }
                } else {
                    Rect rect3 = this.A;
                    int i22 = this.f56746w;
                    int i23 = this.f56747x;
                    rect3.set(i22, i23, this.f56748y + i22, this.f56749z + i23);
                }
                if (this.B) {
                    if (Math.abs(f14) > 1.0E-5f) {
                        int floor = (int) Math.floor(this.f56748y * min);
                        int floor2 = (int) Math.floor(this.f56749z * min);
                        this.I.set((height - floor) / 2, (width - floor2) / 2, (height + floor) / 2, (width + floor2) / 2);
                        this.J.setRectToRect(this.I, this.H, Matrix.ScaleToFit.START);
                    } else {
                        this.I.set(0.0f, 0.0f, f10, f12);
                        this.J.setRectToRect(this.I, this.H, Matrix.ScaleToFit.FILL);
                    }
                    bitmapShader.setLocalMatrix(this.J);
                    V.setAlpha(i4);
                    RectF rectF = this.H;
                    int i24 = this.E;
                    canvas.drawRoundRect(rectF, i24, i24, V);
                    return;
                }
                return;
            } else if (this.C) {
                float max = Math.max(f11, f13);
                canvas.save();
                int i25 = (int) (f10 / max);
                int i26 = (int) (f12 / max);
                Rect rect4 = this.A;
                int i27 = this.f56746w;
                int i28 = this.f56748y;
                int i29 = this.f56747x;
                int i30 = this.f56749z;
                rect4.set(((i28 - i25) / 2) + i27, ((i30 - i26) / 2) + i29, i27 + ((i28 + i25) / 2), i29 + ((i30 + i26) / 2));
                bitmapDrawable.setBounds(this.A);
                try {
                    bitmapDrawable.setAlpha(i4);
                    bitmapDrawable.draw(canvas);
                } catch (Exception e4) {
                    if (bitmapDrawable == this.f56739p && this.f56730g != null) {
                        com.tangxiaolv.telegramgallery.Utils.e.T().c0(this.f56730g);
                        this.f56730g = null;
                    } else if (bitmapDrawable == this.f56740q && this.f56731h != null) {
                        com.tangxiaolv.telegramgallery.Utils.e.T().c0(this.f56731h);
                        this.f56731h = null;
                    }
                    c0(this.f56729f, this.f56732i, this.f56733j, this.f56740q, this.f56736m, this.f56734k, this.f56737n, this.f56735l, this.f56738o);
                    e4.printStackTrace();
                }
                canvas.restore();
                return;
            } else if (Math.abs(f11 - f13) > 1.0E-5f) {
                canvas.save();
                int i31 = this.f56746w;
                int i32 = this.f56747x;
                canvas.clipRect(i31, i32, this.f56748y + i31, this.f56749z + i32);
                int i33 = this.M;
                if (i33 % 360 != 0) {
                    if (this.N) {
                        canvas.rotate(i33, this.f56748y / 2, this.f56749z / 2);
                    } else {
                        canvas.rotate(i33, 0.0f, 0.0f);
                    }
                }
                float f16 = f10 / f13;
                int i34 = this.f56748y;
                if (f16 > i34) {
                    int i35 = (int) f16;
                    Rect rect5 = this.A;
                    int i36 = this.f56746w;
                    int i37 = this.f56747x;
                    rect5.set(i36 - ((i35 - i34) / 2), i37, i36 + ((i35 + i34) / 2), this.f56749z + i37);
                } else {
                    int i38 = (int) (f12 / f11);
                    Rect rect6 = this.A;
                    int i39 = this.f56746w;
                    int i40 = this.f56747x;
                    int i41 = this.f56749z;
                    rect6.set(i39, i40 - ((i38 - i41) / 2), i34 + i39, i40 + ((i38 + i41) / 2));
                }
                int i42 = this.M;
                if (i42 % 360 != 90 && i42 % 360 != 270) {
                    bitmapDrawable.setBounds(this.A);
                } else {
                    Rect rect7 = this.A;
                    int i43 = rect7.right;
                    int i44 = rect7.left;
                    int i45 = (i43 - i44) / 2;
                    int i46 = rect7.bottom;
                    int i47 = rect7.top;
                    int i48 = (i46 - i47) / 2;
                    int i49 = (i43 + i44) / 2;
                    int i50 = (i47 + i46) / 2;
                    bitmapDrawable.setBounds(i49 - i48, i50 - i45, i49 + i48, i50 + i45);
                }
                if (this.B) {
                    try {
                        bitmapDrawable.setAlpha(i4);
                        bitmapDrawable.draw(canvas);
                    } catch (Exception e10) {
                        if (bitmapDrawable == this.f56739p && this.f56730g != null) {
                            com.tangxiaolv.telegramgallery.Utils.e.T().c0(this.f56730g);
                            this.f56730g = null;
                        } else if (bitmapDrawable == this.f56740q && this.f56731h != null) {
                            com.tangxiaolv.telegramgallery.Utils.e.T().c0(this.f56731h);
                            this.f56731h = null;
                        }
                        c0(this.f56729f, this.f56732i, this.f56733j, this.f56740q, this.f56736m, this.f56734k, this.f56737n, this.f56735l, this.f56738o);
                        e10.printStackTrace();
                    }
                }
                canvas.restore();
                return;
            } else {
                canvas.save();
                int i51 = this.M;
                if (i51 % 360 != 0) {
                    if (this.N) {
                        canvas.rotate(i51, this.f56748y / 2, this.f56749z / 2);
                    } else {
                        canvas.rotate(i51, 0.0f, 0.0f);
                    }
                }
                Rect rect8 = this.A;
                int i52 = this.f56746w;
                int i53 = this.f56747x;
                rect8.set(i52, i53, this.f56748y + i52, this.f56749z + i53);
                int i54 = this.M;
                if (i54 % 360 != 90 && i54 % 360 != 270) {
                    bitmapDrawable.setBounds(this.A);
                } else {
                    Rect rect9 = this.A;
                    int i55 = rect9.right;
                    int i56 = rect9.left;
                    int i57 = (i55 - i56) / 2;
                    int i58 = rect9.bottom;
                    int i59 = rect9.top;
                    int i60 = (i58 - i59) / 2;
                    int i61 = (i55 + i56) / 2;
                    int i62 = (i59 + i58) / 2;
                    bitmapDrawable.setBounds(i61 - i60, i62 - i57, i61 + i60, i62 + i57);
                }
                if (this.B) {
                    try {
                        bitmapDrawable.setAlpha(i4);
                        bitmapDrawable.draw(canvas);
                    } catch (Exception e11) {
                        if (bitmapDrawable == this.f56739p && this.f56730g != null) {
                            com.tangxiaolv.telegramgallery.Utils.e.T().c0(this.f56730g);
                            this.f56730g = null;
                        } else if (bitmapDrawable == this.f56740q && this.f56731h != null) {
                            com.tangxiaolv.telegramgallery.Utils.e.T().c0(this.f56731h);
                            this.f56731h = null;
                        }
                        c0(this.f56729f, this.f56732i, this.f56733j, this.f56740q, this.f56736m, this.f56734k, this.f56737n, this.f56735l, this.f56738o);
                        e11.printStackTrace();
                    }
                }
                canvas.restore();
                return;
            }
        }
        Rect rect10 = this.A;
        int i63 = this.f56746w;
        int i64 = this.f56747x;
        rect10.set(i63, i64, this.f56748y + i63, this.f56749z + i64);
        drawable.setBounds(this.A);
        if (this.B) {
            try {
                drawable.setAlpha(i4);
                drawable.draw(canvas);
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    public int A() {
        return this.f56737n;
    }

    public Integer B(boolean z9) {
        if (z9) {
            return this.f56726c;
        }
        return this.f56725b;
    }

    public String C() {
        return this.f56734k;
    }

    public String D() {
        return this.f56731h;
    }

    public com.tangxiaolv.telegramgallery.TL.d E() {
        return this.f56736m;
    }

    public boolean F() {
        return this.B;
    }

    public boolean G() {
        return (this.f56739p == null && this.f56740q == null && this.f56741r == null) ? false : true;
    }

    public boolean H() {
        return (this.f56739p == null && this.f56740q == null && this.f56730g == null && this.f56732i == null && this.f56741r == null) ? false : true;
    }

    public boolean I() {
        return this.f56742s;
    }

    public boolean J() {
        Drawable drawable = this.f56739p;
        return (drawable instanceof AnimatedFileDrawable) && ((AnimatedFileDrawable) drawable).isRunning();
    }

    public boolean K() {
        return this.D;
    }

    public boolean L(float f10, float f11) {
        int i4 = this.f56746w;
        if (f10 >= i4 && f10 <= i4 + this.f56748y) {
            int i10 = this.f56747x;
            if (f11 >= i10 && f11 <= i10 + this.f56749z) {
                return true;
            }
        }
        return false;
    }

    public boolean M() {
        return this.f56743t;
    }

    public boolean N() {
        return this.f56744u;
    }

    public boolean O() {
        com.tangxiaolv.telegramgallery.Utils.h.b().a(this, com.tangxiaolv.telegramgallery.Utils.h.f56689r);
        c cVar = this.f56728e;
        if (cVar != null) {
            com.tangxiaolv.telegramgallery.TL.m mVar = cVar.f56750a;
            if (mVar == null && cVar.f56751b == null && cVar.f56754e == null && cVar.f56753d == null) {
                return false;
            }
            c0(mVar, cVar.f56751b, cVar.f56752c, cVar.f56753d, cVar.f56754e, cVar.f56755f, cVar.f56756g, cVar.f56758i, cVar.f56757h);
            return true;
        }
        return false;
    }

    public void P() {
        if (this.f56729f != null || this.f56732i != null || this.f56736m != null || this.f56741r != null) {
            if (this.f56728e == null) {
                this.f56728e = new c();
            }
            c cVar = this.f56728e;
            cVar.f56750a = this.f56729f;
            cVar.f56751b = this.f56732i;
            cVar.f56752c = this.f56733j;
            cVar.f56753d = this.f56741r;
            cVar.f56754e = this.f56736m;
            cVar.f56755f = this.f56734k;
            cVar.f56756g = this.f56737n;
            cVar.f56758i = this.f56735l;
            cVar.f56757h = this.f56738o;
        }
        com.tangxiaolv.telegramgallery.Utils.h.b().f(this, com.tangxiaolv.telegramgallery.Utils.h.f56689r);
        c();
    }

    public void R(boolean z9) {
        this.f56742s = z9;
    }

    public void S(float f10) {
        this.K = f10;
    }

    public void T(boolean z9) {
        this.C = z9;
    }

    public void U(ColorFilter colorFilter) {
        this.T = colorFilter;
    }

    public void V(byte b10) {
        this.R = b10;
    }

    public void W(b bVar) {
        this.O = bVar;
    }

    public void X(boolean z9) {
        this.D = z9;
    }

    public void Y(com.tangxiaolv.telegramgallery.TL.m mVar, String str, Drawable drawable, int i4, String str2, boolean z9) {
        c0(mVar, null, str, drawable, null, null, i4, str2, z9);
    }

    public void Z(com.tangxiaolv.telegramgallery.TL.m mVar, String str, Drawable drawable, String str2, boolean z9) {
        c0(mVar, null, str, drawable, null, null, 0, str2, z9);
    }

    public void a() {
        com.tangxiaolv.telegramgallery.Utils.e.T().F(this, 0);
        this.f56727d = true;
    }

    public void a0(com.tangxiaolv.telegramgallery.TL.m mVar, String str, com.tangxiaolv.telegramgallery.TL.d dVar, String str2, int i4, String str3, boolean z9) {
        c0(mVar, null, str, null, dVar, str2, i4, str3, z9);
    }

    public void b0(com.tangxiaolv.telegramgallery.TL.m mVar, String str, com.tangxiaolv.telegramgallery.TL.d dVar, String str2, String str3, boolean z9) {
        c0(mVar, null, str, null, dVar, str2, 0, str3, z9);
    }

    public void c() {
        Q(null, false);
        Q(null, true);
        if (this.f56743t) {
            com.tangxiaolv.telegramgallery.Utils.h.b().f(this, com.tangxiaolv.telegramgallery.Utils.h.f56693v);
            com.tangxiaolv.telegramgallery.Utils.e.T().F(this, 0);
        }
    }

    public void c0(com.tangxiaolv.telegramgallery.TL.m mVar, String str, String str2, Drawable drawable, com.tangxiaolv.telegramgallery.TL.d dVar, String str3, int i4, String str4, boolean z9) {
        String a10;
        String str5;
        com.tangxiaolv.telegramgallery.TL.m mVar2 = mVar;
        com.tangxiaolv.telegramgallery.TL.d dVar2 = dVar;
        c cVar = this.f56728e;
        if (cVar != null) {
            cVar.f56750a = null;
            cVar.f56751b = null;
            cVar.f56754e = null;
            cVar.f56753d = null;
        }
        if ((mVar2 == null && str == null && dVar2 == null) || (mVar2 != null && !(mVar2 instanceof d.b) && !(mVar2 instanceof d.a))) {
            Q(null, false);
            Q(null, true);
            this.f56730g = null;
            this.f56735l = str4;
            this.f56731h = null;
            this.f56734k = null;
            this.f56729f = null;
            this.f56732i = null;
            this.f56733j = null;
            this.f56738o = false;
            this.f56741r = drawable;
            this.P = 1.0f;
            this.f56736m = null;
            this.f56737n = 0;
            this.f56739p = null;
            this.F = null;
            this.G = null;
            com.tangxiaolv.telegramgallery.Utils.e.T().F(this, 0);
            View view = this.f56724a;
            if (view != null) {
                if (this.f56745v) {
                    view.invalidate();
                } else {
                    int i10 = this.f56746w;
                    int i11 = this.f56747x;
                    view.invalidate(i10, i11, this.f56748y + i10, this.f56749z + i11);
                }
            }
            b bVar = this.O;
            if (bVar != null) {
                Drawable drawable2 = this.f56739p;
                bVar.a(this, (drawable2 == null && this.f56740q == null && this.f56741r == null) ? false : true, drawable2 == null);
                return;
            }
            return;
        }
        if (!(dVar2 instanceof d.b)) {
            dVar2 = null;
        }
        if (mVar2 == null) {
            if (str != null) {
                a10 = com.tangxiaolv.telegramgallery.Utils.i.a(str);
            }
            a10 = null;
        } else if (mVar2 instanceof com.tangxiaolv.telegramgallery.TL.d) {
            com.tangxiaolv.telegramgallery.TL.d dVar3 = (com.tangxiaolv.telegramgallery.TL.d) mVar2;
            a10 = dVar3.f56288d + "_" + dVar3.f56289e;
        } else {
            mVar2 = null;
            a10 = null;
        }
        if (a10 != null && str2 != null) {
            a10 = a10 + "@" + str2;
        }
        String str6 = this.f56730g;
        if (str6 != null && a10 != null && str6.equals(a10)) {
            b bVar2 = this.O;
            if (bVar2 != null) {
                Drawable drawable3 = this.f56739p;
                bVar2.a(this, (drawable3 == null && this.f56740q == null && this.f56741r == null) ? false : true, drawable3 == null);
            }
            if (!this.f56727d && !this.D) {
                return;
            }
        }
        if (dVar2 != null) {
            str5 = dVar2.f56288d + "_" + dVar2.f56289e;
            if (str3 != null) {
                str5 = str5 + "@" + str3;
            }
        } else {
            str5 = null;
        }
        Q(a10, false);
        Q(str5, true);
        this.f56731h = str5;
        this.f56730g = a10;
        this.f56735l = str4;
        this.f56729f = mVar2;
        this.f56732i = str;
        this.f56733j = str2;
        this.f56734k = str3;
        this.f56737n = i4;
        this.f56738o = z9;
        this.f56736m = dVar2;
        this.f56741r = drawable;
        this.F = null;
        this.G = null;
        this.P = 1.0f;
        b bVar3 = this.O;
        if (bVar3 != null) {
            Drawable drawable4 = this.f56739p;
            bVar3.a(this, (drawable4 == null && this.f56740q == null && drawable == null) ? false : true, drawable4 == null);
        }
        com.tangxiaolv.telegramgallery.Utils.e.T().Y(this);
        View view2 = this.f56724a;
        if (view2 != null) {
            if (this.f56745v) {
                view2.invalidate();
                return;
            }
            int i12 = this.f56746w;
            int i13 = this.f56747x;
            view2.invalidate(i12, i13, this.f56748y + i12, this.f56749z + i13);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0030 A[Catch: Exception -> 0x00b6, TryCatch #0 {Exception -> 0x00b6, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x0013, B:11:0x0018, B:24:0x0030, B:26:0x0036, B:29:0x003c, B:59:0x009a, B:63:0x00a1, B:31:0x0049, B:33:0x0051, B:35:0x0055, B:47:0x006b, B:38:0x005b, B:41:0x0060, B:43:0x0064, B:48:0x0075, B:50:0x0080, B:52:0x0085, B:51:0x0083, B:53:0x0089, B:55:0x0090, B:57:0x0095, B:56:0x0093, B:65:0x00a5, B:67:0x00a9, B:69:0x00b2, B:15:0x001f, B:18:0x0027), top: B:74:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x006b A[Catch: Exception -> 0x00b6, TryCatch #0 {Exception -> 0x00b6, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x0013, B:11:0x0018, B:24:0x0030, B:26:0x0036, B:29:0x003c, B:59:0x009a, B:63:0x00a1, B:31:0x0049, B:33:0x0051, B:35:0x0055, B:47:0x006b, B:38:0x005b, B:41:0x0060, B:43:0x0064, B:48:0x0075, B:50:0x0080, B:52:0x0085, B:51:0x0083, B:53:0x0089, B:55:0x0090, B:57:0x0095, B:56:0x0093, B:65:0x00a5, B:67:0x00a9, B:69:0x00b2, B:15:0x001f, B:18:0x0027), top: B:74:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00a5 A[Catch: Exception -> 0x00b6, TryCatch #0 {Exception -> 0x00b6, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x0013, B:11:0x0018, B:24:0x0030, B:26:0x0036, B:29:0x003c, B:59:0x009a, B:63:0x00a1, B:31:0x0049, B:33:0x0051, B:35:0x0055, B:47:0x006b, B:38:0x005b, B:41:0x0060, B:43:0x0064, B:48:0x0075, B:50:0x0080, B:52:0x0085, B:51:0x0083, B:53:0x0089, B:55:0x0090, B:57:0x0095, B:56:0x0093, B:65:0x00a5, B:67:0x00a9, B:69:0x00b2, B:15:0x001f, B:18:0x0027), top: B:74:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean d(android.graphics.Canvas r10) {
        /*
            Method dump skipped, instructions count: 187
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.k.d(android.graphics.Canvas):boolean");
    }

    public void d0(String str, String str2, Drawable drawable, String str3, int i4) {
        c0(null, str, str2, drawable, null, null, i4, str3, true);
    }

    public void e0(Bitmap bitmap) {
        f0(bitmap != null ? new BitmapDrawable((Resources) null, bitmap) : null);
    }

    public AnimatedFileDrawable f() {
        Drawable drawable = this.f56739p;
        if (drawable instanceof AnimatedFileDrawable) {
            return (AnimatedFileDrawable) drawable;
        }
        return null;
    }

    public void f0(Drawable drawable) {
        boolean z9 = false;
        com.tangxiaolv.telegramgallery.Utils.e.T().F(this, 0);
        Q(null, false);
        Q(null, true);
        this.f56741r = drawable;
        this.f56736m = null;
        this.f56730g = null;
        this.f56735l = null;
        this.f56731h = null;
        this.f56739p = null;
        this.f56734k = null;
        this.f56729f = null;
        this.f56732i = null;
        this.f56733j = null;
        this.f56737n = 0;
        this.f56738o = false;
        this.F = null;
        this.G = null;
        c cVar = this.f56728e;
        if (cVar != null) {
            cVar.f56750a = null;
            cVar.f56751b = null;
            cVar.f56754e = null;
            cVar.f56753d = null;
        }
        this.P = 1.0f;
        b bVar = this.O;
        if (bVar != null) {
            bVar.a(this, (this.f56740q == null && drawable == null) ? true : true, true);
        }
        View view = this.f56724a;
        if (view != null) {
            if (this.f56745v) {
                view.invalidate();
                return;
            }
            int i4 = this.f56746w;
            int i10 = this.f56747x;
            view.invalidate(i4, i10, this.f56748y + i4, this.f56749z + i10);
        }
    }

    public Bitmap g() {
        Drawable drawable = this.f56739p;
        if (drawable instanceof AnimatedFileDrawable) {
            return ((AnimatedFileDrawable) drawable).z();
        }
        Drawable drawable2 = this.f56741r;
        if (drawable2 instanceof AnimatedFileDrawable) {
            return ((AnimatedFileDrawable) drawable2).z();
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Drawable drawable3 = this.f56740q;
        if (drawable3 instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable3).getBitmap();
        }
        if (drawable2 instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable2).getBitmap();
        }
        return null;
    }

    public boolean g0(BitmapDrawable bitmapDrawable, String str, boolean z9, boolean z10) {
        Drawable drawable;
        View view;
        if (bitmapDrawable == null || str == null) {
            return false;
        }
        if (!z9) {
            String str2 = this.f56730g;
            if (str2 == null || !str.equals(str2)) {
                return false;
            }
            boolean z11 = bitmapDrawable instanceof AnimatedFileDrawable;
            if (!z11) {
                com.tangxiaolv.telegramgallery.Utils.e.T().V(this.f56730g);
            }
            this.f56739p = bitmapDrawable;
            int i4 = this.E;
            if (i4 == 0) {
                this.F = null;
            } else if (z11) {
                ((AnimatedFileDrawable) bitmapDrawable).H(i4);
            } else {
                Bitmap bitmap = bitmapDrawable.getBitmap();
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.F = new BitmapShader(bitmap, tileMode, tileMode);
            }
            if (!z10 && !this.D) {
                if ((this.f56740q == null && this.f56741r == null) || this.P == 1.0f) {
                    this.P = 0.0f;
                    this.Q = System.currentTimeMillis();
                    this.S = (this.f56740q == null && this.f56741r == null) ? false : true;
                }
            } else {
                this.P = 1.0f;
            }
            if (z11) {
                AnimatedFileDrawable animatedFileDrawable = (AnimatedFileDrawable) bitmapDrawable;
                animatedFileDrawable.G(this.f56724a);
                if (this.f56742s) {
                    animatedFileDrawable.start();
                }
            }
            View view2 = this.f56724a;
            if (view2 != null) {
                if (this.f56745v) {
                    view2.invalidate();
                } else {
                    int i10 = this.f56746w;
                    int i11 = this.f56747x;
                    view2.invalidate(i10, i11, this.f56748y + i10, this.f56749z + i11);
                }
            }
        } else if (this.f56740q == null && ((drawable = this.f56739p) == null || (((drawable instanceof AnimatedFileDrawable) && !((AnimatedFileDrawable) drawable).A()) || this.D))) {
            String str3 = this.f56731h;
            if (str3 == null || !str.equals(str3)) {
                return false;
            }
            com.tangxiaolv.telegramgallery.Utils.e.T().V(this.f56731h);
            this.f56740q = bitmapDrawable;
            int i12 = this.E;
            if (i12 != 0 && this.f56739p == null) {
                if (bitmapDrawable instanceof AnimatedFileDrawable) {
                    ((AnimatedFileDrawable) bitmapDrawable).H(i12);
                } else {
                    Bitmap bitmap2 = bitmapDrawable.getBitmap();
                    Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
                    this.G = new BitmapShader(bitmap2, tileMode2, tileMode2);
                }
            } else {
                this.G = null;
            }
            if (!z10 && this.R != 2) {
                this.P = 0.0f;
                this.Q = System.currentTimeMillis();
                this.S = this.f56741r != null && this.f56730g == null;
            } else {
                this.P = 1.0f;
            }
            if (!(this.f56741r instanceof BitmapDrawable) && (view = this.f56724a) != null) {
                if (this.f56745v) {
                    view.invalidate();
                } else {
                    int i13 = this.f56746w;
                    int i14 = this.f56747x;
                    view.invalidate(i13, i14, this.f56748y + i13, this.f56749z + i14);
                }
            }
        }
        b bVar = this.O;
        if (bVar != null) {
            Drawable drawable2 = this.f56739p;
            bVar.a(this, (drawable2 == null && this.f56740q == null && this.f56741r == null) ? false : true, drawable2 == null);
        }
        return true;
    }

    @Override // com.tangxiaolv.telegramgallery.Utils.h.c
    public void h(int i4, Object... objArr) {
        if (i4 == com.tangxiaolv.telegramgallery.Utils.h.f56693v) {
            String str = (String) objArr[1];
            String str2 = this.f56731h;
            if (str2 == null || !str2.equals(str)) {
                return;
            }
            if (this.f56740q == null) {
                com.tangxiaolv.telegramgallery.Utils.e.T().V(this.f56731h);
            }
            BitmapDrawable bitmapDrawable = (BitmapDrawable) objArr[0];
            this.f56740q = bitmapDrawable;
            if (this.E != 0 && this.f56739p == null && (bitmapDrawable instanceof BitmapDrawable) && !(bitmapDrawable instanceof AnimatedFileDrawable)) {
                Bitmap bitmap = bitmapDrawable.getBitmap();
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                this.G = new BitmapShader(bitmap, tileMode, tileMode);
            } else {
                this.G = null;
            }
            if (this.f56741r instanceof BitmapDrawable) {
                this.f56741r = null;
            }
            View view = this.f56724a;
            if (view != null) {
                if (this.f56745v) {
                    view.invalidate();
                    return;
                }
                int i10 = this.f56746w;
                int i11 = this.f56747x;
                view.invalidate(i10, i11, this.f56748y + i10, this.f56749z + i11);
            }
        } else if (i4 == com.tangxiaolv.telegramgallery.Utils.h.f56689r) {
            String str3 = (String) objArr[0];
            String str4 = this.f56730g;
            if (str4 != null && str4.equals(str3)) {
                this.f56730g = (String) objArr[1];
                this.f56729f = (com.tangxiaolv.telegramgallery.TL.d) objArr[2];
            }
            String str5 = this.f56731h;
            if (str5 != null && str5.equals(str3)) {
                this.f56731h = (String) objArr[1];
                this.f56736m = (com.tangxiaolv.telegramgallery.TL.d) objArr[2];
            }
            if (this.f56728e != null) {
                String str6 = this.f56730g;
                if (str6 != null && str6.equals(str3)) {
                    this.f56730g = (String) objArr[1];
                    this.f56729f = (com.tangxiaolv.telegramgallery.TL.d) objArr[2];
                }
                String str7 = this.f56731h;
                if (str7 == null || !str7.equals(str3)) {
                    return;
                }
                this.f56731h = (String) objArr[1];
                this.f56736m = (com.tangxiaolv.telegramgallery.TL.d) objArr[2];
            }
        }
    }

    public void h0(int i4, int i10, int i11, int i12) {
        this.f56746w = i4;
        this.f56747x = i10;
        this.f56748y = i11;
        this.f56749z = i12;
    }

    public int i() {
        Drawable drawable = this.f56739p;
        if (drawable instanceof AnimatedFileDrawable) {
            int i4 = this.M;
            return (i4 % 360 == 0 || i4 % 360 == 180) ? drawable.getIntrinsicHeight() : drawable.getIntrinsicWidth();
        }
        Drawable drawable2 = this.f56741r;
        if (drawable2 instanceof AnimatedFileDrawable) {
            int i10 = this.M;
            return (i10 % 360 == 0 || i10 % 360 == 180) ? drawable2.getIntrinsicHeight() : drawable2.getIntrinsicWidth();
        }
        Bitmap g4 = g();
        int i11 = this.M;
        if (i11 % 360 != 0 && i11 % 360 != 180) {
            return g4.getWidth();
        }
        return g4.getHeight();
    }

    public void i0(boolean z9) {
        this.f56745v = z9;
    }

    public int j() {
        Drawable drawable = this.f56739p;
        if (drawable instanceof AnimatedFileDrawable) {
            int i4 = this.M;
            return (i4 % 360 == 0 || i4 % 360 == 180) ? drawable.getIntrinsicWidth() : drawable.getIntrinsicHeight();
        }
        Drawable drawable2 = this.f56741r;
        if (drawable2 instanceof AnimatedFileDrawable) {
            int i10 = this.M;
            return (i10 % 360 == 0 || i10 % 360 == 180) ? drawable2.getIntrinsicWidth() : drawable2.getIntrinsicHeight();
        }
        Bitmap g4 = g();
        int i11 = this.M;
        if (i11 % 360 != 0 && i11 % 360 != 180) {
            return g4.getHeight();
        }
        return g4.getWidth();
    }

    public void j0(boolean z9) {
        this.f56743t = z9;
        if (z9) {
            com.tangxiaolv.telegramgallery.Utils.h.b().a(this, com.tangxiaolv.telegramgallery.Utils.h.f56693v);
        } else {
            com.tangxiaolv.telegramgallery.Utils.h.b().f(this, com.tangxiaolv.telegramgallery.Utils.h.f56693v);
        }
    }

    public boolean k() {
        return this.f56738o;
    }

    public void k0(int i4, boolean z9) {
        while (i4 < 0) {
            i4 += 360;
        }
        while (i4 > 360) {
            i4 -= 360;
        }
        this.M = i4;
        this.N = z9;
    }

    public Rect l() {
        return this.A;
    }

    public void l0(View view) {
        this.f56724a = view;
        Drawable drawable = this.f56739p;
        if (drawable instanceof AnimatedFileDrawable) {
            ((AnimatedFileDrawable) drawable).G(view);
        }
    }

    public String m() {
        return this.f56735l;
    }

    public void m0(boolean z9) {
        this.L = z9;
    }

    public String n() {
        return this.f56733j;
    }

    public void n0(int i4) {
        this.E = i4;
    }

    public String o() {
        return this.f56732i;
    }

    public void o0(boolean z9) {
        this.f56744u = z9;
    }

    public int p() {
        return this.f56749z;
    }

    public void p0(Integer num, boolean z9) {
        if (z9) {
            this.f56726c = num;
        } else {
            this.f56725b = num;
        }
    }

    public com.tangxiaolv.telegramgallery.TL.m q() {
        return this.f56729f;
    }

    public void q0(boolean z9, boolean z10) {
        View view;
        if (this.B == z9) {
            return;
        }
        this.B = z9;
        if (!z10 || (view = this.f56724a) == null) {
            return;
        }
        if (this.f56745v) {
            view.invalidate();
            return;
        }
        int i4 = this.f56746w;
        int i10 = this.f56747x;
        view.invalidate(i4, i10, this.f56748y + i4, this.f56749z + i10);
    }

    public int r() {
        return this.f56748y;
    }

    public void r0() {
        Drawable drawable = this.f56739p;
        if (drawable instanceof AnimatedFileDrawable) {
            ((AnimatedFileDrawable) drawable).start();
        }
    }

    public int s() {
        return this.f56746w;
    }

    public void s0() {
        Drawable drawable = this.f56739p;
        if (drawable instanceof AnimatedFileDrawable) {
            ((AnimatedFileDrawable) drawable).stop();
        }
    }

    public int t() {
        return this.f56746w + this.f56748y;
    }

    public int u() {
        return this.f56747x;
    }

    public int v() {
        return this.f56747x + this.f56749z;
    }

    public String w() {
        return this.f56730g;
    }

    public int x() {
        return this.M;
    }

    public boolean y() {
        return this.L;
    }

    public int z() {
        return this.E;
    }

    public k(View view) {
        this.f56742s = true;
        this.A = new Rect();
        this.B = true;
        this.H = new RectF();
        this.I = new RectF();
        this.J = new Matrix();
        this.K = 1.0f;
        this.R = (byte) 1;
        this.f56724a = view;
        if (V == null) {
            V = new Paint(1);
        }
    }
}
