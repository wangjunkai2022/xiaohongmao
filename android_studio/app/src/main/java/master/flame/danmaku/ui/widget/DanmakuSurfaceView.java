package master.flame.danmaku.ui.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
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
public class DanmakuSurfaceView extends SurfaceView implements f, g, SurfaceHolder.Callback {

    /* renamed from: o  reason: collision with root package name */
    public static final String f87444o = "DanmakuSurfaceView";

    /* renamed from: p  reason: collision with root package name */
    private static final int f87445p = 50;

    /* renamed from: q  reason: collision with root package name */
    private static final int f87446q = 1000;

    /* renamed from: a  reason: collision with root package name */
    private c.d f87447a;

    /* renamed from: b  reason: collision with root package name */
    private SurfaceHolder f87448b;

    /* renamed from: c  reason: collision with root package name */
    private HandlerThread f87449c;

    /* renamed from: d  reason: collision with root package name */
    private c f87450d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f87451e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f87452f;

    /* renamed from: g  reason: collision with root package name */
    private f.a f87453g;

    /* renamed from: h  reason: collision with root package name */
    private float f87454h;

    /* renamed from: i  reason: collision with root package name */
    private float f87455i;

    /* renamed from: j  reason: collision with root package name */
    private a f87456j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f87457k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f87458l;

    /* renamed from: m  reason: collision with root package name */
    protected int f87459m;

    /* renamed from: n  reason: collision with root package name */
    private LinkedList<Long> f87460n;

    public DanmakuSurfaceView(Context context) {
        super(context);
        this.f87452f = true;
        this.f87458l = true;
        this.f87459m = 0;
        v();
    }

    private float o() {
        long b10 = g8.c.b();
        this.f87460n.addLast(Long.valueOf(b10));
        Long peekFirst = this.f87460n.peekFirst();
        if (peekFirst == null) {
            return 0.0f;
        }
        float longValue = (float) (b10 - peekFirst.longValue());
        if (this.f87460n.size() > 50) {
            this.f87460n.removeFirst();
        }
        if (longValue > 0.0f) {
            return (this.f87460n.size() * 1000) / longValue;
        }
        return 0.0f;
    }

    private void v() {
        setZOrderMediaOverlay(true);
        setWillNotCacheDrawing(true);
        setDrawingCacheEnabled(false);
        setWillNotDraw(true);
        SurfaceHolder holder = getHolder();
        this.f87448b = holder;
        holder.addCallback(this);
        this.f87448b.setFormat(-2);
        d.f(true, true);
        this.f87456j = a.j(this);
    }

    private void w() {
        if (this.f87450d == null) {
            this.f87450d = new c(q(this.f87459m), this, this.f87458l);
        }
    }

