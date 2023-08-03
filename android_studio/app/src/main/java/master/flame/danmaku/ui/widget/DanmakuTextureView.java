package master.flame.danmaku.ui.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.SurfaceTexture;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.TextureView;
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

@SuppressLint({"NewApi"})
/* loaded from: classes4.dex */
public class DanmakuTextureView extends TextureView implements f, g, TextureView.SurfaceTextureListener {

    /* renamed from: n  reason: collision with root package name */
    public static final String f87461n = "DanmakuTextureView";

    /* renamed from: o  reason: collision with root package name */
    private static final int f87462o = 50;

    /* renamed from: p  reason: collision with root package name */
    private static final int f87463p = 1000;

    /* renamed from: a  reason: collision with root package name */
    private c.d f87464a;

    /* renamed from: b  reason: collision with root package name */
    private HandlerThread f87465b;

    /* renamed from: c  reason: collision with root package name */
    private c f87466c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f87467d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f87468e;

    /* renamed from: f  reason: collision with root package name */
    private f.a f87469f;

    /* renamed from: g  reason: collision with root package name */
    private float f87470g;

    /* renamed from: h  reason: collision with root package name */
    private float f87471h;

    /* renamed from: i  reason: collision with root package name */
    private a f87472i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f87473j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f87474k;

    /* renamed from: l  reason: collision with root package name */
    protected int f87475l;

    /* renamed from: m  reason: collision with root package name */
    private LinkedList<Long> f87476m;

    public DanmakuTextureView(Context context) {
        super(context);
        this.f87468e = true;
        this.f87474k = true;
        this.f87475l = 0;
        v();
    }

    private float o() {
        long b10 = g8.c.b();
        this.f87476m.addLast(Long.valueOf(b10));
        Long peekFirst = this.f87476m.peekFirst();
        if (peekFirst == null) {
            return 0.0f;
        }
        float longValue = (float) (b10 - peekFirst.longValue());
        if (this.f87476m.size() > 50) {
            this.f87476m.removeFirst();
        }
        if (longValue > 0.0f) {
            return (this.f87476m.size() * 1000) / longValue;
        }
        return 0.0f;
    }

    @TargetApi(11)
    private void v() {
        setLayerType(2, null);
        setOpaque(false);
        setWillNotCacheDrawing(true);
        setDrawingCacheEnabled(false);
        setWillNotDraw(true);
        setSurfaceTextureListener(this);
        d.f(true, true);
        this.f87472i = a.j(this);
    }

    private void w() {
        if (this.f87466c == null) {
            this.f87466c = new c(q(this.f87475l), this, this.f87474k);
        }
    }

