package com.facebook.fresco.animation.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.facebook.drawee.drawable.e;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: AnimatedDrawable2.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a extends Drawable implements Animatable, u0.a {

    /* renamed from: r  reason: collision with root package name */
    private static final Class<?> f11714r = a.class;

    /* renamed from: s  reason: collision with root package name */
    private static final c f11715s = new d();

    /* renamed from: t  reason: collision with root package name */
    private static final int f11716t = 8;

    /* renamed from: u  reason: collision with root package name */
    private static final int f11717u = 0;
    @h

    /* renamed from: a  reason: collision with root package name */
    private com.facebook.fresco.animation.backend.a f11718a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private com.facebook.fresco.animation.frame.b f11719b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f11720c;

    /* renamed from: d  reason: collision with root package name */
    private long f11721d;

    /* renamed from: e  reason: collision with root package name */
    private long f11722e;

    /* renamed from: f  reason: collision with root package name */
    private long f11723f;

    /* renamed from: g  reason: collision with root package name */
    private int f11724g;

    /* renamed from: h  reason: collision with root package name */
    private long f11725h;

    /* renamed from: i  reason: collision with root package name */
    private long f11726i;

    /* renamed from: j  reason: collision with root package name */
    private int f11727j;

    /* renamed from: k  reason: collision with root package name */
    private long f11728k;

    /* renamed from: l  reason: collision with root package name */
    private long f11729l;

    /* renamed from: m  reason: collision with root package name */
    private int f11730m;

    /* renamed from: n  reason: collision with root package name */
    private volatile c f11731n;
    @h

    /* renamed from: o  reason: collision with root package name */
    private volatile b f11732o;
    @h

    /* renamed from: p  reason: collision with root package name */
    private e f11733p;

    /* renamed from: q  reason: collision with root package name */
    private final Runnable f11734q;

    /* compiled from: AnimatedDrawable2.java */
    /* renamed from: com.facebook.fresco.animation.drawable.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class RunnableC0093a implements Runnable {
        RunnableC0093a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            aVar.unscheduleSelf(aVar.f11734q);
            a.this.invalidateSelf();
        }
    }

    /* compiled from: AnimatedDrawable2.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(a animatedDrawable, com.facebook.fresco.animation.frame.b frameScheduler, int frameNumberToDraw, boolean frameDrawn, boolean isAnimationRunning, long animationStartTimeMs, long animationTimeMs, long lastFrameAnimationTimeMs, long actualRenderTimeStartMs, long actualRenderTimeEndMs, long startRenderTimeForNextFrameMs, long scheduledRenderTimeForNextFrameMs);
    }

    public a() {
        this(null);
    }

    @h
    private static com.facebook.fresco.animation.frame.b b(@h com.facebook.fresco.animation.backend.a animationBackend) {
        if (animationBackend == null) {
            return null;
        }
        return new com.facebook.fresco.animation.frame.a(animationBackend);
    }

    private long l() {
        return SystemClock.uptimeMillis();
    }

    private void m() {
        this.f11730m++;
        if (p0.a.R(2)) {
            p0.a.V(f11714r, "Dropped a frame. Count: %s", Integer.valueOf(this.f11730m));
        }
    }

    private void n(long targetAnimationTimeMs) {
        long j4 = this.f11721d + targetAnimationTimeMs;
        this.f11723f = j4;
        scheduleSelf(this.f11734q, j4);
    }

    @h
    public com.facebook.fresco.animation.backend.a c() {
        return this.f11718a;
    }

    @Override // u0.a
    public void d() {
        com.facebook.fresco.animation.backend.a aVar = this.f11718a;
        if (aVar != null) {
            aVar.clear();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        long j4;
        long j10;
        a aVar;
        long j11;
        if (this.f11718a == null || this.f11719b == null) {
            return;
        }
        long l10 = l();
        long max = this.f11720c ? (l10 - this.f11721d) + this.f11729l : Math.max(this.f11722e, 0L);
        int c10 = this.f11719b.c(max, this.f11722e);
        if (c10 == -1) {
            c10 = this.f11718a.a() - 1;
            this.f11731n.b(this);
            this.f11720c = false;
        } else if (c10 == 0 && this.f11724g != -1 && l10 >= this.f11723f) {
            this.f11731n.e(this);
        }
        int i4 = c10;
        boolean h4 = this.f11718a.h(this, canvas, i4);
        if (h4) {
            this.f11731n.c(this, i4);
            this.f11724g = i4;
        }
        if (!h4) {
            m();
        }
        long l11 = l();
        if (this.f11720c) {
            long b10 = this.f11719b.b(l11 - this.f11721d);
            if (b10 != -1) {
                long j12 = this.f11728k + b10;
                n(j12);
                j10 = j12;
            } else {
                this.f11731n.b(this);
                this.f11720c = false;
                j10 = -1;
            }
            j4 = b10;
        } else {
            j4 = -1;
            j10 = -1;
        }
        b bVar = this.f11732o;
        if (bVar != null) {
            bVar.a(this, this.f11719b, i4, h4, this.f11720c, this.f11721d, max, this.f11722e, l10, l11, j4, j10);
            aVar = this;
            j11 = max;
        } else {
            aVar = this;
            j11 = max;
        }
        aVar.f11722e = j11;
    }

    public long e() {
        return this.f11730m;
    }

    public int f() {
        com.facebook.fresco.animation.backend.a aVar = this.f11718a;
        if (aVar == null) {
            return 0;
        }
        return aVar.a();
    }

    public int g() {
        com.facebook.fresco.animation.backend.a aVar = this.f11718a;
        if (aVar == null) {
            return 0;
        }
        return aVar.c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        com.facebook.fresco.animation.backend.a aVar = this.f11718a;
        if (aVar == null) {
            return super.getIntrinsicHeight();
        }
        return aVar.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        com.facebook.fresco.animation.backend.a aVar = this.f11718a;
        if (aVar == null) {
            return super.getIntrinsicWidth();
        }
        return aVar.f();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public long h() {
        if (this.f11718a == null) {
            return 0L;
        }
        com.facebook.fresco.animation.frame.b bVar = this.f11719b;
        if (bVar != null) {
            return bVar.e();
        }
        int i4 = 0;
        for (int i10 = 0; i10 < this.f11718a.a(); i10++) {
            i4 += this.f11718a.j(i10);
        }
        return i4;
    }

    public long i() {
        return this.f11721d;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f11720c;
    }

    public boolean j() {
        com.facebook.fresco.animation.frame.b bVar = this.f11719b;
        return bVar != null && bVar.d();
    }

    public void k(int targetFrameNumber) {
        com.facebook.fresco.animation.frame.b bVar;
        if (this.f11718a == null || (bVar = this.f11719b) == null) {
            return;
        }
        this.f11722e = bVar.a(targetFrameNumber);
        long l10 = l() - this.f11722e;
        this.f11721d = l10;
        this.f11723f = l10;
        invalidateSelf();
    }

    public void o(@h com.facebook.fresco.animation.backend.a animationBackend) {
        this.f11718a = animationBackend;
        if (animationBackend != null) {
            this.f11719b = new com.facebook.fresco.animation.frame.a(animationBackend);
            this.f11718a.e(getBounds());
            e eVar = this.f11733p;
            if (eVar != null) {
                eVar.a(this);
            }
        }
        this.f11719b = b(this.f11718a);
        stop();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        com.facebook.fresco.animation.backend.a aVar = this.f11718a;
        if (aVar != null) {
            aVar.e(bounds);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int level) {
        if (this.f11720c) {
            return false;
        }
        long j4 = level;
        if (this.f11722e != j4) {
            this.f11722e = j4;
            invalidateSelf();
            return true;
        }
        return false;
    }

    public void p(@h c animationListener) {
        if (animationListener == null) {
            animationListener = f11715s;
        }
        this.f11731n = animationListener;
    }

    public void q(@h b drawListener) {
        this.f11732o = drawListener;
    }

    public void r(long frameSchedulingDelayMs) {
        this.f11728k = frameSchedulingDelayMs;
    }

    public void s(long frameSchedulingOffsetMs) {
        this.f11729l = frameSchedulingOffsetMs;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        if (this.f11733p == null) {
            this.f11733p = new e();
        }
        this.f11733p.b(alpha);
        com.facebook.fresco.animation.backend.a aVar = this.f11718a;
        if (aVar != null) {
            aVar.k(alpha);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@h ColorFilter colorFilter) {
        if (this.f11733p == null) {
            this.f11733p = new e();
        }
        this.f11733p.c(colorFilter);
        com.facebook.fresco.animation.backend.a aVar = this.f11718a;
        if (aVar != null) {
            aVar.g(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        com.facebook.fresco.animation.backend.a aVar;
        if (this.f11720c || (aVar = this.f11718a) == null || aVar.a() <= 1) {
            return;
        }
        this.f11720c = true;
        long l10 = l();
        long j4 = l10 - this.f11725h;
        this.f11721d = j4;
        this.f11723f = j4;
        this.f11722e = l10 - this.f11726i;
        this.f11724g = this.f11727j;
        invalidateSelf();
        this.f11731n.a(this);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f11720c) {
            long l10 = l();
            this.f11725h = l10 - this.f11721d;
            this.f11726i = l10 - this.f11722e;
            this.f11727j = this.f11724g;
            this.f11720c = false;
            this.f11721d = 0L;
            this.f11723f = 0L;
            this.f11722e = -1L;
            this.f11724g = -1;
            unscheduleSelf(this.f11734q);
            this.f11731n.b(this);
        }
    }

    public a(@h com.facebook.fresco.animation.backend.a animationBackend) {
        this.f11728k = 8L;
        this.f11729l = 0L;
        this.f11731n = f11715s;
        this.f11732o = null;
        this.f11734q = new RunnableC0093a();
        this.f11718a = animationBackend;
        this.f11719b = b(animationBackend);
    }
}
