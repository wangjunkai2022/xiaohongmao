package com.facebook.drawee.drawable;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Arrays;

/* compiled from: FadeDrawable.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class g extends a {
    @VisibleForTesting
    public static final int A = 2;
    @VisibleForTesting

    /* renamed from: y  reason: collision with root package name */
    public static final int f11455y = 0;
    @VisibleForTesting

    /* renamed from: z  reason: collision with root package name */
    public static final int f11456z = 1;

    /* renamed from: i  reason: collision with root package name */
    private final Drawable[] f11457i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f11458j;

    /* renamed from: k  reason: collision with root package name */
    private final int f11459k;

    /* renamed from: l  reason: collision with root package name */
    private final int f11460l;
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    int f11461m;
    @VisibleForTesting

    /* renamed from: n  reason: collision with root package name */
    int f11462n;
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    long f11463o;
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    int[] f11464p;
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    int[] f11465q;
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    int f11466r;
    @VisibleForTesting

    /* renamed from: s  reason: collision with root package name */
    boolean[] f11467s;
    @VisibleForTesting

    /* renamed from: t  reason: collision with root package name */
    int f11468t;
    @r7.h

    /* renamed from: u  reason: collision with root package name */
    private i1.i f11469u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f11470v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f11471w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f11472x;

    public g(Drawable[] layers) {
        this(layers, false, -1);
    }

    private void A() {
        if (this.f11471w && this.f11461m == 2 && this.f11467s[this.f11460l]) {
            i1.i iVar = this.f11469u;
            if (iVar != null) {
                iVar.b();
            }
            this.f11471w = false;
        }
    }

    private void C() {
        this.f11461m = 2;
        Arrays.fill(this.f11464p, this.f11459k);
        this.f11464p[0] = 255;
        Arrays.fill(this.f11465q, this.f11459k);
        this.f11465q[0] = 255;
        Arrays.fill(this.f11467s, this.f11458j);
        this.f11467s[0] = true;
    }

    private boolean H(float ratio) {
        boolean z9 = true;
        for (int i4 = 0; i4 < this.f11457i.length; i4++) {
            boolean[] zArr = this.f11467s;
            int i10 = zArr[i4] ? 1 : -1;
            int[] iArr = this.f11465q;
            iArr[i4] = (int) (this.f11464p[i4] + (i10 * 255 * ratio));
            if (iArr[i4] < 0) {
                iArr[i4] = 0;
            }
            if (iArr[i4] > 255) {
                iArr[i4] = 255;
            }
            if (zArr[i4] && iArr[i4] < 255) {
                z9 = false;
            }
            if (!zArr[i4] && iArr[i4] > 0) {
                z9 = false;
            }
        }
        return z9;
    }

    private void h(Canvas canvas, Drawable drawable, int alpha) {
        if (drawable == null || alpha <= 0) {
            return;
        }
        this.f11468t++;
        if (this.f11472x) {
            drawable.mutate();
        }
        drawable.setAlpha(alpha);
        this.f11468t--;
        drawable.draw(canvas);
    }

    private void y() {
        if (this.f11470v) {
            this.f11470v = false;
            i1.i iVar = this.f11469u;
            if (iVar != null) {
                iVar.c();
            }
        }
    }

    private void z() {
        int i4;
        if (!this.f11470v && (i4 = this.f11460l) >= 0) {
            boolean[] zArr = this.f11467s;
            if (i4 < zArr.length && zArr[i4]) {
                this.f11470v = true;
                i1.i iVar = this.f11469u;
                if (iVar != null) {
                    iVar.a();
                }
            }
        }
    }

    public void B() {
        C();
        invalidateSelf();
    }

    public void D(boolean mutateDrawables) {
        this.f11472x = mutateDrawables;
    }

    public void E(@r7.h i1.i onFadeListener) {
        this.f11469u = onFadeListener;
    }

    public void F(int durationMs) {
        this.f11462n = durationMs;
        if (this.f11461m == 1) {
            this.f11461m = 0;
        }
    }

    public void G(int index) {
        this.f11467s[index] = true;
        this.f11465q[index] = 255;
        if (index == this.f11460l) {
            this.f11471w = true;
        }
        invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0056 A[LOOP:0: B:25:0x0051->B:27:0x0056, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0072 A[EDGE_INSN: B:32:0x0072->B:28:0x0072 ?: BREAK  , SYNTHETIC] */
    @Override // com.facebook.drawee.drawable.a, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void draw(android.graphics.Canvas r9) {
        /*
            r8 = this;
            int r0 = r8.f11461m
            r1 = 2
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L2b
            if (r0 == r3) goto La
            goto L51
        La:
            int r0 = r8.f11462n
            if (r0 <= 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            com.facebook.common.internal.j.o(r0)
            long r4 = r8.s()
            long r6 = r8.f11463o
            long r4 = r4 - r6
            float r0 = (float) r4
            int r4 = r8.f11462n
            float r4 = (float) r4
            float r0 = r0 / r4
            boolean r0 = r8.H(r0)
            if (r0 == 0) goto L27
            goto L28
        L27:
            r1 = 1
        L28:
            r8.f11461m = r1
            goto L50
        L2b:
            int[] r0 = r8.f11465q
            int[] r4 = r8.f11464p
            android.graphics.drawable.Drawable[] r5 = r8.f11457i
            int r5 = r5.length
            java.lang.System.arraycopy(r0, r2, r4, r2, r5)
            long r4 = r8.s()
            r8.f11463o = r4
            int r0 = r8.f11462n
            if (r0 != 0) goto L42
            r0 = 1065353216(0x3f800000, float:1.0)
            goto L43
        L42:
            r0 = 0
        L43:
            boolean r0 = r8.H(r0)
            r8.z()
            if (r0 == 0) goto L4d
            goto L4e
        L4d:
            r1 = 1
        L4e:
            r8.f11461m = r1
        L50:
            r3 = r0
        L51:
            android.graphics.drawable.Drawable[] r0 = r8.f11457i
            int r1 = r0.length
            if (r2 >= r1) goto L72
            r0 = r0[r2]
            int[] r1 = r8.f11465q
            r1 = r1[r2]
            int r4 = r8.f11466r
            int r1 = r1 * r4
            double r4 = (double) r1
            r6 = 4643176031446892544(0x406fe00000000000, double:255.0)
            double r4 = r4 / r6
            double r4 = java.lang.Math.ceil(r4)
            int r1 = (int) r4
            r8.h(r9, r0, r1)
            int r2 = r2 + 1
            goto L51
        L72:
            if (r3 == 0) goto L7b
            r8.y()
            r8.A()
            goto L7e
        L7b:
            r8.invalidateSelf()
        L7e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.drawee.drawable.g.draw(android.graphics.Canvas):void");
    }

    public void g() {
        this.f11468t++;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f11466r;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.f11468t == 0) {
            super.invalidateSelf();
        }
    }

    public void j() {
        this.f11468t--;
        invalidateSelf();
    }

    public void k() {
        this.f11461m = 0;
        Arrays.fill(this.f11467s, true);
        invalidateSelf();
    }

    public void l(int index) {
        this.f11461m = 0;
        this.f11467s[index] = true;
        invalidateSelf();
    }

    public void m() {
        this.f11461m = 0;
        Arrays.fill(this.f11467s, false);
        invalidateSelf();
    }

    public void n(int index) {
        this.f11461m = 0;
        this.f11467s[index] = false;
        invalidateSelf();
    }

    public void o(int index) {
        this.f11461m = 0;
        Arrays.fill(this.f11467s, false);
        this.f11467s[index] = true;
        invalidateSelf();
    }

    public void p(int index) {
        this.f11461m = 0;
        int i4 = index + 1;
        Arrays.fill(this.f11467s, 0, i4, true);
        Arrays.fill(this.f11467s, i4, this.f11457i.length, false);
        invalidateSelf();
    }

    public void r() {
        this.f11461m = 2;
        for (int i4 = 0; i4 < this.f11457i.length; i4++) {
            this.f11465q[i4] = this.f11467s[i4] ? 255 : 0;
        }
        invalidateSelf();
    }

    protected long s() {
        return SystemClock.uptimeMillis();
    }

    @Override // com.facebook.drawee.drawable.a, android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        if (this.f11466r != alpha) {
            this.f11466r = alpha;
            invalidateSelf();
        }
    }

    public int t() {
        return this.f11462n;
    }

    @VisibleForTesting
    public int u() {
        return this.f11461m;
    }

    public void v(int index) {
        this.f11467s[index] = false;
        this.f11465q[index] = 0;
        invalidateSelf();
    }

    public boolean w() {
        return this.f11458j;
    }

    public boolean x(int index) {
        return this.f11467s[index];
    }

    public g(Drawable[] layers, boolean allLayersVisible, int actualImageLayer) {
        super(layers);
        this.f11472x = true;
        com.facebook.common.internal.j.p(layers.length >= 1, "At least one layer required!");
        this.f11457i = layers;
        this.f11464p = new int[layers.length];
        this.f11465q = new int[layers.length];
        this.f11466r = 255;
        this.f11467s = new boolean[layers.length];
        this.f11468t = 0;
        this.f11458j = allLayersVisible;
        this.f11459k = allLayersVisible ? 255 : 0;
        this.f11460l = actualImageLayer;
        C();
    }
}
