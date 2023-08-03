package com.yalantis.ucrop.util;

import android.view.MotionEvent;
import androidx.annotation.NonNull;

/* compiled from: RotationGestureDetector.java */
/* loaded from: classes3.dex */
public class h {

    /* renamed from: j  reason: collision with root package name */
    private static final int f61137j = -1;

    /* renamed from: a  reason: collision with root package name */
    private float f61138a;

    /* renamed from: b  reason: collision with root package name */
    private float f61139b;

    /* renamed from: c  reason: collision with root package name */
    private float f61140c;

    /* renamed from: d  reason: collision with root package name */
    private float f61141d;

    /* renamed from: e  reason: collision with root package name */
    private int f61142e = -1;

    /* renamed from: f  reason: collision with root package name */
    private int f61143f = -1;

    /* renamed from: g  reason: collision with root package name */
    private float f61144g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f61145h;

    /* renamed from: i  reason: collision with root package name */
    private a f61146i;

    /* compiled from: RotationGestureDetector.java */
    /* loaded from: classes3.dex */
    public interface a {
        boolean a(h hVar);
    }

    /* compiled from: RotationGestureDetector.java */
    /* loaded from: classes3.dex */
    public static class b implements a {
        @Override // com.yalantis.ucrop.util.h.a
        public boolean a(h hVar) {
            return false;
        }
    }

    public h(a aVar) {
        this.f61146i = aVar;
    }

    private float a(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        return b((float) Math.toDegrees((float) Math.atan2(f11 - f13, f10 - f12)), (float) Math.toDegrees((float) Math.atan2(f15 - f17, f14 - f16)));
    }

    private float b(float f10, float f11) {
        float f12 = (f11 % 360.0f) - (f10 % 360.0f);
        this.f61144g = f12;
        if (f12 < -180.0f) {
            this.f61144g = f12 + 360.0f;
        } else if (f12 > 180.0f) {
            this.f61144g = f12 - 360.0f;
        }
        return this.f61144g;
    }

    public float c() {
        return this.f61144g;
    }

    public boolean d(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f61140c = motionEvent.getX();
            this.f61141d = motionEvent.getY();
            this.f61142e = motionEvent.findPointerIndex(motionEvent.getPointerId(0));
            this.f61144g = 0.0f;
            this.f61145h = true;
        } else if (actionMasked == 1) {
            this.f61142e = -1;
        } else if (actionMasked != 2) {
            if (actionMasked == 5) {
                this.f61138a = motionEvent.getX();
                this.f61139b = motionEvent.getY();
                this.f61143f = motionEvent.findPointerIndex(motionEvent.getPointerId(motionEvent.getActionIndex()));
                this.f61144g = 0.0f;
                this.f61145h = true;
            } else if (actionMasked == 6) {
                this.f61143f = -1;
            }
        } else if (this.f61142e != -1 && this.f61143f != -1 && motionEvent.getPointerCount() > this.f61143f) {
            float x9 = motionEvent.getX(this.f61142e);
            float y9 = motionEvent.getY(this.f61142e);
            float x10 = motionEvent.getX(this.f61143f);
            float y10 = motionEvent.getY(this.f61143f);
            if (this.f61145h) {
                this.f61144g = 0.0f;
                this.f61145h = false;
            } else {
                a(this.f61138a, this.f61139b, this.f61140c, this.f61141d, x10, y10, x9, y9);
            }
            a aVar = this.f61146i;
            if (aVar != null) {
                aVar.a(this);
            }
            this.f61138a = x10;
            this.f61139b = y10;
            this.f61140c = x9;
            this.f61141d = y9;
        }
        return true;
    }
}
