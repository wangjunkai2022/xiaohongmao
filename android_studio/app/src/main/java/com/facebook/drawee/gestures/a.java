package com.facebook.drawee.gestures;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: GestureDetector.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a {
    @h
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    InterfaceC0091a f11629a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final float f11630b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    boolean f11631c;
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    boolean f11632d;
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    long f11633e;
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    float f11634f;
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    float f11635g;

    /* compiled from: GestureDetector.java */
    /* renamed from: com.facebook.drawee.gestures.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0091a {
        boolean a();
    }

    public a(Context context) {
        this.f11630b = ViewConfiguration.get(context).getScaledTouchSlop();
        a();
    }

    public static a c(Context context) {
        return new a(context);
    }

    public void a() {
        this.f11629a = null;
        e();
    }

    public boolean b() {
        return this.f11631c;
    }

    public boolean d(MotionEvent event) {
        InterfaceC0091a interfaceC0091a;
        int action = event.getAction();
        if (action == 0) {
            this.f11631c = true;
            this.f11632d = true;
            this.f11633e = event.getEventTime();
            this.f11634f = event.getX();
            this.f11635g = event.getY();
        } else if (action == 1) {
            this.f11631c = false;
            if (Math.abs(event.getX() - this.f11634f) > this.f11630b || Math.abs(event.getY() - this.f11635g) > this.f11630b) {
                this.f11632d = false;
            }
            if (this.f11632d && event.getEventTime() - this.f11633e <= ViewConfiguration.getLongPressTimeout() && (interfaceC0091a = this.f11629a) != null) {
                interfaceC0091a.a();
            }
            this.f11632d = false;
        } else if (action != 2) {
            if (action == 3) {
                this.f11631c = false;
                this.f11632d = false;
            }
        } else if (Math.abs(event.getX() - this.f11634f) > this.f11630b || Math.abs(event.getY() - this.f11635g) > this.f11630b) {
            this.f11632d = false;
        }
        return true;
    }

    public void e() {
        this.f11631c = false;
        this.f11632d = false;
    }

    public void f(InterfaceC0091a clickListener) {
        this.f11629a = clickListener;
    }
}
