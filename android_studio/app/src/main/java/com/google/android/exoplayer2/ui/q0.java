package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubtitlePainter.java */
/* loaded from: classes2.dex */
public final class q0 {
    private static final String K = "SubtitlePainter";
    private static final float L = 0.125f;
    private int A;
    private int B;
    private int C;
    private int D;
    private StaticLayout E;
    private StaticLayout F;
    private int G;
    private int H;
    private int I;
    private Rect J;

    /* renamed from: a  reason: collision with root package name */
    private final float f26883a;

    /* renamed from: b  reason: collision with root package name */
    private final float f26884b;

    /* renamed from: c  reason: collision with root package name */
    private final float f26885c;

    /* renamed from: d  reason: collision with root package name */
    private final float f26886d;

    /* renamed from: e  reason: collision with root package name */
    private final float f26887e;

    /* renamed from: f  reason: collision with root package name */
    private final TextPaint f26888f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f26889g;

    /* renamed from: h  reason: collision with root package name */
    private final Paint f26890h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private CharSequence f26891i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Layout.Alignment f26892j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Bitmap f26893k;

    /* renamed from: l  reason: collision with root package name */
    private float f26894l;

    /* renamed from: m  reason: collision with root package name */
    private int f26895m;

    /* renamed from: n  reason: collision with root package name */
    private int f26896n;

    /* renamed from: o  reason: collision with root package name */
    private float f26897o;

    /* renamed from: p  reason: collision with root package name */
    private int f26898p;

    /* renamed from: q  reason: collision with root package name */
    private float f26899q;

    /* renamed from: r  reason: collision with root package name */
    private float f26900r;

    /* renamed from: s  reason: collision with root package name */
    private int f26901s;

    /* renamed from: t  reason: collision with root package name */
    private int f26902t;

    /* renamed from: u  reason: collision with root package name */
    private int f26903u;

    /* renamed from: v  reason: collision with root package name */
    private int f26904v;

    /* renamed from: w  reason: collision with root package name */
    private int f26905w;

    /* renamed from: x  reason: collision with root package name */
    private float f26906x;

    /* renamed from: y  reason: collision with root package name */
    private float f26907y;

    /* renamed from: z  reason: collision with root package name */
    private float f26908z;

