package com.lljjcoder.style.citypickerview.widget.wheel;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;

/* loaded from: classes3.dex */
public class WheelScroller {
    public static final int MIN_DELTA_FOR_SCROLLING = 1;
    private static final int SCROLLING_DURATION = 400;
    private Context context;
    private GestureDetector gestureDetector;
    private boolean isScrollingPerformed;
    private int lastScrollY;
    private float lastTouchedY;
    private ScrollingListener listener;
    private Scroller scroller;
    private GestureDetector.SimpleOnGestureListener gestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.1
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            WheelScroller.this.lastScrollY = 0;
            WheelScroller.this.scroller.fling(0, WheelScroller.this.lastScrollY, 0, (int) (-f11), 0, 0, -2147483647, Integer.MAX_VALUE);
            WheelScroller.this.setNextMessage(0);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            return true;
        }
    };
    private final int MESSAGE_SCROLL = 0;
    private final int MESSAGE_JUSTIFY = 1;
    private Handler animationHandler = new Handler() { // from class: com.lljjcoder.style.citypickerview.widget.wheel.WheelScroller.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WheelScroller.this.scroller.computeScrollOffset();
            int currY = WheelScroller.this.scroller.getCurrY();
            int i4 = WheelScroller.this.lastScrollY - currY;
            WheelScroller.this.lastScrollY = currY;
            if (i4 != 0) {
                WheelScroller.this.listener.onScroll(i4);
            }
            if (Math.abs(currY - WheelScroller.this.scroller.getFinalY()) < 1) {
                WheelScroller.this.scroller.getFinalY();
                WheelScroller.this.scroller.forceFinished(true);
            }
            if (!WheelScroller.this.scroller.isFinished()) {
                WheelScroller.this.animationHandler.sendEmptyMessage(message.what);
            } else if (message.what == 0) {
                WheelScroller.this.justify();
            } else {
                WheelScroller.this.finishScrolling();
            }
        }
    };

    /* loaded from: classes3.dex */
    public interface ScrollingListener {
        void onFinished();

        void onJustify();

        void onScroll(int i4);

        void onStarted();
    }

    public WheelScroller(Context context, ScrollingListener scrollingListener) {
        GestureDetector gestureDetector = new GestureDetector(context, this.gestureListener);
        this.gestureDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.scroller = new Scroller(context);
        this.listener = scrollingListener;
        this.context = context;
    }

    private void clearMessages() {
        this.animationHandler.removeMessages(0);
        this.animationHandler.removeMessages(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void justify() {
        this.listener.onJustify();
        setNextMessage(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNextMessage(int i4) {
        clearMessages();
        this.animationHandler.sendEmptyMessage(i4);
    }

    private void startScrolling() {
        if (this.isScrollingPerformed) {
            return;
        }
        this.isScrollingPerformed = true;
        this.listener.onStarted();
    }

    void finishScrolling() {
        if (this.isScrollingPerformed) {
            this.listener.onFinished();
            this.isScrollingPerformed = false;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int y9;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.lastTouchedY = motionEvent.getY();
            this.scroller.forceFinished(true);
            clearMessages();
        } else if (action == 2 && (y9 = (int) (motionEvent.getY() - this.lastTouchedY)) != 0) {
            startScrolling();
            this.listener.onScroll(y9);
            this.lastTouchedY = motionEvent.getY();
        }
        if (!this.gestureDetector.onTouchEvent(motionEvent) && motionEvent.getAction() == 1) {
            justify();
        }
        return true;
    }

    public void scroll(int i4, int i10) {
        this.scroller.forceFinished(true);
        this.lastScrollY = 0;
        this.scroller.startScroll(0, 0, 0, i4, i10 != 0 ? i10 : 400);
        setNextMessage(0);
        startScrolling();
    }

    public void setInterpolator(Interpolator interpolator) {
        this.scroller.forceFinished(true);
        this.scroller = new Scroller(this.context, interpolator);
    }

    public void stopScrolling() {
        this.scroller.forceFinished(true);
    }
}
