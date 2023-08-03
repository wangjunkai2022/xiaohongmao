package master.flame.danmaku.ui.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import f8.a;
import java.util.LinkedList;
import java.util.Locale;
import master.flame.danmaku.controller.c;
import master.flame.danmaku.controller.d;
import master.flame.danmaku.controller.f;
import master.flame.danmaku.controller.g;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.m;

/* loaded from: classes4.dex */
public class DanmakuView extends View implements f, g {

    /* renamed from: v  reason: collision with root package name */
    public static final String f87477v = "DanmakuView";

    /* renamed from: w  reason: collision with root package name */
    private static final int f87478w = 50;

    /* renamed from: x  reason: collision with root package name */
    private static final int f87479x = 1000;

    /* renamed from: a  reason: collision with root package name */
    private c.d f87480a;

    /* renamed from: b  reason: collision with root package name */
    private HandlerThread f87481b;

    /* renamed from: c  reason: collision with root package name */
    protected volatile c f87482c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f87483d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f87484e;

    /* renamed from: f  reason: collision with root package name */
    private f.a f87485f;

    /* renamed from: g  reason: collision with root package name */
    private float f87486g;

    /* renamed from: h  reason: collision with root package name */
    private float f87487h;

    /* renamed from: i  reason: collision with root package name */
    private View.OnClickListener f87488i;

    /* renamed from: j  reason: collision with root package name */
    private master.flame.danmaku.ui.widget.a f87489j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f87490k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f87491l;

    /* renamed from: m  reason: collision with root package name */
    protected int f87492m;

    /* renamed from: n  reason: collision with root package name */
    private Object f87493n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f87494o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f87495p;

    /* renamed from: q  reason: collision with root package name */
    private long f87496q;

    /* renamed from: r  reason: collision with root package name */
    private LinkedList<Long> f87497r;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f87498s;

    /* renamed from: t  reason: collision with root package name */
    private int f87499t;

