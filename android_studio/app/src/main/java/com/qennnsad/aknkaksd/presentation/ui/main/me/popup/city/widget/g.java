package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;

/* compiled from: WheelScroller.java */
/* loaded from: classes3.dex */
public class g {

    /* renamed from: l  reason: collision with root package name */
    private static final int f53050l = 400;

    /* renamed from: m  reason: collision with root package name */
    public static final int f53051m = 1;

    /* renamed from: a  reason: collision with root package name */
    private c f53052a;

    /* renamed from: b  reason: collision with root package name */
    private Context f53053b;

    /* renamed from: c  reason: collision with root package name */
    private GestureDetector f53054c;

    /* renamed from: d  reason: collision with root package name */
    private Scroller f53055d;

    /* renamed from: e  reason: collision with root package name */
    private int f53056e;

    /* renamed from: f  reason: collision with root package name */
    private float f53057f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f53058g;

    /* renamed from: h  reason: collision with root package name */
    private GestureDetector.SimpleOnGestureListener f53059h = new a();

    /* renamed from: i  reason: collision with root package name */
    private final int f53060i = 0;

    /* renamed from: j  reason: collision with root package name */
    private final int f53061j = 1;

    /* renamed from: k  reason: collision with root package name */
    private Handler f53062k = new b();

    /* compiled from: WheelScroller.java */
    /* loaded from: classes3.dex */
    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            g.this.f53056e = 0;
            g.this.f53055d.fling(0, g.this.f53056e, 0, (int) (-f11), 0, 0, -2147483647, Integer.MAX_VALUE);
            g.this.n(0);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            return true;
        }
    }

    /* compiled from: WheelScroller.java */
    /* loaded from: classes3.dex */
    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            g.this.f53055d.computeScrollOffset();
            int currY = g.this.f53055d.getCurrY();
            int i4 = g.this.f53056e - currY;
            g.this.f53056e = currY;
            if (i4 != 0) {
                g.this.f53052a.onScroll(i4);
            }
            if (Math.abs(currY - g.this.f53055d.getFinalY()) < 1) {
                g.this.f53055d.getFinalY();
                g.this.f53055d.forceFinished(true);
            }
            if (!g.this.f53055d.isFinished()) {
                g.this.f53062k.sendEmptyMessage(message.what);
            } else if (message.what == 0) {
                g.this.j();
            } else {
                g.this.i();
            }
        }
    }

    /* compiled from: WheelScroller.java */
    /* loaded from: classes3.dex */
    public interface c {
        void onFinished();

        void onJustify();

        void onScroll(int i4);

        void onStarted();
    }

    public g(Context context, c cVar) {
        GestureDetector gestureDetector = new GestureDetector(context, this.f53059h);
        this.f53054c = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.f53055d = new Scroller(context);
        this.f53052a = cVar;
        this.f53053b = context;
    }

    private void h() {
        this.f53062k.removeMessages(0);
        this.f53062k.removeMessages(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.f53052a.onJustify();
        n(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i4) {
        h();
        this.f53062k.sendEmptyMessage(i4);
    }

    private void o() {
        if (this.f53058g) {
            return;
        }
        this.f53058g = true;
        this.f53052a.onStarted();
    }

    void i() {
        if (this.f53058g) {
            this.f53052a.onFinished();
            this.f53058g = false;
        }
    }

    public boolean k(MotionEvent motionEvent) {
        int y9;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f53057f = motionEvent.getY();
            this.f53055d.forceFinished(true);
            h();
        } else if (action == 2 && (y9 = (int) (motionEvent.getY() - this.f53057f)) != 0) {
            o();
            this.f53052a.onScroll(y9);
            this.f53057f = motionEvent.getY();
        }
        if (!this.f53054c.onTouchEvent(motionEvent) && motionEvent.getAction() == 1) {
            j();
        }
        return true;
    }

    public void l(int i4, int i10) {
        this.f53055d.forceFinished(true);
        this.f53056e = 0;
        this.f53055d.startScroll(0, 0, 0, i4, i10 != 0 ? i10 : 400);
        n(0);
        o();
    }

    public void m(Interpolator interpolator) {
        this.f53055d.forceFinished(true);
        this.f53055d = new Scroller(this.f53053b, interpolator);
    }

    public void p() {
        this.f53055d.forceFinished(true);
    }
}
