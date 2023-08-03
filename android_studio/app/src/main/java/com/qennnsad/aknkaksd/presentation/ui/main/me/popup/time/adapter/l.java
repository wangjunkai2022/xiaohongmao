package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;

/* compiled from: WheelScroller.java */
/* loaded from: classes3.dex */
public class l {

    /* renamed from: l  reason: collision with root package name */
    private static final int f53118l = 400;

    /* renamed from: m  reason: collision with root package name */
    public static final int f53119m = 1;

    /* renamed from: a  reason: collision with root package name */
    private c f53120a;

    /* renamed from: b  reason: collision with root package name */
    private Context f53121b;

    /* renamed from: c  reason: collision with root package name */
    private GestureDetector f53122c;

    /* renamed from: d  reason: collision with root package name */
    private Scroller f53123d;

    /* renamed from: e  reason: collision with root package name */
    private int f53124e;

    /* renamed from: f  reason: collision with root package name */
    private float f53125f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f53126g;

    /* renamed from: h  reason: collision with root package name */
    private GestureDetector.SimpleOnGestureListener f53127h = new a();

    /* renamed from: i  reason: collision with root package name */
    private final int f53128i = 0;

    /* renamed from: j  reason: collision with root package name */
    private final int f53129j = 1;

    /* renamed from: k  reason: collision with root package name */
    private Handler f53130k = new b();

    /* compiled from: WheelScroller.java */
    /* loaded from: classes3.dex */
    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            l.this.f53124e = 0;
            l.this.f53123d.fling(0, l.this.f53124e, 0, (int) (-f11), 0, 0, -2147483647, Integer.MAX_VALUE);
            l.this.n(0);
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
            l.this.f53123d.computeScrollOffset();
            int currY = l.this.f53123d.getCurrY();
            int i4 = l.this.f53124e - currY;
            l.this.f53124e = currY;
            if (i4 != 0) {
                l.this.f53120a.onScroll(i4);
            }
            if (Math.abs(currY - l.this.f53123d.getFinalY()) < 1) {
                l.this.f53123d.getFinalY();
                l.this.f53123d.forceFinished(true);
            }
            if (!l.this.f53123d.isFinished()) {
                l.this.f53130k.sendEmptyMessage(message.what);
            } else if (message.what == 0) {
                l.this.j();
            } else {
                l.this.i();
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

    public l(Context context, c cVar) {
        GestureDetector gestureDetector = new GestureDetector(context, this.f53127h);
        this.f53122c = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.f53123d = new Scroller(context);
        this.f53120a = cVar;
        this.f53121b = context;
    }

    private void h() {
        this.f53130k.removeMessages(0);
        this.f53130k.removeMessages(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.f53120a.onJustify();
        n(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i4) {
        h();
        this.f53130k.sendEmptyMessage(i4);
    }

    private void o() {
        if (this.f53126g) {
            return;
        }
        this.f53126g = true;
        this.f53120a.onStarted();
    }

    void i() {
        if (this.f53126g) {
            this.f53120a.onFinished();
            this.f53126g = false;
        }
    }

    public boolean k(MotionEvent motionEvent) {
        int y9;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f53125f = motionEvent.getY();
            this.f53123d.forceFinished(true);
            h();
        } else if (action == 2 && (y9 = (int) (motionEvent.getY() - this.f53125f)) != 0) {
            o();
            this.f53120a.onScroll(y9);
            this.f53125f = motionEvent.getY();
        }
        if (!this.f53122c.onTouchEvent(motionEvent) && motionEvent.getAction() == 1) {
            j();
        }
        return true;
    }

    public void l(int i4, int i10) {
        this.f53123d.forceFinished(true);
        this.f53124e = 0;
        this.f53123d.startScroll(0, 0, 0, i4, i10 != 0 ? i10 : 400);
        n(0);
        o();
    }

    public void m(Interpolator interpolator) {
        this.f53123d.forceFinished(true);
        this.f53123d = new Scroller(this.f53121b, interpolator);
    }

    public void p() {
        this.f53123d.forceFinished(true);
    }
}