    /* renamed from: u  reason: collision with root package name */
    private Runnable f87500u;

    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = DanmakuView.this.f87482c;
            if (cVar == null) {
                return;
            }
            DanmakuView.z(DanmakuView.this);
            if (DanmakuView.this.f87499t <= 4 && !DanmakuView.super.isShown()) {
                cVar.postDelayed(this, DanmakuView.this.f87499t * 100);
            } else {
                cVar.X();
            }
        }
    }

    public DanmakuView(Context context) {
        super(context);
        this.f87484e = true;
        this.f87491l = true;
        this.f87492m = 0;
        this.f87493n = new Object();
        this.f87494o = false;
        this.f87495p = false;
        this.f87499t = 0;
        this.f87500u = new a();
        D();
    }

    private float B() {
        long b10 = g8.c.b();
        this.f87497r.addLast(Long.valueOf(b10));
        Long peekFirst = this.f87497r.peekFirst();
        if (peekFirst == null) {
            return 0.0f;
        }
        float longValue = (float) (b10 - peekFirst.longValue());
        if (this.f87497r.size() > 50) {
            this.f87497r.removeFirst();
        }
        if (longValue > 0.0f) {
            return (this.f87497r.size() * 1000) / longValue;
        }
        return 0.0f;
    }

    private void D() {
        this.f87496q = Thread.currentThread().getId();
        setBackgroundColor(0);
        setDrawingCacheBackgroundColor(0);
        d.f(true, false);
        this.f87489j = master.flame.danmaku.ui.widget.a.j(this);
    }

    private void F() {
        this.f87498s = true;
        E();
    }

    @SuppressLint({"NewApi"})
    private void G() {
        this.f87495p = true;
        postInvalidateOnAnimation();
    }

    private void H() {
        if (this.f87482c == null) {
            this.f87482c = new c(C(this.f87492m), this, this.f87491l);
        }
    }

    private synchronized void J() {
        if (this.f87482c == null) {
            return;
        }
        c cVar = this.f87482c;
        this.f87482c = null;
        K();
        if (cVar != null) {
            cVar.R();
        }
        HandlerThread handlerThread = this.f87481b;
        this.f87481b = null;
        if (handlerThread != null) {
            try {
                handlerThread.join();
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
            handlerThread.quit();
        }
    }

    private void K() {
        synchronized (this.f87493n) {
            this.f87494o = true;
            this.f87493n.notifyAll();
        }
    }

    static /* synthetic */ int z(DanmakuView danmakuView) {
        int i4 = danmakuView.f87499t;
        danmakuView.f87499t = i4 + 1;
        return i4;
    }

    protected synchronized Looper C(int i4) {
        HandlerThread handlerThread = this.f87481b;
        if (handlerThread != null) {
            handlerThread.quit();
            this.f87481b = null;
        }
        if (i4 != 1) {
            int i10 = i4 != 2 ? i4 != 3 ? 0 : 19 : -8;
            HandlerThread handlerThread2 = new HandlerThread("DFM Handler Thread #" + i10, i10);
            this.f87481b = handlerThread2;
            handlerThread2.start();
            return this.f87481b.getLooper();
        }
        return Looper.getMainLooper();
    }

    protected void E() {
        if (this.f87491l) {
            G();
            synchronized (this.f87493n) {
                while (!this.f87494o && this.f87482c != null) {
                    try {
                        this.f87493n.wait(200L);
                    } catch (InterruptedException unused) {
                        if (!this.f87491l || this.f87482c == null || this.f87482c.L()) {
                            break;
                        }
                        Thread.currentThread().interrupt();
                    }
                }
                this.f87494o = false;
            }
        }
    }

    public void I() {
        stop();
        start();
    }

    @Override // master.flame.danmaku.controller.g
    public long a() {
        if (this.f87483d) {
            if (isShown()) {
                long b10 = g8.c.b();
                E();
                return g8.c.b() - b10;
            }
            return -1L;
        }
        return 0L;
    }

    @Override // master.flame.danmaku.controller.f
    public void b(master.flame.danmaku.danmaku.model.d dVar) {
        if (this.f87482c != null) {
            this.f87482c.u(dVar);
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void c(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
        if (this.f87482c != null) {
            this.f87482c.J(dVar, z9);
        }
    }

    @Override // master.flame.danmaku.controller.g
    public void clear() {
        if (u()) {
            if (this.f87491l && Thread.currentThread().getId() != this.f87496q) {
                F();
                return;
            }
            this.f87498s = true;
            G();
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void d(boolean z9) {
        if (this.f87482c != null) {
            this.f87482c.V(z9);
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void e() {
        if (this.f87482c != null) {
            this.f87482c.W();
        }
    }

    @Override // master.flame.danmaku.controller.f, master.flame.danmaku.controller.g
    public boolean f() {
        return this.f87484e;
    }

    @Override // master.flame.danmaku.controller.f
    public void g(boolean z9) {
        this.f87490k = z9;
    }

    @Override // master.flame.danmaku.controller.f
    public DanmakuContext getConfig() {
        if (this.f87482c == null) {
            return null;
        }
        return this.f87482c.C();
    }

    @Override // master.flame.danmaku.controller.f
    public long getCurrentTime() {
        if (this.f87482c != null) {
            return this.f87482c.D();
        }
        return 0L;
    }

    @Override // master.flame.danmaku.controller.f
    public m getCurrentVisibleDanmakus() {
        if (this.f87482c != null) {
            return this.f87482c.E();
        }
        return null;
    }

    @Override // master.flame.danmaku.controller.f
    public f.a getOnDanmakuClickListener() {
        return this.f87485f;
    }

    @Override // master.flame.danmaku.controller.f
    public View getView() {
        return this;
    }

    @Override // master.flame.danmaku.controller.g
    public int getViewHeight() {
        return super.getHeight();
    }

    @Override // master.flame.danmaku.controller.g
    public int getViewWidth() {
        return super.getWidth();
    }

    @Override // master.flame.danmaku.controller.f
    public float getXOff() {
        return this.f87486g;
    }

    @Override // master.flame.danmaku.controller.f
    public float getYOff() {
        return this.f87487h;
    }

    @Override // master.flame.danmaku.controller.f
    public void h(long j4) {
        c cVar = this.f87482c;
        if (cVar == null) {
            H();
            cVar = this.f87482c;
        } else {
            cVar.removeCallbacksAndMessages(null);
        }
        if (cVar != null) {
            cVar.obtainMessage(1, Long.valueOf(j4)).sendToTarget();
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void hide() {
        this.f87491l = false;
        if (this.f87482c == null) {
            return;
        }
        this.f87482c.H(false);
    }

    @Override // master.flame.danmaku.controller.f
    public boolean i() {
        if (this.f87482c != null) {
            return this.f87482c.L();
        }
        return false;
    }

    @Override // android.view.View, master.flame.danmaku.controller.f, master.flame.danmaku.controller.g
    @SuppressLint({"NewApi"})
    public boolean isHardwareAccelerated() {
        return super.isHardwareAccelerated();
    }

    @Override // android.view.View, master.flame.danmaku.controller.f
    public boolean isShown() {
        return this.f87491l && super.isShown();
    }

    @Override // master.flame.danmaku.controller.f
    public void j(Long l10) {
        if (this.f87482c != null) {
            this.f87482c.Y(l10);
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void k() {
        if (this.f87482c != null && this.f87482c.K()) {
            this.f87499t = 0;
            this.f87482c.post(this.f87500u);
        } else if (this.f87482c == null) {
            I();
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void l(master.flame.danmaku.danmaku.parser.a aVar, DanmakuContext danmakuContext) {
        H();
        this.f87482c.a0(danmakuContext);
        this.f87482c.c0(aVar);
        this.f87482c.Z(this.f87480a);
        this.f87482c.P();
    }

    @Override // master.flame.danmaku.controller.f
    public long m() {
        this.f87491l = false;
        if (this.f87482c == null) {
            return 0L;
        }
        return this.f87482c.H(true);
    }

    @Override // master.flame.danmaku.controller.f
    public void n(f.a aVar, float f10, float f11) {
        this.f87485f = aVar;
        this.f87486g = f10;
        this.f87487h = f11;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.f87491l && !this.f87495p) {
            super.onDraw(canvas);
            return;
        }
        if (this.f87498s) {
            d.a(canvas);
            this.f87498s = false;
        } else if (this.f87482c != null) {
            a.c y9 = this.f87482c.y(canvas);
            if (this.f87490k) {
                if (this.f87497r == null) {
                    this.f87497r = new LinkedList<>();
                }
                d.d(canvas, String.format(Locale.getDefault(), "fps %.2f,time:%d s,cache:%d,miss:%d", Float.valueOf(B()), Long.valueOf(getCurrentTime() / 1000), Long.valueOf(y9.f67788r), Long.valueOf(y9.f67789s)));
            }
        }
        this.f87495p = false;
        K();
    }

    @Override // android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        if (this.f87482c != null) {
            this.f87482c.M(i11 - i4, i12 - i10);
        }
        this.f87483d = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean k10 = this.f87489j.k(motionEvent);
        return !k10 ? super.onTouchEvent(motionEvent) : k10;
    }

    @Override // master.flame.danmaku.controller.f
    public void p(Long l10) {
        this.f87491l = true;
        this.f87498s = false;
        if (this.f87482c == null) {
            return;
        }
        this.f87482c.d0(l10);
    }

    @Override // master.flame.danmaku.controller.f
    public void pause() {
        if (this.f87482c != null) {
            this.f87482c.removeCallbacks(this.f87500u);
            this.f87482c.O();
        }
    }

    @Override // master.flame.danmaku.controller.f
    public boolean r() {
        return this.f87482c != null && this.f87482c.K();
    }

    @Override // master.flame.danmaku.controller.f
    public void release() {
        stop();
        LinkedList<Long> linkedList = this.f87497r;
        if (linkedList != null) {
            linkedList.clear();
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void s() {
        this.f87495p = true;
        this.f87482c.A();
    }

    @Override // master.flame.danmaku.controller.f
    public void setCallback(c.d dVar) {
        this.f87480a = dVar;
        if (this.f87482c != null) {
            this.f87482c.Z(dVar);
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void setDrawingThreadType(int i4) {
        this.f87492m = i4;
    }

    @Override // master.flame.danmaku.controller.f
    public void setOnDanmakuClickListener(f.a aVar) {
        this.f87485f = aVar;
    }

    @Override // master.flame.danmaku.controller.f
    public void show() {
        p(null);
    }

    @Override // master.flame.danmaku.controller.f
    public void start() {
        h(0L);
    }

    @Override // master.flame.danmaku.controller.f
    public void stop() {
        J();
    }

    @Override // master.flame.danmaku.controller.f
    public void t() {
        if (this.f87482c != null) {
            this.f87482c.w();
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void toggle() {
        if (this.f87483d) {
            if (this.f87482c == null) {
                start();
            } else if (this.f87482c.L()) {
                k();
            } else {
                pause();
            }
        }
    }

    @Override // master.flame.danmaku.controller.g
    public boolean u() {
        return this.f87483d;
    }

    @Override // master.flame.danmaku.controller.f
    public void x(boolean z9) {
        this.f87484e = z9;
    }

    public DanmakuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f87484e = true;
        this.f87491l = true;
        this.f87492m = 0;
        this.f87493n = new Object();
        this.f87494o = false;
        this.f87495p = false;
        this.f87499t = 0;
        this.f87500u = new a();
        D();
    }

    public DanmakuView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f87484e = true;
        this.f87491l = true;
        this.f87492m = 0;
        this.f87493n = new Object();
        this.f87494o = false;
        this.f87495p = false;
        this.f87499t = 0;
        this.f87500u = new a();
        D();
    }
}
