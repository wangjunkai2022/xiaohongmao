package com.google.android.exoplayer2.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.ui.q;
import com.google.android.exoplayer2.ui.u0;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes2.dex */
public class DefaultTimeBar extends View implements u0 {
    private static final String E2 = "android.widget.SeekBar";
    public static final int P = 4;
    public static final int Q = 26;
    public static final int R = 4;
    public static final int S = 12;
    public static final int T = 0;
    public static final int T1 = 1;
    public static final int U = 16;
    public static final int V = -1;
    private static final int V1 = -50;
    public static final int W = 872415231;

    /* renamed from: b1  reason: collision with root package name */
    public static final int f26099b1 = -855638017;

    /* renamed from: b2  reason: collision with root package name */
    private static final int f26100b2 = 3;

    /* renamed from: g1  reason: collision with root package name */
    public static final int f26101g1 = -1;

    /* renamed from: g2  reason: collision with root package name */
    private static final long f26102g2 = 1000;

    /* renamed from: p1  reason: collision with root package name */
    public static final int f26103p1 = -1291845888;

    /* renamed from: p2  reason: collision with root package name */
    private static final int f26104p2 = 20;

    /* renamed from: x1  reason: collision with root package name */
    public static final int f26105x1 = 872414976;

    /* renamed from: x2  reason: collision with root package name */
    private static final float f26106x2 = 1.0f;

    /* renamed from: y1  reason: collision with root package name */
    public static final int f26107y1 = 0;

    /* renamed from: y2  reason: collision with root package name */
    private static final float f26108y2 = 0.0f;
    private int A;
    private long B;
    private int C;
    private Rect D;
    private ValueAnimator E;
    private float F;
    private boolean G;
    private boolean H;
    private long I;
    private long J;
    private long K;
    private long L;
    private int M;
    @Nullable
    private long[] N;
    @Nullable
    private boolean[] O;

    /* renamed from: a  reason: collision with root package name */
    private final Rect f26109a;

    /* renamed from: b  reason: collision with root package name */
    private final Rect f26110b;

    /* renamed from: c  reason: collision with root package name */
    private final Rect f26111c;

    /* renamed from: d  reason: collision with root package name */
    private final Rect f26112d;

    /* renamed from: e  reason: collision with root package name */
    private final Paint f26113e;

    /* renamed from: f  reason: collision with root package name */
    private final Paint f26114f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f26115g;

    /* renamed from: h  reason: collision with root package name */
    private final Paint f26116h;

    /* renamed from: i  reason: collision with root package name */
    private final Paint f26117i;

    /* renamed from: j  reason: collision with root package name */
    private final Paint f26118j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final Drawable f26119k;

    /* renamed from: l  reason: collision with root package name */
    private final int f26120l;

    /* renamed from: m  reason: collision with root package name */
    private final int f26121m;

    /* renamed from: n  reason: collision with root package name */
    private final int f26122n;

    /* renamed from: o  reason: collision with root package name */
    private final int f26123o;

    /* renamed from: p  reason: collision with root package name */
    private final int f26124p;

    /* renamed from: q  reason: collision with root package name */
    private final int f26125q;

    /* renamed from: r  reason: collision with root package name */
    private final int f26126r;

    /* renamed from: s  reason: collision with root package name */
    private final int f26127s;

    /* renamed from: t  reason: collision with root package name */
    private final int f26128t;

    /* renamed from: u  reason: collision with root package name */
    private final StringBuilder f26129u;

    /* renamed from: v  reason: collision with root package name */
    private final Formatter f26130v;

    /* renamed from: w  reason: collision with root package name */
    private final Runnable f26131w;

    /* renamed from: x  reason: collision with root package name */
    private final CopyOnWriteArraySet<u0.a> f26132x;

    /* renamed from: y  reason: collision with root package name */
    private final Point f26133y;

    /* renamed from: z  reason: collision with root package name */
    private final float f26134z;

    public DefaultTimeBar(Context context) {
        this(context, null);
    }

