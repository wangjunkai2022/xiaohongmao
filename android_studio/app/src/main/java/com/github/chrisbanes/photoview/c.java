package com.github.chrisbanes.photoview;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CustomGestureDetector.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: k  reason: collision with root package name */
    private static final int f19241k = -1;

    /* renamed from: a  reason: collision with root package name */
    private int f19242a = -1;

    /* renamed from: b  reason: collision with root package name */
    private int f19243b = 0;

    /* renamed from: c  reason: collision with root package name */
    private final ScaleGestureDetector f19244c;

    /* renamed from: d  reason: collision with root package name */
    private VelocityTracker f19245d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f19246e;

    /* renamed from: f  reason: collision with root package name */
    private float f19247f;

    /* renamed from: g  reason: collision with root package name */
    private float f19248g;

    /* renamed from: h  reason: collision with root package name */
    private final float f19249h;

    /* renamed from: i  reason: collision with root package name */
    private final float f19250i;

    /* renamed from: j  reason: collision with root package name */
    private d f19251j;

    /* compiled from: CustomGestureDetector.java */
    /* loaded from: classes2.dex */
    class a implements ScaleGestureDetector.OnScaleGestureListener {
        a() {
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            float scaleFactor = scaleGestureDetector.getScaleFactor();
            if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                return false;
            }
            if (scaleFactor >= 0.0f) {
                c.this.f19251j.b(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
                return true;
            }
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, d dVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f19250i = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f19249h = viewConfiguration.getScaledTouchSlop();
        this.f19251j = dVar;
        this.f19244c = new ScaleGestureDetector(context, new a());
    }

    private float b(MotionEvent motionEvent) {
        try {
            return motionEvent.getX(this.f19243b);
        } catch (Exception unused) {
            return motionEvent.getX();
        }
    }

    private float c(MotionEvent motionEvent) {
        try {
            return motionEvent.getY(this.f19243b);
        } catch (Exception unused) {
            return motionEvent.getY();
        }
    }

    private boolean g(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f19242a = motionEvent.getPointerId(0);
            VelocityTracker obtain = VelocityTracker.obtain();
            this.f19245d = obtain;
            if (obtain != null) {
                obtain.addMovement(motionEvent);
            }
            this.f19247f = b(motionEvent);
            this.f19248g = c(motionEvent);
            this.f19246e = false;
        } else if (action == 1) {
            this.f19242a = -1;
            if (this.f19246e && this.f19245d != null) {
                this.f19247f = b(motionEvent);
                this.f19248g = c(motionEvent);
                this.f19245d.addMovement(motionEvent);
                this.f19245d.computeCurrentVelocity(1000);
                float xVelocity = this.f19245d.getXVelocity();
                float yVelocity = this.f19245d.getYVelocity();
                if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.f19250i) {
                    this.f19251j.c(this.f19247f, this.f19248g, -xVelocity, -yVelocity);
                }
            }
            VelocityTracker velocityTracker = this.f19245d;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f19245d = null;
            }
        } else if (action == 2) {
            float b10 = b(motionEvent);
            float c10 = c(motionEvent);
            float f10 = b10 - this.f19247f;
            float f11 = c10 - this.f19248g;
            if (!this.f19246e) {
                this.f19246e = Math.sqrt((double) ((f10 * f10) + (f11 * f11))) >= ((double) this.f19249h);
            }
            if (this.f19246e) {
                this.f19251j.a(f10, f11);
                this.f19247f = b10;
                this.f19248g = c10;
                VelocityTracker velocityTracker2 = this.f19245d;
                if (velocityTracker2 != null) {
                    velocityTracker2.addMovement(motionEvent);
                }
            }
        } else if (action == 3) {
            this.f19242a = -1;
            VelocityTracker velocityTracker3 = this.f19245d;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.f19245d = null;
            }
        } else if (action == 6) {
            int b11 = n.b(motionEvent.getAction());
            if (motionEvent.getPointerId(b11) == this.f19242a) {
                int i4 = b11 == 0 ? 1 : 0;
                this.f19242a = motionEvent.getPointerId(i4);
                this.f19247f = motionEvent.getX(i4);
                this.f19248g = motionEvent.getY(i4);
            }
        }
        int i10 = this.f19242a;
        this.f19243b = motionEvent.findPointerIndex(i10 != -1 ? i10 : 0);
        return true;
    }

    public boolean d() {
        return this.f19246e;
    }

    public boolean e() {
        return this.f19244c.isInProgress();
    }

    public boolean f(MotionEvent motionEvent) {
        try {
            this.f19244c.onTouchEvent(motionEvent);
            return g(motionEvent);
        } catch (IllegalArgumentException unused) {
            return true;
        }
    }
}