    public q0(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.f26887e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f26886d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f26883a = round;
        this.f26884b = round;
        this.f26885c = round;
        TextPaint textPaint = new TextPaint();
        this.f26888f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f26889g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f26890h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    private static boolean a(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }

    @RequiresNonNull({"cueBitmap", "bitmapRect"})
    private void c(Canvas canvas) {
        canvas.drawBitmap(this.f26893k, (Rect) null, this.J, this.f26890h);
    }

    private void d(Canvas canvas, boolean z9) {
        if (z9) {
            e(canvas);
            return;
        }
        com.google.android.exoplayer2.util.a.g(this.J);
        com.google.android.exoplayer2.util.a.g(this.f26893k);
        c(canvas);
    }

    private void e(Canvas canvas) {
        StaticLayout staticLayout = this.E;
        StaticLayout staticLayout2 = this.F;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(this.G, this.H);
        if (Color.alpha(this.f26903u) > 0) {
            this.f26889g.setColor(this.f26903u);
            canvas.drawRect(-this.I, 0.0f, staticLayout.getWidth() + this.I, staticLayout.getHeight(), this.f26889g);
        }
        int i4 = this.f26905w;
        if (i4 == 1) {
            this.f26888f.setStrokeJoin(Paint.Join.ROUND);
            this.f26888f.setStrokeWidth(this.f26883a);
            this.f26888f.setColor(this.f26904v);
            this.f26888f.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas);
        } else if (i4 == 2) {
            TextPaint textPaint = this.f26888f;
            float f10 = this.f26884b;
            float f11 = this.f26885c;
            textPaint.setShadowLayer(f10, f11, f11, this.f26904v);
        } else if (i4 == 3 || i4 == 4) {
            boolean z9 = i4 == 3;
            int i10 = z9 ? -1 : this.f26904v;
            int i11 = z9 ? this.f26904v : -1;
            float f12 = this.f26884b / 2.0f;
            this.f26888f.setColor(this.f26901s);
            this.f26888f.setStyle(Paint.Style.FILL);
            float f13 = -f12;
            this.f26888f.setShadowLayer(this.f26884b, f13, f13, i10);
            staticLayout2.draw(canvas);
            this.f26888f.setShadowLayer(this.f26884b, f12, f12, i11);
        }
        this.f26888f.setColor(this.f26901s);
        this.f26888f.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.f26888f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(save);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005e  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"cueBitmap"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void f() {
        /*
            r7 = this;
            android.graphics.Bitmap r0 = r7.f26893k
            int r1 = r7.C
            int r2 = r7.A
            int r1 = r1 - r2
            int r3 = r7.D
            int r4 = r7.B
            int r3 = r3 - r4
            float r2 = (float) r2
            float r1 = (float) r1
            float r5 = r7.f26897o
            float r5 = r5 * r1
            float r2 = r2 + r5
            float r4 = (float) r4
            float r3 = (float) r3
            float r5 = r7.f26894l
            float r5 = r5 * r3
            float r4 = r4 + r5
            float r5 = r7.f26899q
            float r1 = r1 * r5
            int r1 = java.lang.Math.round(r1)
            float r5 = r7.f26900r
            r6 = -8388609(0xffffffffff7fffff, float:-3.4028235E38)
            int r6 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r6 == 0) goto L32
            float r3 = r3 * r5
            int r0 = java.lang.Math.round(r3)
            goto L44
        L32:
            float r3 = (float) r1
            int r5 = r0.getHeight()
            float r5 = (float) r5
            int r0 = r0.getWidth()
            float r0 = (float) r0
            float r5 = r5 / r0
            float r3 = r3 * r5
            int r0 = java.lang.Math.round(r3)
        L44:
            int r3 = r7.f26898p
            r5 = 1
            r6 = 2
            if (r3 != r6) goto L4d
            float r3 = (float) r1
        L4b:
            float r2 = r2 - r3
            goto L53
        L4d:
            if (r3 != r5) goto L53
            int r3 = r1 / 2
            float r3 = (float) r3
            goto L4b
        L53:
            int r2 = java.lang.Math.round(r2)
            int r3 = r7.f26896n
            if (r3 != r6) goto L5e
            float r3 = (float) r0
        L5c:
            float r4 = r4 - r3
            goto L64
        L5e:
            if (r3 != r5) goto L64
            int r3 = r0 / 2
            float r3 = (float) r3
            goto L5c
        L64:
            int r3 = java.lang.Math.round(r4)
            android.graphics.Rect r4 = new android.graphics.Rect
            int r1 = r1 + r2
            int r0 = r0 + r3
            r4.<init>(r2, r3, r1, r0)
            r7.J = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.q0.f():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a8  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"cueText"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void g() {
        /*
            Method dump skipped, instructions count: 495
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.q0.g():void");
    }

    public void b(com.google.android.exoplayer2.text.a aVar, e eVar, float f10, float f11, float f12, Canvas canvas, int i4, int i10, int i11, int i12) {
        boolean z9 = aVar.f25316d == null;
        int i13 = ViewCompat.MEASURED_STATE_MASK;
        if (z9) {
            if (TextUtils.isEmpty(aVar.f25313a)) {
                return;
            }
            i13 = aVar.f25324l ? aVar.f25325m : eVar.f26362c;
        }
        if (a(this.f26891i, aVar.f25313a) && com.google.android.exoplayer2.util.z0.c(this.f26892j, aVar.f25314b) && this.f26893k == aVar.f25316d && this.f26894l == aVar.f25317e && this.f26895m == aVar.f25318f && com.google.android.exoplayer2.util.z0.c(Integer.valueOf(this.f26896n), Integer.valueOf(aVar.f25319g)) && this.f26897o == aVar.f25320h && com.google.android.exoplayer2.util.z0.c(Integer.valueOf(this.f26898p), Integer.valueOf(aVar.f25321i)) && this.f26899q == aVar.f25322j && this.f26900r == aVar.f25323k && this.f26901s == eVar.f26360a && this.f26902t == eVar.f26361b && this.f26903u == i13 && this.f26905w == eVar.f26363d && this.f26904v == eVar.f26364e && com.google.android.exoplayer2.util.z0.c(this.f26888f.getTypeface(), eVar.f26365f) && this.f26906x == f10 && this.f26907y == f11 && this.f26908z == f12 && this.A == i4 && this.B == i10 && this.C == i11 && this.D == i12) {
            d(canvas, z9);
            return;
        }
        this.f26891i = aVar.f25313a;
        this.f26892j = aVar.f25314b;
        this.f26893k = aVar.f25316d;
        this.f26894l = aVar.f25317e;
        this.f26895m = aVar.f25318f;
        this.f26896n = aVar.f25319g;
        this.f26897o = aVar.f25320h;
        this.f26898p = aVar.f25321i;
        this.f26899q = aVar.f25322j;
        this.f26900r = aVar.f25323k;
        this.f26901s = eVar.f26360a;
        this.f26902t = eVar.f26361b;
        this.f26903u = i13;
        this.f26905w = eVar.f26363d;
        this.f26904v = eVar.f26364e;
        this.f26888f.setTypeface(eVar.f26365f);
        this.f26906x = f10;
        this.f26907y = f11;
        this.f26908z = f12;
        this.A = i4;
        this.B = i10;
        this.C = i11;
        this.D = i12;
        if (z9) {
            com.google.android.exoplayer2.util.a.g(this.f26891i);
            g();
        } else {
            com.google.android.exoplayer2.util.a.g(this.f26893k);
            f();
        }
        d(canvas, z9);
    }
}