    private void A(long j4) {
        if (this.I == j4) {
            return;
        }
        this.I = j4;
        Iterator<u0.a> it = this.f26132x.iterator();
        while (it.hasNext()) {
            it.next().d(this, j4);
        }
    }

    private static int f(float f10, int i4) {
        return (int) ((i4 * f10) + 0.5f);
    }

    private void g(Canvas canvas) {
        int i4;
        if (this.J <= 0) {
            return;
        }
        Rect rect = this.f26112d;
        int t9 = com.google.android.exoplayer2.util.z0.t(rect.right, rect.left, this.f26110b.right);
        int centerY = this.f26112d.centerY();
        Drawable drawable = this.f26119k;
        if (drawable == null) {
            if (!this.H && !isFocused()) {
                i4 = isEnabled() ? this.f26124p : this.f26125q;
            } else {
                i4 = this.f26126r;
            }
            canvas.drawCircle(t9, centerY, (int) ((i4 * this.F) / 2.0f), this.f26118j);
            return;
        }
        int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.F)) / 2;
        int intrinsicHeight = ((int) (this.f26119k.getIntrinsicHeight() * this.F)) / 2;
        this.f26119k.setBounds(t9 - intrinsicWidth, centerY - intrinsicHeight, t9 + intrinsicWidth, centerY + intrinsicHeight);
        this.f26119k.draw(canvas);
    }

    private long getPositionIncrement() {
        long j4 = this.B;
        if (j4 == com.google.android.exoplayer2.i.f23649b) {
            long j10 = this.J;
            if (j10 == com.google.android.exoplayer2.i.f23649b) {
                return 0L;
            }
            return j10 / this.A;
        }
        return j4;
    }

    private String getProgressText() {
        return com.google.android.exoplayer2.util.z0.n0(this.f26129u, this.f26130v, this.K);
    }

    private long getScrubberPosition() {
        if (this.f26110b.width() <= 0 || this.J == com.google.android.exoplayer2.i.f23649b) {
            return 0L;
        }
        return (this.f26112d.width() * this.J) / this.f26110b.width();
    }

    private void h(Canvas canvas) {
        int height = this.f26110b.height();
        int centerY = this.f26110b.centerY() - (height / 2);
        int i4 = height + centerY;
        if (this.J <= 0) {
            Rect rect = this.f26110b;
            canvas.drawRect(rect.left, centerY, rect.right, i4, this.f26115g);
            return;
        }
        Rect rect2 = this.f26111c;
        int i10 = rect2.left;
        int i11 = rect2.right;
        int max = Math.max(Math.max(this.f26110b.left, i11), this.f26112d.right);
        int i12 = this.f26110b.right;
        if (max < i12) {
            canvas.drawRect(max, centerY, i12, i4, this.f26115g);
        }
        int max2 = Math.max(i10, this.f26112d.right);
        if (i11 > max2) {
            canvas.drawRect(max2, centerY, i11, i4, this.f26114f);
        }
        if (this.f26112d.width() > 0) {
            Rect rect3 = this.f26112d;
            canvas.drawRect(rect3.left, centerY, rect3.right, i4, this.f26113e);
        }
        if (this.M == 0) {
            return;
        }
        long[] jArr = (long[]) com.google.android.exoplayer2.util.a.g(this.N);
        boolean[] zArr = (boolean[]) com.google.android.exoplayer2.util.a.g(this.O);
        int i13 = this.f26123o / 2;
        for (int i14 = 0; i14 < this.M; i14++) {
            long u9 = com.google.android.exoplayer2.util.z0.u(jArr[i14], 0L, this.J);
            Rect rect4 = this.f26110b;
            int min = rect4.left + Math.min(rect4.width() - this.f26123o, Math.max(0, ((int) ((this.f26110b.width() * u9) / this.J)) - i13));
            canvas.drawRect(min, centerY, min + this.f26123o, i4, zArr[i14] ? this.f26117i : this.f26116h);
        }
    }

    private boolean k(float f10, float f11) {
        return this.f26109a.contains((int) f10, (int) f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        x(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(ValueAnimator valueAnimator) {
        this.F = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate(this.f26109a);
    }

    private void n(float f10) {
        Rect rect = this.f26112d;
        Rect rect2 = this.f26110b;
        rect.right = com.google.android.exoplayer2.util.z0.t((int) f10, rect2.left, rect2.right);
    }

    private static int o(float f10, int i4) {
        return (int) (i4 / f10);
    }

    private Point p(MotionEvent motionEvent) {
        this.f26133y.set((int) motionEvent.getX(), (int) motionEvent.getY());
        return this.f26133y;
    }

    private boolean q(long j4) {
        long j10 = this.J;
        if (j10 <= 0) {
            return false;
        }
        long j11 = this.H ? this.I : this.K;
        long u9 = com.google.android.exoplayer2.util.z0.u(j11 + j4, 0L, j10);
        if (u9 == j11) {
            return false;
        }
        if (!this.H) {
            w(u9);
        } else {
            A(u9);
        }
        y();
        return true;
    }

    private boolean r(Drawable drawable) {
        return com.google.android.exoplayer2.util.z0.f27743a >= 23 && s(drawable, getLayoutDirection());
    }

    private static boolean s(Drawable drawable, int i4) {
        return com.google.android.exoplayer2.util.z0.f27743a >= 23 && drawable.setLayoutDirection(i4);
    }

    @RequiresApi(29)
    private void t(int i4, int i10) {
        Rect rect = this.D;
        if (rect != null && rect.width() == i4 && this.D.height() == i10) {
            return;
        }
        Rect rect2 = new Rect(0, 0, i4, i10);
        this.D = rect2;
        setSystemGestureExclusionRects(Collections.singletonList(rect2));
    }

    private void w(long j4) {
        this.I = j4;
        this.H = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<u0.a> it = this.f26132x.iterator();
        while (it.hasNext()) {
            it.next().y(this, j4);
        }
    }

    private void x(boolean z9) {
        removeCallbacks(this.f26131w);
        this.H = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<u0.a> it = this.f26132x.iterator();
        while (it.hasNext()) {
            it.next().x(this, this.I, z9);
        }
    }

    private void y() {
        this.f26111c.set(this.f26110b);
        this.f26112d.set(this.f26110b);
        long j4 = this.H ? this.I : this.K;
        if (this.J > 0) {
            int width = (int) ((this.f26110b.width() * this.L) / this.J);
            Rect rect = this.f26111c;
            Rect rect2 = this.f26110b;
            rect.right = Math.min(rect2.left + width, rect2.right);
            int width2 = (int) ((this.f26110b.width() * j4) / this.J);
            Rect rect3 = this.f26112d;
            Rect rect4 = this.f26110b;
            rect3.right = Math.min(rect4.left + width2, rect4.right);
        } else {
            Rect rect5 = this.f26111c;
            int i4 = this.f26110b.left;
            rect5.right = i4;
            this.f26112d.right = i4;
        }
        invalidate(this.f26109a);
    }

    private void z() {
        Drawable drawable = this.f26119k;
        if (drawable != null && drawable.isStateful() && this.f26119k.setState(getDrawableState())) {
            invalidate();
        }
    }

    @Override // com.google.android.exoplayer2.ui.u0
    public void a(u0.a aVar) {
        this.f26132x.remove(aVar);
    }

    @Override // com.google.android.exoplayer2.ui.u0
    public void b(u0.a aVar) {
        com.google.android.exoplayer2.util.a.g(aVar);
        this.f26132x.add(aVar);
    }

    @Override // com.google.android.exoplayer2.ui.u0
    public void c(@Nullable long[] jArr, @Nullable boolean[] zArr, int i4) {
        com.google.android.exoplayer2.util.a.a(i4 == 0 || !(jArr == null || zArr == null));
        this.M = i4;
        this.N = jArr;
        this.O = zArr;
        y();
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        z();
    }

    @Override // com.google.android.exoplayer2.ui.u0
    public long getPreferredUpdateDelay() {
        int o9 = o(this.f26134z, this.f26110b.width());
        if (o9 != 0) {
            long j4 = this.J;
            if (j4 != 0 && j4 != com.google.android.exoplayer2.i.f23649b) {
                return j4 / o9;
            }
        }
        return Long.MAX_VALUE;
    }

    public void i(long j4) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.E.setFloatValues(this.F, 0.0f);
        this.E.setDuration(j4);
        this.E.start();
    }

    public void j(boolean z9) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = z9;
        this.F = 0.0f;
        invalidate(this.f26109a);
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f26119k;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        h(canvas);
        g(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z9, int i4, @Nullable Rect rect) {
        super.onFocusChanged(z9, i4, rect);
        if (!this.H || z9) {
            return;
        }
        x(false);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName(E2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(E2);
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.J <= 0) {
            return;
        }
        if (com.google.android.exoplayer2.util.z0.f27743a >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
            return;
        }
        accessibilityNodeInfo.addAction(4096);
        accessibilityNodeInfo.addAction(8192);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onKeyDown(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            boolean r0 = r4.isEnabled()
            if (r0 == 0) goto L30
            long r0 = r4.getPositionIncrement()
            r2 = 66
            r3 = 1
            if (r5 == r2) goto L27
            switch(r5) {
                case 21: goto L13;
                case 22: goto L14;
                case 23: goto L27;
                default: goto L12;
            }
        L12:
            goto L30
        L13:
            long r0 = -r0
        L14:
            boolean r0 = r4.q(r0)
            if (r0 == 0) goto L30
            java.lang.Runnable r5 = r4.f26131w
            r4.removeCallbacks(r5)
            java.lang.Runnable r5 = r4.f26131w
            r0 = 1000(0x3e8, double:4.94E-321)
            r4.postDelayed(r5, r0)
            return r3
        L27:
            boolean r0 = r4.H
            if (r0 == 0) goto L30
            r5 = 0
            r4.x(r5)
            return r3
        L30:
            boolean r5 = super.onKeyDown(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DefaultTimeBar.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15 = i11 - i4;
        int i16 = i12 - i10;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i15 - getPaddingRight();
        int i17 = this.G ? 0 : this.f26127s;
        if (this.f26122n == 1) {
            i13 = (i16 - getPaddingBottom()) - this.f26121m;
            int i18 = this.f26120l;
            i14 = ((i16 - getPaddingBottom()) - i18) - Math.max(i17 - (i18 / 2), 0);
        } else {
            i13 = (i16 - this.f26121m) / 2;
            i14 = (i16 - this.f26120l) / 2;
        }
        this.f26109a.set(paddingLeft, i13, paddingRight, this.f26121m + i13);
        Rect rect = this.f26110b;
        Rect rect2 = this.f26109a;
        rect.set(rect2.left + i17, i14, rect2.right - i17, this.f26120l + i14);
        if (com.google.android.exoplayer2.util.z0.f27743a >= 29) {
            t(i15, i16);
        }
        y();
    }

    @Override // android.view.View
    protected void onMeasure(int i4, int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == 0) {
            size = this.f26121m;
        } else if (mode != 1073741824) {
            size = Math.min(this.f26121m, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i4), size);
        z();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i4) {
        Drawable drawable = this.f26119k;
        if (drawable == null || !s(drawable, i4)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
        if (r3 != 3) goto L32;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            boolean r0 = r7.isEnabled()
            r1 = 0
            if (r0 == 0) goto L76
            long r2 = r7.J
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 > 0) goto L10
            goto L76
        L10:
            android.graphics.Point r0 = r7.p(r8)
            int r2 = r0.x
            int r0 = r0.y
            int r3 = r8.getAction()
            r4 = 1
            if (r3 == 0) goto L5d
            r5 = 3
            if (r3 == r4) goto L4e
            r6 = 2
            if (r3 == r6) goto L28
            if (r3 == r5) goto L4e
            goto L76
        L28:
            boolean r8 = r7.H
            if (r8 == 0) goto L76
            int r8 = r7.f26128t
            if (r0 >= r8) goto L3a
            int r8 = r7.C
            int r2 = r2 - r8
            int r2 = r2 / r5
            int r8 = r8 + r2
            float r8 = (float) r8
            r7.n(r8)
            goto L40
        L3a:
            r7.C = r2
            float r8 = (float) r2
            r7.n(r8)
        L40:
            long r0 = r7.getScrubberPosition()
            r7.A(r0)
            r7.y()
            r7.invalidate()
            return r4
        L4e:
            boolean r0 = r7.H
            if (r0 == 0) goto L76
            int r8 = r8.getAction()
            if (r8 != r5) goto L59
            r1 = 1
        L59:
            r7.x(r1)
            return r4
        L5d:
            float r8 = (float) r2
            float r0 = (float) r0
            boolean r0 = r7.k(r8, r0)
            if (r0 == 0) goto L76
            r7.n(r8)
            long r0 = r7.getScrubberPosition()
            r7.w(r0)
            r7.y()
            r7.invalidate()
            return r4
        L76:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DefaultTimeBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i4, @Nullable Bundle bundle) {
        if (super.performAccessibilityAction(i4, bundle)) {
            return true;
        }
        if (this.J <= 0) {
            return false;
        }
        if (i4 == 8192) {
            if (q(-getPositionIncrement())) {
                x(false);
            }
        } else if (i4 != 4096) {
            return false;
        } else {
            if (q(getPositionIncrement())) {
                x(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(@ColorInt int i4) {
        this.f26116h.setColor(i4);
        invalidate(this.f26109a);
    }

    public void setBufferedColor(@ColorInt int i4) {
        this.f26114f.setColor(i4);
        invalidate(this.f26109a);
    }

    @Override // com.google.android.exoplayer2.ui.u0
    public void setBufferedPosition(long j4) {
        this.L = j4;
        y();
    }

    @Override // com.google.android.exoplayer2.ui.u0
    public void setDuration(long j4) {
        this.J = j4;
        if (this.H && j4 == com.google.android.exoplayer2.i.f23649b) {
            x(true);
        }
        y();
    }

    @Override // android.view.View, com.google.android.exoplayer2.ui.u0
    public void setEnabled(boolean z9) {
        super.setEnabled(z9);
        if (!this.H || z9) {
            return;
        }
        x(true);
    }

    @Override // com.google.android.exoplayer2.ui.u0
    public void setKeyCountIncrement(int i4) {
        com.google.android.exoplayer2.util.a.a(i4 > 0);
        this.A = i4;
        this.B = com.google.android.exoplayer2.i.f23649b;
    }

    @Override // com.google.android.exoplayer2.ui.u0
    public void setKeyTimeIncrement(long j4) {
        com.google.android.exoplayer2.util.a.a(j4 > 0);
        this.A = -1;
        this.B = j4;
    }

    public void setPlayedAdMarkerColor(@ColorInt int i4) {
        this.f26117i.setColor(i4);
        invalidate(this.f26109a);
    }

    public void setPlayedColor(@ColorInt int i4) {
        this.f26113e.setColor(i4);
        invalidate(this.f26109a);
    }

    @Override // com.google.android.exoplayer2.ui.u0
    public void setPosition(long j4) {
        this.K = j4;
        setContentDescription(getProgressText());
        y();
    }

    public void setScrubberColor(@ColorInt int i4) {
        this.f26118j.setColor(i4);
        invalidate(this.f26109a);
    }

    public void setUnplayedColor(@ColorInt int i4) {
        this.f26115g.setColor(i4);
        invalidate(this.f26109a);
    }

    public void u() {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = false;
        this.F = 1.0f;
        invalidate(this.f26109a);
    }

    public void v(long j4) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = false;
        this.E.setFloatValues(this.F, 1.0f);
        this.E.setDuration(j4);
        this.E.start();
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, attributeSet);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i4, @Nullable AttributeSet attributeSet2) {
        this(context, attributeSet, i4, attributeSet2, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i4, @Nullable AttributeSet attributeSet2, int i10) {
        super(context, attributeSet, i4);
        this.f26109a = new Rect();
        this.f26110b = new Rect();
        this.f26111c = new Rect();
        this.f26112d = new Rect();
        Paint paint = new Paint();
        this.f26113e = paint;
        Paint paint2 = new Paint();
        this.f26114f = paint2;
        Paint paint3 = new Paint();
        this.f26115g = paint3;
        Paint paint4 = new Paint();
        this.f26116h = paint4;
        Paint paint5 = new Paint();
        this.f26117i = paint5;
        Paint paint6 = new Paint();
        this.f26118j = paint6;
        paint6.setAntiAlias(true);
        this.f26132x = new CopyOnWriteArraySet<>();
        this.f26133y = new Point();
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f26134z = f10;
        this.f26128t = f(f10, V1);
        int f11 = f(f10, 4);
        int f12 = f(f10, 26);
        int f13 = f(f10, 4);
        int f14 = f(f10, 12);
        int f15 = f(f10, 0);
        int f16 = f(f10, 16);
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, q.m.f26811i, i4, i10);
            try {
                Drawable drawable = obtainStyledAttributes.getDrawable(q.m.f26855t);
                this.f26119k = drawable;
                if (drawable != null) {
                    r(drawable);
                    f12 = Math.max(drawable.getMinimumHeight(), f12);
                }
                this.f26120l = obtainStyledAttributes.getDimensionPixelSize(q.m.f26827m, f11);
                this.f26121m = obtainStyledAttributes.getDimensionPixelSize(q.m.f26863v, f12);
                this.f26122n = obtainStyledAttributes.getInt(q.m.f26823l, 0);
                this.f26123o = obtainStyledAttributes.getDimensionPixelSize(q.m.f26819k, f13);
                this.f26124p = obtainStyledAttributes.getDimensionPixelSize(q.m.f26859u, f14);
                this.f26125q = obtainStyledAttributes.getDimensionPixelSize(q.m.f26847r, f15);
                this.f26126r = obtainStyledAttributes.getDimensionPixelSize(q.m.f26851s, f16);
                int i11 = obtainStyledAttributes.getInt(q.m.f26839p, -1);
                int i12 = obtainStyledAttributes.getInt(q.m.f26843q, -1);
                int i13 = obtainStyledAttributes.getInt(q.m.f26831n, f26099b1);
                int i14 = obtainStyledAttributes.getInt(q.m.f26867w, W);
                int i15 = obtainStyledAttributes.getInt(q.m.f26815j, f26103p1);
                int i16 = obtainStyledAttributes.getInt(q.m.f26835o, f26105x1);
                paint.setColor(i11);
                paint6.setColor(i12);
                paint2.setColor(i13);
                paint3.setColor(i14);
                paint4.setColor(i15);
                paint5.setColor(i16);
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            this.f26120l = f11;
            this.f26121m = f12;
            this.f26122n = 0;
            this.f26123o = f13;
            this.f26124p = f14;
            this.f26125q = f15;
            this.f26126r = f16;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(f26099b1);
            paint3.setColor(W);
            paint4.setColor(f26103p1);
            paint5.setColor(f26105x1);
            this.f26119k = null;
        }
        StringBuilder sb = new StringBuilder();
        this.f26129u = sb;
        this.f26130v = new Formatter(sb, Locale.getDefault());
        this.f26131w = new Runnable() { // from class: com.google.android.exoplayer2.ui.g
            @Override // java.lang.Runnable
            public final void run() {
                DefaultTimeBar.this.l();
            }
        };
        Drawable drawable2 = this.f26119k;
        if (drawable2 != null) {
            this.f26127s = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f26127s = (Math.max(this.f26125q, Math.max(this.f26124p, this.f26126r)) + 1) / 2;
        }
        this.F = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.E = valueAnimator;
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.f
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DefaultTimeBar.this.m(valueAnimator2);
            }
        });
        this.J = com.google.android.exoplayer2.i.f23649b;
        this.B = com.google.android.exoplayer2.i.f23649b;
        this.A = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }
}
