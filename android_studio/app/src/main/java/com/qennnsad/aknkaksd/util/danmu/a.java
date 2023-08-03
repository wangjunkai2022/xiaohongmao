package com.qennnsad.aknkaksd.util.danmu;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import com.qennnsad.aknkaksd.data.bean.Danmu;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.s;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import master.flame.danmaku.controller.c;
import master.flame.danmaku.controller.f;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.android.b;
import master.flame.danmaku.danmaku.model.android.e;
import master.flame.danmaku.danmaku.model.android.j;

/* compiled from: DanmuControl.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: n  reason: collision with root package name */
    private static final String f54596n = "DanmuControl";

    /* renamed from: o  reason: collision with root package name */
    private static final long f54597o = 2000;

    /* renamed from: p  reason: collision with root package name */
    private static final int f54598p = -42349;

    /* renamed from: q  reason: collision with root package name */
    private static final int f54599q = -32422;

    /* renamed from: r  reason: collision with root package name */
    private static final int f54600r = -1308622848;

    /* renamed from: i  reason: collision with root package name */
    private Context f54609i;

    /* renamed from: j  reason: collision with root package name */
    private f f54610j;

    /* renamed from: k  reason: collision with root package name */
    private DanmakuContext f54611k;

    /* renamed from: l  reason: collision with root package name */
    private float f54612l;

    /* renamed from: a  reason: collision with root package name */
    private int f54601a = 40;

    /* renamed from: b  reason: collision with root package name */
    private int f54602b = 40;

    /* renamed from: c  reason: collision with root package name */
    private float f54603c = 11.0f;

    /* renamed from: d  reason: collision with root package name */
    private int f54604d = 8;

    /* renamed from: e  reason: collision with root package name */
    private int f54605e = 6;

    /* renamed from: f  reason: collision with root package name */
    private int f54606f = 15;

    /* renamed from: g  reason: collision with root package name */
    private final int f54607g = 1;

    /* renamed from: h  reason: collision with root package name */
    private final int f54608h = 2;

    /* renamed from: m  reason: collision with root package name */
    private b.a f54613m = new C0457a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DanmuControl.java */
    /* renamed from: com.qennnsad.aknkaksd.util.danmu.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0457a extends b.a {
        C0457a() {
        }

        @Override // master.flame.danmaku.danmaku.model.android.b.a
        public void a(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
        }

        @Override // master.flame.danmaku.danmaku.model.android.b.a
        public void b(master.flame.danmaku.danmaku.model.d dVar) {
            if (dVar.f87280c instanceof Spanned) {
                dVar.f87280c = "";
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DanmuControl.java */
    /* loaded from: classes3.dex */
    public class b implements c.d {
        b() {
        }

        @Override // master.flame.danmaku.controller.c.d
        public void o() {
        }

        @Override // master.flame.danmaku.controller.c.d
        public void q(master.flame.danmaku.danmaku.model.f fVar) {
        }

        @Override // master.flame.danmaku.controller.c.d
        public void v() {
            a.this.f54610j.start();
        }

        @Override // master.flame.danmaku.controller.c.d
        public void w(master.flame.danmaku.danmaku.model.d dVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DanmuControl.java */
    /* loaded from: classes3.dex */
    public class c extends master.flame.danmaku.danmaku.parser.a {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // master.flame.danmaku.danmaku.parser.a
        /* renamed from: m */
        public e f() {
            return new e();
        }
    }

    public a(Context context) {
        this.f54609i = context;
        r(context);
        l();
    }

    private SpannableStringBuilder h(Drawable drawable, String str) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("bitmap");
        spannableStringBuilder.setSpan(new m5.a(drawable), 0, 6, 17);
        if (!TextUtils.isEmpty(str)) {
            spannableStringBuilder.append((CharSequence) " ");
            spannableStringBuilder.append((CharSequence) str.trim());
        }
        return spannableStringBuilder;
    }

    private Bitmap j(Bitmap bitmap) {
        if (bitmap != null) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            o0.a(f54596n, "width = " + width);
            o0.a(f54596n, "height = " + height);
            Matrix matrix = new Matrix();
            matrix.postScale(((float) this.f54601a) / ((float) width), ((float) this.f54602b) / ((float) height));
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
            o0.a(f54596n, "mDefauleBitmap getWidth = " + createBitmap.getWidth());
            o0.a(f54596n, "mDefauleBitmap getHeight = " + createBitmap.getHeight());
            return createBitmap;
        }
        return null;
    }

    private void l() {
        HashMap hashMap = new HashMap();
        hashMap.put(1, 5);
        HashMap hashMap2 = new HashMap();
        Boolean bool = Boolean.TRUE;
        hashMap2.put(1, bool);
        hashMap2.put(5, bool);
        DanmakuContext e4 = DanmakuContext.e();
        this.f54611k = e4;
        e4.G(0, new float[0]).K(false).W(1.0f).V(1.2f).B(new d(this, null), this.f54613m).R(hashMap).u(hashMap2);
    }

    private void m() {
        f fVar = this.f54610j;
        if (fVar != null) {
            fVar.setCallback(new b());
        }
        this.f54610j.l(new c(), this.f54611k);
        this.f54610j.x(true);
    }

    private void r(Context context) {
        this.f54601a = s.b(context, this.f54602b);
        this.f54602b = s.b(context, this.f54602b);
        this.f54604d = s.b(context, this.f54604d);
        this.f54605e = s.b(context, this.f54605e);
        this.f54606f = s.b(context, this.f54606f);
        this.f54603c = s.e(context, this.f54603c);
    }

    public void f(Danmu danmu, int i4) {
        master.flame.danmaku.danmaku.model.d b10 = this.f54611k.A.b(1);
        if (danmu == null || b10 == null) {
            return;
        }
        b10.B = danmu.userId;
        b10.D = danmu.type.equals("Like");
        m5.b bVar = new m5.b(this.f54609i, j(danmu.avatarUrl), b10.D);
        bVar.setBounds(0, 0, this.f54601a, this.f54602b);
        b10.f87280c = h(bVar, danmu.content);
        b10.f87291n = this.f54604d;
        b10.f87292o = (byte) 0;
        b10.f87303z = false;
        b10.G(this.f54610j.getCurrentTime() + (i4 * 2000));
        b10.f87289l = this.f54603c;
        b10.f87284g = -1;
        b10.f87287j = 0;
        b10.f87295r.b(6500L);
        this.f54610j.b(b10);
    }

    public void g() {
        f fVar = this.f54610j;
        if (fVar == null || !fVar.r()) {
            return;
        }
        this.f54610j.t();
    }

    public void i() {
        f fVar = this.f54610j;
        if (fVar != null) {
            fVar.release();
            this.f54610j = null;
        }
    }

    public void k() {
        f fVar = this.f54610j;
        if (fVar != null) {
            fVar.hide();
        }
    }

    public void n() {
        f fVar = this.f54610j;
        if (fVar == null || !fVar.r()) {
            return;
        }
        this.f54610j.pause();
    }

    public void o() {
        f fVar = this.f54610j;
        if (fVar != null) {
            fVar.d(true);
        }
    }

    public void p() {
        f fVar = this.f54610j;
        if (fVar != null && fVar.r() && this.f54610j.i()) {
            this.f54610j.k();
        }
    }

    public void q(f fVar) {
        this.f54610j = fVar;
        m();
    }

    public void s() {
        f fVar = this.f54610j;
        if (fVar != null) {
            fVar.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DanmuControl.java */
    /* loaded from: classes3.dex */
    public class d extends j {

        /* renamed from: c  reason: collision with root package name */
        final Paint f54617c;

        private d() {
            this.f54617c = new Paint();
        }

        @Override // master.flame.danmaku.danmaku.model.android.j, master.flame.danmaku.danmaku.model.android.i, master.flame.danmaku.danmaku.model.android.b
        public void e(master.flame.danmaku.danmaku.model.d dVar, TextPaint textPaint, boolean z9) {
            if (dVar.f87280c instanceof Spanned) {
                b.a aVar = this.f87209a;
                if (aVar != null) {
                    aVar.a(dVar, z9);
                }
                CharSequence charSequence = dVar.f87280c;
                if (charSequence != null) {
                    StaticLayout staticLayout = new StaticLayout(charSequence, textPaint, (int) StaticLayout.getDesiredWidth(dVar.f87280c, textPaint), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
                    int indexOf = charSequence.toString().indexOf(" ");
                    a.this.f54612l = StaticLayout.getDesiredWidth(charSequence.subSequence(0, indexOf - 1), textPaint);
                    String substring = charSequence.toString().substring(indexOf + 1, charSequence.length());
                    int indexOf2 = substring.indexOf(":");
                    int i4 = indexOf2 + 1;
                    String substring2 = substring.substring(0, i4);
                    String substring3 = substring.substring(i4, substring.length());
                    String str = substring3.length() == 0 ? " " : substring3;
                    StaticLayout staticLayout2 = new StaticLayout(substring2, 0, indexOf2, textPaint, (int) StaticLayout.getDesiredWidth(substring2, textPaint), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
                    StaticLayout staticLayout3 = new StaticLayout(str, i4, str.length(), textPaint, (int) StaticLayout.getDesiredWidth(str, textPaint), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
                    if (staticLayout2.getWidth() > staticLayout3.getWidth()) {
                        dVar.f87293p = staticLayout2.getWidth() + a.this.f54612l + a.this.f54605e;
                    } else {
                        dVar.f87293p = staticLayout3.getWidth() + a.this.f54612l + a.this.f54605e;
                    }
                    dVar.f87294q = staticLayout2.getHeight() * 2;
                    dVar.f87282e = new SoftReference(staticLayout);
                    return;
                }
            }
            super.e(dVar, textPaint, z9);
        }

        @Override // master.flame.danmaku.danmaku.model.android.i
        public void i(master.flame.danmaku.danmaku.model.d dVar, Canvas canvas, float f10, float f11) {
            int i4;
            this.f54617c.setAntiAlias(true);
            boolean z9 = dVar.D;
            if (!z9 && dVar.B == 1) {
                this.f54617c.setColor(637534208);
            } else if (!z9 && (i4 = dVar.B) == 2 && i4 != 0) {
                this.f54617c.setColor(637534208);
            } else {
                this.f54617c.setColor(637534208);
            }
            if (dVar.D) {
                this.f54617c.setColor(637534208);
            }
            canvas.drawRoundRect(new RectF(40.0f + f10, a.this.f54605e + f11, ((f10 + dVar.f87293p) - a.this.f54605e) + 6.0f, ((f11 + dVar.f87294q) - a.this.f54605e) + 6.0f), a.this.f54606f, a.this.f54606f, this.f54617c);
        }

        @Override // master.flame.danmaku.danmaku.model.android.j, master.flame.danmaku.danmaku.model.android.i
        public void j(master.flame.danmaku.danmaku.model.d dVar, String str, Canvas canvas, float f10, float f11, Paint paint) {
        }

        @Override // master.flame.danmaku.danmaku.model.android.j, master.flame.danmaku.danmaku.model.android.i
        public void k(master.flame.danmaku.danmaku.model.d dVar, String str, Canvas canvas, float f10, float f11, TextPaint textPaint, boolean z9) {
            boolean z10;
            StaticLayout staticLayout;
            Object obj = dVar.f87282e;
            if (obj == null) {
                super.k(dVar, str, canvas, f10, f11, textPaint, z9);
                return;
            }
            SoftReference softReference = (SoftReference) obj;
            StaticLayout staticLayout2 = (StaticLayout) softReference.get();
            StaticLayout staticLayout3 = (StaticLayout) softReference.get();
            int i4 = dVar.J;
            boolean z11 = (i4 & 1) != 0;
            boolean z12 = (i4 & 2) != 0;
            if (z12 || staticLayout2 == null) {
                if (z12) {
                    dVar.J = i4 & (-3);
                } else {
                    b.a aVar = this.f87209a;
                    if (aVar != null) {
                        aVar.a(dVar, z9);
                    }
                }
                CharSequence charSequence = dVar.f87280c;
                if (charSequence == null) {
                    return;
                }
                if (z11) {
                    dVar.f87293p = staticLayout2.getWidth();
                    dVar.f87294q = staticLayout2.getHeight();
                    dVar.J &= -2;
                } else {
                    staticLayout2 = new StaticLayout(charSequence, textPaint, (int) dVar.f87293p, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
                }
                dVar.f87282e = new SoftReference(staticLayout2);
            }
            if (f10 == 0.0f || f11 == 0.0f) {
                z10 = false;
            } else {
                canvas.save();
                canvas.translate(f10, f11 + textPaint.ascent());
                z10 = true;
            }
            CharSequence charSequence2 = dVar.f87280c;
            if (charSequence2 != null) {
                int indexOf = charSequence2.toString().indexOf(":") + 1;
                String substring = dVar.f87280c.toString().substring(indexOf, dVar.f87280c.length());
                textPaint.setColor(-42587);
                CharSequence charSequence3 = dVar.f87280c;
                boolean z13 = z10;
                new StaticLayout(charSequence3, 0, indexOf, textPaint, (int) StaticLayout.getDesiredWidth(charSequence3, textPaint), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true).draw(canvas);
                textPaint.setColor(-1);
                canvas.translate(a.this.f54612l, staticLayout.getHeight());
                new StaticLayout(substring, textPaint, (int) StaticLayout.getDesiredWidth(substring, textPaint), Layout.Alignment.ALIGN_OPPOSITE, 1.0f, 0.0f, true).draw(canvas);
                if (z13) {
                    canvas.restore();
                }
            }
        }

        /* synthetic */ d(a aVar, C0457a c0457a) {
            this();
        }
    }
}
