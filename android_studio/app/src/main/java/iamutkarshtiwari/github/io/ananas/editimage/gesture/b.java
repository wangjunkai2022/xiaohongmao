package iamutkarshtiwari.github.io.ananas.editimage.gesture;

import android.view.MotionEvent;
import android.view.View;
import i7.g;

/* compiled from: ScaleGestureDetector.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: v  reason: collision with root package name */
    private static final float f69582v = 0.67f;

    /* renamed from: a  reason: collision with root package name */
    private final g f69583a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f69584b;

    /* renamed from: c  reason: collision with root package name */
    private MotionEvent f69585c;

    /* renamed from: d  reason: collision with root package name */
    private MotionEvent f69586d;

    /* renamed from: e  reason: collision with root package name */
    private Vector2D f69587e = new Vector2D();

    /* renamed from: f  reason: collision with root package name */
    private float f69588f;

    /* renamed from: g  reason: collision with root package name */
    private float f69589g;

    /* renamed from: h  reason: collision with root package name */
    private float f69590h;

    /* renamed from: i  reason: collision with root package name */
    private float f69591i;

    /* renamed from: j  reason: collision with root package name */
    private float f69592j;

    /* renamed from: k  reason: collision with root package name */
    private float f69593k;

    /* renamed from: l  reason: collision with root package name */
    private float f69594l;

    /* renamed from: m  reason: collision with root package name */
    private float f69595m;

    /* renamed from: n  reason: collision with root package name */
    private float f69596n;

    /* renamed from: o  reason: collision with root package name */
    private float f69597o;

    /* renamed from: p  reason: collision with root package name */
    private float f69598p;

    /* renamed from: q  reason: collision with root package name */
    private long f69599q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f69600r;

    /* renamed from: s  reason: collision with root package name */
    private int f69601s;

    /* renamed from: t  reason: collision with root package name */
    private int f69602t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f69603u;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(g gVar) {
        this.f69583a = gVar;
    }

    private int a(MotionEvent motionEvent, int i4, int i10) {
        int pointerCount = motionEvent.getPointerCount();
        int findPointerIndex = motionEvent.findPointerIndex(i4);
        for (int i11 = 0; i11 < pointerCount; i11++) {
            if (i11 != i10 && i11 != findPointerIndex) {
                return i11;
            }
        }
        return -1;
    }

    private float b() {
        if (this.f69594l == -1.0f) {
            float f10 = this.f69592j;
            float f11 = this.f69593k;
            this.f69594l = (float) Math.sqrt((f10 * f10) + (f11 * f11));
        }
        return this.f69594l;
    }

    private float i() {
        if (this.f69595m == -1.0f) {
            float f10 = this.f69590h;
            float f11 = this.f69591i;
            this.f69595m = (float) Math.sqrt((f10 * f10) + (f11 * f11));
        }
        return this.f69595m;
    }

    private void p() {
        MotionEvent motionEvent = this.f69585c;
        if (motionEvent != null) {
            motionEvent.recycle();
            this.f69585c = null;
        }
        MotionEvent motionEvent2 = this.f69586d;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
            this.f69586d = null;
        }
        this.f69584b = false;
        this.f69601s = -1;
        this.f69602t = -1;
        this.f69600r = false;
    }

    private void q(View view, MotionEvent motionEvent) {
        MotionEvent motionEvent2 = this.f69586d;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
        }
        this.f69586d = MotionEvent.obtain(motionEvent);
        this.f69594l = -1.0f;
        this.f69595m = -1.0f;
        this.f69596n = -1.0f;
        this.f69587e.set(0.0f, 0.0f);
        MotionEvent motionEvent3 = this.f69585c;
        int findPointerIndex = motionEvent3.findPointerIndex(this.f69601s);
        int findPointerIndex2 = motionEvent3.findPointerIndex(this.f69602t);
        int findPointerIndex3 = motionEvent.findPointerIndex(this.f69601s);
        int findPointerIndex4 = motionEvent.findPointerIndex(this.f69602t);
        if (findPointerIndex >= 0 && findPointerIndex2 >= 0 && findPointerIndex3 >= 0 && findPointerIndex4 >= 0) {
            float x9 = motionEvent3.getX(findPointerIndex);
            float y9 = motionEvent3.getY(findPointerIndex);
            float x10 = motionEvent3.getX(findPointerIndex2);
            float y10 = motionEvent3.getY(findPointerIndex2);
            float x11 = motionEvent.getX(findPointerIndex3);
            float y11 = motionEvent.getY(findPointerIndex3);
            float x12 = motionEvent.getX(findPointerIndex4) - x11;
            float y12 = motionEvent.getY(findPointerIndex4) - y11;
            this.f69587e.set(x12, y12);
            this.f69590h = x10 - x9;
            this.f69591i = y10 - y9;
            this.f69592j = x12;
            this.f69593k = y12;
            this.f69588f = x11 + (x12 * 0.5f);
            this.f69589g = y11 + (y12 * 0.5f);
            this.f69599q = motionEvent.getEventTime() - motionEvent3.getEventTime();
            this.f69597o = motionEvent.getPressure(findPointerIndex3) + motionEvent.getPressure(findPointerIndex4);
            this.f69598p = motionEvent3.getPressure(findPointerIndex) + motionEvent3.getPressure(findPointerIndex2);
            return;
        }
        this.f69600r = true;
        if (this.f69584b) {
            this.f69583a.c(view, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Vector2D c() {
        return this.f69587e;
    }

    public float d() {
        return this.f69592j;
    }

    public float e() {
        return this.f69593k;
    }

    public long f() {
        return this.f69586d.getEventTime();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float g() {
        return this.f69588f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float h() {
        return this.f69589g;
    }

    public float j() {
        return this.f69590h;
    }

    public float k() {
        return this.f69591i;
    }

    public float l() {
        if (this.f69596n == -1.0f) {
            this.f69596n = b() / i();
        }
        return this.f69596n;
    }

    public long m() {
        return this.f69599q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean n() {
        return this.f69584b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean o(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            p();
        }
        boolean z9 = false;
        if (this.f69600r) {
            return false;
        }
        if (this.f69584b) {
            if (actionMasked == 1) {
                p();
            } else if (actionMasked == 2) {
                q(view, motionEvent);
                if (this.f69597o / this.f69598p > f69582v && this.f69583a.a(view, this)) {
                    this.f69585c.recycle();
                    this.f69585c = MotionEvent.obtain(motionEvent);
                }
            } else if (actionMasked == 3) {
                this.f69583a.c(view, this);
                p();
            } else if (actionMasked == 5) {
                this.f69583a.c(view, this);
                int i4 = this.f69601s;
                int i10 = this.f69602t;
                p();
                this.f69585c = MotionEvent.obtain(motionEvent);
                if (!this.f69603u) {
                    i4 = i10;
                }
                this.f69601s = i4;
                this.f69602t = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.f69603u = false;
                if (motionEvent.findPointerIndex(this.f69601s) < 0 || this.f69601s == this.f69602t) {
                    this.f69601s = motionEvent.getPointerId(a(motionEvent, this.f69602t, -1));
                }
                q(view, motionEvent);
                this.f69584b = this.f69583a.b(view, this);
            } else if (actionMasked == 6) {
                int pointerCount = motionEvent.getPointerCount();
                int actionIndex = motionEvent.getActionIndex();
                int pointerId = motionEvent.getPointerId(actionIndex);
                if (pointerCount > 2) {
                    int i11 = this.f69601s;
                    if (pointerId == i11) {
                        int a10 = a(motionEvent, this.f69602t, actionIndex);
                        if (a10 >= 0) {
                            this.f69583a.c(view, this);
                            this.f69601s = motionEvent.getPointerId(a10);
                            this.f69603u = true;
                            this.f69585c = MotionEvent.obtain(motionEvent);
                            q(view, motionEvent);
                            this.f69584b = this.f69583a.b(view, this);
                            this.f69585c.recycle();
                            this.f69585c = MotionEvent.obtain(motionEvent);
                            q(view, motionEvent);
                        }
                        z9 = true;
                        this.f69585c.recycle();
                        this.f69585c = MotionEvent.obtain(motionEvent);
                        q(view, motionEvent);
                    } else {
                        if (pointerId == this.f69602t) {
                            int a11 = a(motionEvent, i11, actionIndex);
                            if (a11 >= 0) {
                                this.f69583a.c(view, this);
                                this.f69602t = motionEvent.getPointerId(a11);
                                this.f69603u = false;
                                this.f69585c = MotionEvent.obtain(motionEvent);
                                q(view, motionEvent);
                                this.f69584b = this.f69583a.b(view, this);
                            }
                            z9 = true;
                        }
                        this.f69585c.recycle();
                        this.f69585c = MotionEvent.obtain(motionEvent);
                        q(view, motionEvent);
                    }
                } else {
                    z9 = true;
                }
                if (z9) {
                    q(view, motionEvent);
                    int i12 = this.f69601s;
                    if (pointerId == i12) {
                        i12 = this.f69602t;
                    }
                    int findPointerIndex = motionEvent.findPointerIndex(i12);
                    this.f69588f = motionEvent.getX(findPointerIndex);
                    this.f69589g = motionEvent.getY(findPointerIndex);
                    this.f69583a.c(view, this);
                    p();
                    this.f69601s = i12;
                    this.f69603u = true;
                }
            }
        } else if (actionMasked == 0) {
            this.f69601s = motionEvent.getPointerId(0);
            this.f69603u = true;
        } else if (actionMasked == 1) {
            p();
        } else if (actionMasked == 5) {
            MotionEvent motionEvent2 = this.f69585c;
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            this.f69585c = MotionEvent.obtain(motionEvent);
            this.f69599q = 0L;
            int actionIndex2 = motionEvent.getActionIndex();
            int findPointerIndex2 = motionEvent.findPointerIndex(this.f69601s);
            int pointerId2 = motionEvent.getPointerId(actionIndex2);
            this.f69602t = pointerId2;
            if (findPointerIndex2 < 0 || findPointerIndex2 == actionIndex2) {
                this.f69601s = motionEvent.getPointerId(a(motionEvent, pointerId2, -1));
            }
            this.f69603u = false;
            q(view, motionEvent);
            this.f69584b = this.f69583a.b(view, this);
        }
        return true;
    }
}