    private synchronized void z() {
        c cVar = this.f87466c;
        if (cVar != null) {
            cVar.R();
            this.f87466c = null;
        }
        HandlerThread handlerThread = this.f87465b;
        this.f87465b = null;
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
    public synchronized long a() {
        if (this.f87467d) {
            long b10 = g8.c.b();
            if (isShown()) {
                Canvas lockCanvas = lockCanvas();
                if (lockCanvas != null) {
                    c cVar = this.f87466c;
                    if (cVar != null) {
                        a.c y9 = cVar.y(lockCanvas);
                        if (this.f87473j) {
                            if (this.f87476m == null) {
                                this.f87476m = new LinkedList<>();
                            }
                            g8.c.b();
                            d.d(lockCanvas, String.format(Locale.getDefault(), "fps %.2f,time:%d s,cache:%d,miss:%d", Float.valueOf(o()), Long.valueOf(getCurrentTime() / 1000), Long.valueOf(y9.f67788r), Long.valueOf(y9.f67789s)));
                        }
                    }
                    if (this.f87467d) {
                        unlockCanvasAndPost(lockCanvas);
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
        c cVar = this.f87466c;
        if (cVar != null) {
            cVar.u(dVar);
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void c(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
        c cVar = this.f87466c;
        if (cVar != null) {
            cVar.J(dVar, z9);
        }
    }

    @Override // master.flame.danmaku.controller.g
    public synchronized void clear() {
        if (u()) {
            Canvas lockCanvas = lockCanvas();
            if (lockCanvas != null) {
                d.a(lockCanvas);
                unlockCanvasAndPost(lockCanvas);
            }
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void d(boolean z9) {
        c cVar = this.f87466c;
        if (cVar != null) {
            cVar.V(z9);
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void e() {
        c cVar = this.f87466c;
        if (cVar != null) {
            cVar.W();
        }
    }

    @Override // master.flame.danmaku.controller.f, master.flame.danmaku.controller.g
    public boolean f() {
        return this.f87468e;
    }

    @Override // master.flame.danmaku.controller.f
    public void g(boolean z9) {
        this.f87473j = z9;
    }

    @Override // master.flame.danmaku.controller.f
    public DanmakuContext getConfig() {
        c cVar = this.f87466c;
        if (cVar == null) {
            return null;
        }
        return cVar.C();
    }

    @Override // master.flame.danmaku.controller.f
    public long getCurrentTime() {
        c cVar = this.f87466c;
        if (cVar != null) {
            return cVar.D();
        }
        return 0L;
    }

    @Override // master.flame.danmaku.controller.f
    public m getCurrentVisibleDanmakus() {
        c cVar = this.f87466c;
        if (cVar != null) {
            return cVar.E();
        }
        return null;
    }

    @Override // master.flame.danmaku.controller.f
    public f.a getOnDanmakuClickListener() {
        return this.f87469f;
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
        return this.f87470g;
    }

    @Override // master.flame.danmaku.controller.f
    public float getYOff() {
        return this.f87471h;
    }

    @Override // master.flame.danmaku.controller.f
    public void h(long j4) {
        c cVar = this.f87466c;
        if (cVar == null) {
            w();
        } else {
            cVar.removeCallbacksAndMessages(null);
        }
        this.f87466c.obtainMessage(1, Long.valueOf(j4)).sendToTarget();
    }

    @Override // master.flame.danmaku.controller.f
    public void hide() {
        this.f87474k = false;
        c cVar = this.f87466c;
        if (cVar == null) {
            return;
        }
        cVar.H(false);
    }

    @Override // master.flame.danmaku.controller.f
    public boolean i() {
        c cVar = this.f87466c;
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
        return this.f87474k && super.isShown();
    }

    @Override // master.flame.danmaku.controller.f
    public void j(Long l10) {
        c cVar = this.f87466c;
        if (cVar != null) {
            cVar.Y(l10);
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void k() {
        c cVar = this.f87466c;
        if (cVar != null && cVar.K()) {
            this.f87466c.X();
        } else if (this.f87466c == null) {
            y();
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void l(master.flame.danmaku.danmaku.parser.a aVar, DanmakuContext danmakuContext) {
        w();
        this.f87466c.a0(danmakuContext);
        this.f87466c.c0(aVar);
        this.f87466c.Z(this.f87464a);
        this.f87466c.P();
    }

    @Override // master.flame.danmaku.controller.f
    public long m() {
        this.f87474k = false;
        c cVar = this.f87466c;
        if (cVar == null) {
            return 0L;
        }
        return cVar.H(true);
    }

    @Override // master.flame.danmaku.controller.f
    public void n(f.a aVar, float f10, float f11) {
        this.f87469f = aVar;
        this.f87470g = f10;
        this.f87471h = f11;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i4, int i10) {
        this.f87467d = true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public synchronized boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.f87467d = false;
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i4, int i10) {
        c cVar = this.f87466c;
        if (cVar != null) {
            cVar.M(i4, i10);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean k10 = this.f87472i.k(motionEvent);
        return !k10 ? super.onTouchEvent(motionEvent) : k10;
    }

    @Override // master.flame.danmaku.controller.f
    public void p(Long l10) {
        this.f87474k = true;
        c cVar = this.f87466c;
        if (cVar == null) {
            return;
        }
        cVar.d0(l10);
    }

    @Override // master.flame.danmaku.controller.f
    public void pause() {
        c cVar = this.f87466c;
        if (cVar != null) {
            cVar.O();
        }
    }

    protected synchronized Looper q(int i4) {
        HandlerThread handlerThread = this.f87465b;
        if (handlerThread != null) {
            handlerThread.quit();
            this.f87465b = null;
        }
        if (i4 != 1) {
            int i10 = i4 != 2 ? i4 != 3 ? 0 : 19 : -8;
            HandlerThread handlerThread2 = new HandlerThread("DFM Handler Thread #" + i10, i10);
            this.f87465b = handlerThread2;
            handlerThread2.start();
            return this.f87465b.getLooper();
        }
        return Looper.getMainLooper();
    }

    @Override // master.flame.danmaku.controller.f
    public boolean r() {
        c cVar = this.f87466c;
        return cVar != null && cVar.K();
    }

    @Override // master.flame.danmaku.controller.f
    public void release() {
        stop();
        LinkedList<Long> linkedList = this.f87476m;
        if (linkedList != null) {
            linkedList.clear();
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void s() {
    }

    @Override // master.flame.danmaku.controller.f
    public void setCallback(c.d dVar) {
        this.f87464a = dVar;
        c cVar = this.f87466c;
        if (cVar != null) {
            cVar.Z(dVar);
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void setDrawingThreadType(int i4) {
        this.f87475l = i4;
    }

    @Override // master.flame.danmaku.controller.f
    public void setOnDanmakuClickListener(f.a aVar) {
        this.f87469f = aVar;
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

    @Override // master.flame.danmaku.controller.f
    public void t() {
        c cVar = this.f87466c;
        if (cVar != null) {
            cVar.w();
        }
    }

    @Override // master.flame.danmaku.controller.f
    public void toggle() {
        if (this.f87467d) {
            c cVar = this.f87466c;
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
        return this.f87467d;
    }

    @Override // master.flame.danmaku.controller.f
    public void x(boolean z9) {
        this.f87468e = z9;
    }

    public void y() {
        stop();
        start();
    }

    public DanmakuTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f87468e = true;
        this.f87474k = true;
        this.f87475l = 0;
        v();
    }

    public DanmakuTextureView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f87468e = true;
        this.f87474k = true;
        this.f87475l = 0;
        v();
    }
}
