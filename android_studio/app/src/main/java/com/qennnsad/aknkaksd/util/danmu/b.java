package com.qennnsad.aknkaksd.util.danmu;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
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
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.Danmu;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.s;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.List;
import master.flame.danmaku.controller.c;
import master.flame.danmaku.controller.f;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.android.b;
import master.flame.danmaku.danmaku.model.android.j;

/* compiled from: FlyGiftControl.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: q  reason: collision with root package name */
    private static final String f54619q = "DanmuControl";

    /* renamed from: r  reason: collision with root package name */
    private static final long f54620r = 2000;

    /* renamed from: s  reason: collision with root package name */
    private static final int f54621s = -42349;

    /* renamed from: t  reason: collision with root package name */
    private static final int f54622t = -32422;

    /* renamed from: u  reason: collision with root package name */
    private static final int f54623u = -1308622848;

    /* renamed from: k  reason: collision with root package name */
    private Context f54634k;

    /* renamed from: l  reason: collision with root package name */
    private f f54635l;

    /* renamed from: m  reason: collision with root package name */
    private DanmakuContext f54636m;

    /* renamed from: n  reason: collision with root package name */
    private DanmakuContext f54637n;

    /* renamed from: o  reason: collision with root package name */
    private float f54638o;

    /* renamed from: a  reason: collision with root package name */
    private int f54624a = 40;

    /* renamed from: b  reason: collision with root package name */
    private int f54625b = 40;

    /* renamed from: c  reason: collision with root package name */
    private float f54626c = 11.0f;

    /* renamed from: d  reason: collision with root package name */
    private int f54627d = 30;

    /* renamed from: e  reason: collision with root package name */
    private int f54628e = 90;

    /* renamed from: f  reason: collision with root package name */
    private int f54629f = 8;

    /* renamed from: g  reason: collision with root package name */
    private int f54630g = 6;

    /* renamed from: h  reason: collision with root package name */
    private int f54631h = 15;

    /* renamed from: i  reason: collision with root package name */
    private final int f54632i = 1;

    /* renamed from: j  reason: collision with root package name */
    private final int f54633j = 2;

    /* renamed from: p  reason: collision with root package name */
    private b.a f54639p = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlyGiftControl.java */
    /* loaded from: classes3.dex */
    public class a extends b.a {
        a() {
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
    /* compiled from: FlyGiftControl.java */
    /* renamed from: com.qennnsad.aknkaksd.util.danmu.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0458b implements c.d {
        C0458b() {
        }

        @Override // master.flame.danmaku.controller.c.d
        public void o() {
        }

        @Override // master.flame.danmaku.controller.c.d
        public void q(master.flame.danmaku.danmaku.model.f fVar) {
        }

        @Override // master.flame.danmaku.controller.c.d
        public void v() {
            b.this.f54635l.start();
        }

        @Override // master.flame.danmaku.controller.c.d
        public void w(master.flame.danmaku.danmaku.model.d dVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlyGiftControl.java */
    /* loaded from: classes3.dex */
    public class c extends master.flame.danmaku.danmaku.parser.a {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // master.flame.danmaku.danmaku.parser.a
        /* renamed from: m */
        public master.flame.danmaku.danmaku.model.android.e f() {
            return new master.flame.danmaku.danmaku.model.android.e();
        }
    }

    /* compiled from: FlyGiftControl.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f54643a;

        d(List list) {
            this.f54643a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i4 = 0; i4 < this.f54643a.size(); i4++) {
                b.this.g((Danmu) this.f54643a.get(i4), i4);
            }
        }
    }

    public b(Context context) {
        this.f54634k = context;
        r(context);
        m();
    }

    private SpannableStringBuilder i(Drawable drawable, String str) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("bitmap");
        spannableStringBuilder.setSpan(new m5.a(drawable), 0, 6, 17);
        if (!TextUtils.isEmpty(str)) {
            spannableStringBuilder.append((CharSequence) " ");
            spannableStringBuilder.append((CharSequence) str.trim());
        }
        return spannableStringBuilder;
    }

    private Bitmap k(Bitmap bitmap) {
        if (bitmap != null) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            o0.a(f54619q, "width = " + width);
            o0.a(f54619q, "height = " + height);
            Matrix matrix = new Matrix();
            matrix.postScale(((float) this.f54624a) / ((float) width), ((float) this.f54625b) / ((float) height));
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
            o0.a(f54619q, "mDefauleBitmap getWidth = " + createBitmap.getWidth());
            o0.a(f54619q, "mDefauleBitmap getHeight = " + createBitmap.getHeight());
            return createBitmap;
        }
        return null;
    }

    private void m() {
        HashMap hashMap = new HashMap();
        hashMap.put(1, 5);
        HashMap hashMap2 = new HashMap();
        Boolean bool = Boolean.TRUE;
        hashMap2.put(1, bool);
        hashMap2.put(5, bool);
        DanmakuContext e4 = DanmakuContext.e();
        this.f54636m = e4;
        e4.G(0, new float[0]).K(false).W(1.0f).V(1.2f).B(new e(this, null), this.f54639p).R(hashMap).u(hashMap2);
    }

    private void n() {
        f fVar = this.f54635l;
        if (fVar != null) {
            fVar.setCallback(new C0458b());
        }
        this.f54635l.l(new c(), this.f54636m);
        this.f54635l.x(true);
    }

    private void r(Context context) {
        this.f54624a = s.b(context, this.f54625b);
        this.f54625b = s.b(context, this.f54625b);
        this.f54629f = s.b(context, this.f54629f);
        this.f54630g = s.b(context, this.f54630g);
        this.f54631h = s.b(context, this.f54631h);
        this.f54626c = s.e(context, this.f54626c);
    }

    public void g(Danmu danmu, int i4) {
        master.flame.danmaku.danmaku.model.d b10 = this.f54636m.A.b(1);
        b10.B = danmu.userId;
        b10.D = danmu.type.equals("Like");
        m5.b bVar = new m5.b(this.f54634k, k(danmu.avatarUrl), b10.D);
        bVar.setBounds(0, 0, this.f54624a, this.f54625b);
        b10.f87280c = i(bVar, danmu.content);
        b10.f87291n = this.f54629f;
        b10.f87292o = (byte) 0;
        b10.f87303z = false;
        b10.G(this.f54635l.getCurrentTime() + (i4 * 2000));
        b10.f87289l = this.f54626c;
        b10.f87284g = -1;
        b10.f87287j = 0;
        this.f54635l.b(b10);
    }

    public void h(List<Danmu> list) {
        new Thread(new d(list)).start();
    }

    public void j() {
        f fVar = this.f54635l;
        if (fVar != null) {
            fVar.release();
            this.f54635l = null;
        }
    }

    public void l() {
        f fVar = this.f54635l;
        if (fVar != null) {
            fVar.hide();
        }
    }

    public void o() {
        f fVar = this.f54635l;
        if (fVar == null || !fVar.r()) {
            return;
        }
        this.f54635l.pause();
    }

    public void p() {
        f fVar = this.f54635l;
        if (fVar != null && fVar.r() && this.f54635l.i()) {
            this.f54635l.k();
        }
    }

    public void q(f fVar) {
        this.f54635l = fVar;
        n();
    }

    public void s() {
        f fVar = this.f54635l;
        if (fVar != null) {
            fVar.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FlyGiftControl.java */
    /* loaded from: classes3.dex */
    public class e extends j {

        /* renamed from: c  reason: collision with root package name */
        final Paint f54645c;

        /* renamed from: d  reason: collision with root package name */
        private int f54646d;

        private e() {
            this.f54645c = new Paint();
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
                    b.this.f54638o = StaticLayout.getDesiredWidth(charSequence.subSequence(0, indexOf - 1), textPaint);
                    String substring = charSequence.toString().substring(indexOf + 1, charSequence.length());
                    int indexOf2 = substring.indexOf(":");
                    int i4 = indexOf2 + 1;
                    String substring2 = substring.substring(0, i4);
                    String substring3 = substring.substring(i4, substring.length());
                    String str = substring3.length() == 0 ? " " : substring3;
                    StaticLayout staticLayout2 = new StaticLayout(substring2, 0, indexOf2, textPaint, (int) StaticLayout.getDesiredWidth(substring2, textPaint), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
                    StaticLayout staticLayout3 = new StaticLayout(str, i4, str.length(), textPaint, (int) StaticLayout.getDesiredWidth(str, textPaint), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeResource(b.this.f54634k.getResources(), R.drawable.big_win_message, options);
                    int i10 = options.outHeight;
                    if (staticLayout2.getWidth() > staticLayout3.getWidth()) {
                        dVar.f87293p = staticLayout2.getWidth() + b.this.f54638o + b.this.f54630g;
                    } else {
                        dVar.f87293p = staticLayout3.getWidth() + b.this.f54638o + b.this.f54630g;
                    }
                    dVar.f87294q = (staticLayout2.getHeight() * 2) + i10;
                    dVar.f87282e = new SoftReference(staticLayout);
                    return;
                }
            }
            super.e(dVar, textPaint, z9);
        }

        @Override // master.flame.danmaku.danmaku.model.android.i
        public void i(master.flame.danmaku.danmaku.model.d dVar, Canvas canvas, float f10, float f11) {
            int i4;
            this.f54645c.setAntiAlias(true);
            boolean z9 = dVar.D;
            if (!z9 && dVar.B == 1) {
                this.f54645c.setColor(637534208);
            } else if (!z9 && (i4 = dVar.B) == 2 && i4 != 0) {
                this.f54645c.setColor(637534208);
            } else {
                this.f54645c.setColor(637534208);
            }
            if (dVar.D) {
                this.f54645c.setColor(637534208);
            }
            canvas.drawBitmap(BitmapFactory.decodeResource(b.this.f54634k.getResources(), R.drawable.big_win_message), f10, f11, new Paint());
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeResource(b.this.f54634k.getResources(), R.drawable.big_win_message, options);
            this.f54646d = options.outHeight;
            canvas.drawRoundRect(new RectF(40.0f + f10, b.this.f54630g + f11 + this.f54646d, ((f10 + dVar.f87293p) - b.this.f54630g) + 6.0f, ((f11 + dVar.f87294q) - b.this.f54630g) + 6.0f), b.this.f54631h, b.this.f54631h, this.f54645c);
        }

        @Override // master.flame.danmaku.danmaku.model.android.j, master.flame.danmaku.danmaku.model.android.i
        public void j(master.flame.danmaku.danmaku.model.d dVar, String str, Canvas canvas, float f10, float f11, Paint paint) {
        }

        @Override // master.flame.danmaku.danmaku.model.android.j, master.flame.danmaku.danmaku.model.android.i
        public void k(master.flame.danmaku.danmaku.model.d dVar, String str, Canvas canvas, float f10, float f11, TextPaint textPaint, boolean z9) {
            StaticLayout staticLayout;
            Object obj = dVar.f87282e;
            if (obj == null) {
                super.k(dVar, str, canvas, f10, f11 + this.f54646d, textPaint, z9);
                return;
            }
            SoftReference softReference = (SoftReference) obj;
            StaticLayout staticLayout2 = (StaticLayout) softReference.get();
            StaticLayout staticLayout3 = (StaticLayout) softReference.get();
            int i4 = dVar.J;
            boolean z10 = false;
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
            if (f10 != 0.0f && f11 != 0.0f) {
                canvas.save();
                canvas.translate(f10, f11 + textPaint.ascent() + this.f54646d);
                z10 = true;
            }
            CharSequence charSequence2 = dVar.f87280c;
            if (charSequence2 != null) {
                int indexOf = charSequence2.toString().indexOf(":") + 1;
                String substring = dVar.f87280c.toString().substring(indexOf, dVar.f87280c.length());
                textPaint.setColor(-42587);
                CharSequence charSequence3 = dVar.f87280c;
                new StaticLayout(charSequence3, 0, indexOf, textPaint, (int) StaticLayout.getDesiredWidth(charSequence3, textPaint), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true).draw(canvas);
                textPaint.setColor(Color.rgb(255, 89, 165));
                canvas.translate(b.this.f54638o, staticLayout.getHeight());
                new StaticLayout(substring, textPaint, (int) StaticLayout.getDesiredWidth(substring, textPaint), Layout.Alignment.ALIGN_OPPOSITE, 1.0f, 0.0f, true).draw(canvas);
                if (z10) {
                    canvas.restore();
                }
            }
        }

        /* synthetic */ e(b bVar, a aVar) {
            this();
        }
    }
}