    private synchronized void z() {
        c cVar = this.f87450d;
        if (cVar != null) {
            cVar.R();
            this.f87450d = null;
        }
        HandlerThread handlerThread = this.f87449c;
        this.f87449c = null;
        if (handlerThread != null) {
            try {
                handlerThread.join();
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
            handlerThread.quit();
        }
    }

    @Override // master.flame.danmaku.controller.g
    public long a() {
        if (this.f87451e) {
            if (isShown()) {
                long b10 = g8.c.b();
                Canvas lockCanvas = this.f87448b.lockCanvas();
                if (lockCanvas != null) {
                    c cVar = this.f87450d;
                    if (cVar != null) {
                        a.c y9 = cVar.y(lockCanvas);
                        if (this.f87457k) {
                            if (this.f87460n == null) {
                                this.f87460n = new LinkedList<>();
                            }
                            g8.c.b();
                            d.d(lockCanvas, String.format(Locale.getDefault(), "fps %.2f,time:%d s,cache:%d,miss:%d", Float.valueOf(o()), Long.valueOf(getCurrentTime() / 1000), Long.valueOf(y9.f67788r), Long.valueOf(y9.f67789s)));
                        }
                    }
                    if (this.f87451e) {
                        this.f87448b.unlockCanvasAndPost(lockCanvas);
                    }
                }
                return g8.c.b() - b10;
            }
            return -1L;
        }
        return 0L;
    }

    @Override // master.flame.danmaku.controller.f
    public void b(master.flame.danmaku.danmaku.model.d dVar) {
        c cVar = this.f87450d;
        if (cVar != null) {
            cVar.u(dVar);
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void c(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
        c cVar = this.f87450d;
        if (cVar != null) {
            cVar.J(dVar, z9);
        }
    }

    @Override // master.flame.danmaku.controller.g
    public void clear() {
        Canvas lockCanvas;
        if (u() && (lockCanvas = this.f87448b.lockCanvas()) != null) {
            d.a(lockCanvas);
            this.f87448b.unlockCanvasAndPost(lockCanvas);
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void d(boolean z9) {
        c cVar = this.f87450d;
        if (cVar != null) {
            cVar.V(z9);
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void e() {
        c cVar = this.f87450d;
        if (cVar != null) {
            cVar.W();
        }
    }

    @Override // master.flame.danmaku.controller.f, master.flame.danmaku.controller.g
    public boolean f() {
        return this.f87452f;
    }

    @Override // master.flame.danmaku.controller.f
    public void g(boolean z9) {
        this.f87457k = z9;
    }

    @Override // master.flame.danmaku.controller.f
    public DanmakuContext getConfig() {
        c cVar = this.f87450d;
        if (cVar == null) {
            return null;
        }
        return cVar.C();
    }

    @Override // master.flame.danmaku.controller.f
    public long getCurrentTime() {
        c cVar = this.f87450d;
        if (cVar != null) {
            return cVar.D();
        }
        return 0L;
    }

    @Override // master.flame.danmaku.controller.f
    public m getCurrentVisibleDanmakus() {
        c cVar = this.f87450d;
        if (cVar != null) {
            return cVar.E();
        }
        return null;
    }

    @Override // master.flame.danmaku.controller.f
    public f.a getOnDanmakuClickListener() {
        return this.f87453g;
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
        return this.f87454h;
    }

    @Override // master.flame.danmaku.controller.f
    public float getYOff() {
        return this.f87455i;
    }

    @Override // master.flame.danmaku.controller.f
    public void h(long j4) {
        c cVar = this.f87450d;
        if (cVar == null) {
            w();
        } else {
            cVar.removeCallbacksAndMessages(null);
        }
        this.f87450d.obtainMessage(1, Long.valueOf(j4)).sendToTarget();
    }

    @Override // master.flame.danmaku.controller.f
    public void hide() {
        this.f87458l = false;
        c cVar = this.f87450d;
        if (cVar == null) {
            return;
        }
        cVar.H(false);
    }

    @Override // master.flame.danmaku.controller.f
    public boolean i() {
        c cVar = this.f87450d;
        if (cVar != null) {
            return cVar.L();
        }
        return false;
    }

    @Override // android.view.View, master.flame.danmaku.controller.f, master.flame.danmaku.controller.g
    public boolean isHardwareAccelerated() {
        return false;
    }

    @Override // android.view.View, master.flame.danmaku.controller.f
    public boolean isShown() {
        return this.f87458l && super.isShown();
    }

    @Override // master.flame.danmaku.controller.f
    public void j(Long l10) {
        c cVar = this.f87450d;
        if (cVar != null) {
            cVar.Y(l10);
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void k() {
        c cVar = this.f87450d;
        if (cVar != null && cVar.K()) {
            this.f87450d.X();
        } else if (this.f87450d == null) {
            y();
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void l(master.flame.danmaku.danmaku.parser.a aVar, DanmakuContext danmakuContext) {
        w();
        this.f87450d.a0(danmakuContext);
        this.f87450d.c0(aVar);
        this.f87450d.Z(this.f87447a);
        this.f87450d.P();
    }

    @Override // master.flame.danmaku.controller.f
    public long m() {
        this.f87458l = false;
        c cVar = this.f87450d;
        if (cVar == null) {
            return 0L;
        }
        return cVar.H(true);
    }

    @Override // master.flame.danmaku.controller.f
    public void n(f.a aVar, float f10, float f11) {
        this.f87453g = aVar;
        this.f87454h = f10;
        this.f87455i = f11;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean k10 = this.f87456j.k(motionEvent);
        return !k10 ? super.onTouchEvent(motionEvent) : k10;
    }

    @Override // master.flame.danmaku.controller.f
    public void p(Long l10) {
        this.f87458l = true;
        c cVar = this.f87450d;
        if (cVar == null) {
            return;
        }
        cVar.d0(l10);
    }

    @Override // master.flame.danmaku.controller.f
    public void pause() {
        c cVar = this.f87450d;
        if (cVar != null) {
            cVar.O();
        }
    }

    protected synchronized Looper q(int i4) {
        HandlerThread handlerThread = this.f87449c;
        if (handlerThread != null) {
            handlerThread.quit();
            this.f87449c = null;
        }
        if (i4 != 1) {
            int i10 = i4 != 2 ? i4 != 3 ? 0 : 19 : -8;
            HandlerThread handlerThread2 = new HandlerThread("DFM Handler Thread #" + i10, i10);
            this.f87449c = handlerThread2;
            handlerThread2.start();
            return this.f87449c.getLooper();
        }
        return Looper.getMainLooper();
    }

    @Override // master.flame.danmaku.controller.f
    public boolean r() {
        c cVar = this.f87450d;
        return cVar != null && cVar.K();
    }

    @Override // master.flame.danmaku.controller.f
    public void release() {
        stop();
        LinkedList<Long> linkedList = this.f87460n;
        if (linkedList != null) {
            linkedList.clear();
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void s() {
    }

    @Override // master.flame.danmaku.controller.f
    public void setCallback(c.d dVar) {
        this.f87447a = dVar;
        c cVar = this.f87450d;
        if (cVar != null) {
            cVar.Z(dVar);
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void setDrawingThreadType(int i4) {
        this.f87459m = i4;
    }

    @Override // master.flame.danmaku.controller.f
    public void setOnDanmakuClickListener(f.a aVar) {
        this.f87453g = aVar;
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
        z();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i4, int i10, int i11) {
        c cVar = this.f87450d;
        if (cVar != null) {
            cVar.M(i10, i11);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.f87451e = true;
        Canvas lockCanvas = surfaceHolder.lockCanvas();
        if (lockCanvas != null) {
            d.a(lockCanvas);
            surfaceHolder.unlockCanvasAndPost(lockCanvas);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f87451e = false;
    }

    @Override // master.flame.danmaku.controller.f
    public void t() {
        c cVar = this.f87450d;
        if (cVar != null) {
            cVar.w();
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void toggle() {
        if (this.f87451e) {
            c cVar = this.f87450d;
            if (cVar == null) {
                start();
            } else if (cVar.L()) {
                k();
            } else {
                pause();
            }
        }
    }

    @Override // master.flame.danmaku.controller.g
    public boolean u() {
        return this.f87451e;
    }

    @Override // master.flame.danmaku.controller.f
    public void x(boolean z9) {
        this.f87452f = z9;
    }

    public void y() {
        stop();
        start();
    }

    public DanmakuSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f87452f = true;
        this.f87458l = true;
        this.f87459m = 0;
        v();
    }

    public DanmakuSurfaceView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f87452f = true;
        this.f87458l = true;
        this.f87459m = 0;
        v();
    }
}
