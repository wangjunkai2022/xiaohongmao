package com.facebook.drawee.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import com.facebook.common.internal.i;
import com.facebook.common.internal.j;
import com.facebook.drawee.components.DraweeEventTracker;
import com.facebook.drawee.drawable.v;
import com.facebook.drawee.drawable.w;
import r7.h;
import z0.b;

/* compiled from: DraweeHolder.java */
/* loaded from: classes.dex */
public class b<DH extends z0.b> implements w {
    @h

    /* renamed from: d  reason: collision with root package name */
    private DH f11649d;

    /* renamed from: a  reason: collision with root package name */
    private boolean f11646a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f11647b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f11648c = true;

    /* renamed from: e  reason: collision with root package name */
    private z0.a f11650e = null;

    /* renamed from: f  reason: collision with root package name */
    private final DraweeEventTracker f11651f = DraweeEventTracker.b();

    public b(@h DH hierarchy) {
        if (hierarchy != null) {
            r(hierarchy);
        }
    }

    private void b() {
        if (this.f11646a) {
            return;
        }
        this.f11651f.c(DraweeEventTracker.Event.ON_ATTACH_CONTROLLER);
        this.f11646a = true;
        z0.a aVar = this.f11650e;
        if (aVar == null || aVar.f() == null) {
            return;
        }
        this.f11650e.c();
    }

    private void c() {
        if (this.f11647b && this.f11648c) {
            b();
        } else {
            e();
        }
    }

    public static <DH extends z0.b> b<DH> d(@h DH hierarchy, Context context) {
        b<DH> bVar = new b<>(hierarchy);
        bVar.p(context);
        return bVar;
    }

    private void e() {
        if (this.f11646a) {
            this.f11651f.c(DraweeEventTracker.Event.ON_DETACH_CONTROLLER);
            this.f11646a = false;
            if (l()) {
                this.f11650e.e();
            }
        }
    }

    private void s(@h w visibilityCallback) {
        Drawable i4 = i();
        if (i4 instanceof v) {
            ((v) i4).r(visibilityCallback);
        }
    }

    @Override // com.facebook.drawee.drawable.w
    public void a(boolean isVisible) {
        if (this.f11648c == isVisible) {
            return;
        }
        this.f11651f.c(isVisible ? DraweeEventTracker.Event.ON_DRAWABLE_SHOW : DraweeEventTracker.Event.ON_DRAWABLE_HIDE);
        this.f11648c = isVisible;
        c();
    }

    @h
    public z0.a f() {
        return this.f11650e;
    }

    protected DraweeEventTracker g() {
        return this.f11651f;
    }

    public DH h() {
        return (DH) j.i(this.f11649d);
    }

    @h
    public Drawable i() {
        DH dh = this.f11649d;
        if (dh == null) {
            return null;
        }
        return dh.d();
    }

    public boolean j() {
        return this.f11649d != null;
    }

    public boolean k() {
        return this.f11647b;
    }

    public boolean l() {
        z0.a aVar = this.f11650e;
        return aVar != null && aVar.f() == this.f11649d;
    }

    public void m() {
        this.f11651f.c(DraweeEventTracker.Event.ON_HOLDER_ATTACH);
        this.f11647b = true;
        c();
    }

    public void n() {
        this.f11651f.c(DraweeEventTracker.Event.ON_HOLDER_DETACH);
        this.f11647b = false;
        c();
    }

    public boolean o(MotionEvent event) {
        if (l()) {
            return this.f11650e.onTouchEvent(event);
        }
        return false;
    }

    @Override // com.facebook.drawee.drawable.w
    public void onDraw() {
        if (this.f11646a) {
            return;
        }
        p0.a.m0(DraweeEventTracker.class, "%x: Draw requested for a non-attached controller %x. %s", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.f11650e)), toString());
        this.f11647b = true;
        this.f11648c = true;
        c();
    }

    public void p(Context context) {
    }

    public void q(@h z0.a draweeController) {
        boolean z9 = this.f11646a;
        if (z9) {
            e();
        }
        if (l()) {
            this.f11651f.c(DraweeEventTracker.Event.ON_CLEAR_OLD_CONTROLLER);
            this.f11650e.i(null);
        }
        this.f11650e = draweeController;
        if (draweeController != null) {
            this.f11651f.c(DraweeEventTracker.Event.ON_SET_CONTROLLER);
            this.f11650e.i(this.f11649d);
        } else {
            this.f11651f.c(DraweeEventTracker.Event.ON_CLEAR_CONTROLLER);
        }
        if (z9) {
            b();
        }
    }

    public void r(DH hierarchy) {
        this.f11651f.c(DraweeEventTracker.Event.ON_SET_HIERARCHY);
        boolean l10 = l();
        s(null);
        DH dh = (DH) j.i(hierarchy);
        this.f11649d = dh;
        Drawable d4 = dh.d();
        a(d4 == null || d4.isVisible());
        s(this);
        if (l10) {
            this.f11650e.i(hierarchy);
        }
    }

    public String toString() {
        return i.e(this).g("controllerAttached", this.f11646a).g("holderAttached", this.f11647b).g("drawableVisible", this.f11648c).f("events", this.f11651f.toString()).toString();
    }
}
