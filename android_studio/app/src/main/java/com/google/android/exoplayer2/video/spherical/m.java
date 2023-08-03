package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.BinderThread;
import com.google.android.exoplayer2.video.spherical.d;

/* compiled from: TouchTracker.java */
/* loaded from: classes2.dex */
final class m extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, d.a {

    /* renamed from: g  reason: collision with root package name */
    static final float f28102g = 45.0f;

    /* renamed from: c  reason: collision with root package name */
    private final a f28105c;

    /* renamed from: d  reason: collision with root package name */
    private final float f28106d;

    /* renamed from: e  reason: collision with root package name */
    private final GestureDetector f28107e;

    /* renamed from: a  reason: collision with root package name */
    private final PointF f28103a = new PointF();

    /* renamed from: b  reason: collision with root package name */
    private final PointF f28104b = new PointF();

    /* renamed from: f  reason: collision with root package name */
    private volatile float f28108f = 3.1415927f;

    /* compiled from: TouchTracker.java */
    /* loaded from: classes2.dex */
    public interface a {
        void b(PointF pointF);

        boolean onSingleTapUp(MotionEvent motionEvent);
    }

    public m(Context context, a aVar, float f10) {
        this.f28105c = aVar;
        this.f28106d = f10;
        this.f28107e = new GestureDetector(context, this);
    }

    @Override // com.google.android.exoplayer2.video.spherical.d.a
    @BinderThread
    public void a(float[] fArr, float f10) {
        this.f28108f = -f10;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.f28103a.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        float x9 = (motionEvent2.getX() - this.f28103a.x) / this.f28106d;
        float y9 = motionEvent2.getY();
        PointF pointF = this.f28103a;
        float f12 = (y9 - pointF.y) / this.f28106d;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d4 = this.f28108f;
        float cos = (float) Math.cos(d4);
        float sin = (float) Math.sin(d4);
        PointF pointF2 = this.f28104b;
        pointF2.x -= (cos * x9) - (sin * f12);
        float f13 = pointF2.y + (sin * x9) + (cos * f12);
        pointF2.y = f13;
        pointF2.y = Math.max(-45.0f, Math.min((float) f28102g, f13));
        this.f28105c.b(this.f28104b);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.f28105c.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f28107e.onTouchEvent(motionEvent);
    }
}
