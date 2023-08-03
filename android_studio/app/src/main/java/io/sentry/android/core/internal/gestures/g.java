package io.sentry.android.core.internal.gestures;

import android.app.Activity;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import io.sentry.SentryLevel;
import io.sentry.SpanStatus;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.b0;
import io.sentry.internal.gestures.UiElement;
import io.sentry.n0;
import io.sentry.o0;
import io.sentry.p5;
import io.sentry.protocol.TransactionNameSource;
import io.sentry.r2;
import io.sentry.r5;
import io.sentry.s2;
import io.sentry.t5;
import io.sentry.w0;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import m8.a;
import m8.n;

/* compiled from: SentryGestureListener.java */
@a.c
/* loaded from: classes4.dex */
public final class g implements GestureDetector.OnGestureListener {

    /* renamed from: h  reason: collision with root package name */
    static final String f82442h = "ui.action";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Activity> f82443a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final n0 f82444b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final SentryAndroidOptions f82445c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private UiElement f82446d = null;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private w0 f82447e = null;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private String f82448f = null;

    /* renamed from: g  reason: collision with root package name */
    private final b f82449g = new b();

    /* compiled from: SentryGestureListener.java */
    /* loaded from: classes4.dex */
    private static final class b {
        @m8.h

        /* renamed from: a  reason: collision with root package name */
        private String f82450a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private UiElement f82451b;

        /* renamed from: c  reason: collision with root package name */
        private float f82452c;

        /* renamed from: d  reason: collision with root package name */
        private float f82453d;

        private b() {
            this.f82450a = null;
            this.f82452c = 0.0f;
            this.f82453d = 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @m8.g
        public String i(MotionEvent motionEvent) {
            float x9 = motionEvent.getX() - this.f82452c;
            float y9 = motionEvent.getY() - this.f82453d;
            return Math.abs(x9) > Math.abs(y9) ? x9 > 0.0f ? com.google.android.exoplayer2.text.ttml.d.f25723n0 : com.google.android.exoplayer2.text.ttml.d.f25720l0 : y9 > 0.0f ? "down" : "up";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j() {
            this.f82451b = null;
            this.f82450a = null;
            this.f82452c = 0.0f;
            this.f82453d = 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k(@m8.g UiElement uiElement) {
            this.f82451b = uiElement;
        }
    }

    public g(@m8.g Activity activity, @m8.g n0 n0Var, @m8.g SentryAndroidOptions sentryAndroidOptions) {
        this.f82443a = new WeakReference<>(activity);
        this.f82444b = n0Var;
        this.f82445c = sentryAndroidOptions;
    }

    private void e(@m8.g UiElement uiElement, @m8.g String str, @m8.g Map<String, Object> map, @m8.g MotionEvent motionEvent) {
        if (this.f82445c.isEnableUserInteractionBreadcrumbs()) {
            b0 b0Var = new b0();
            b0Var.m(t5.f83988k, motionEvent);
            b0Var.m(t5.f83989l, uiElement.e());
            this.f82444b.s(io.sentry.f.D(str, uiElement.c(), uiElement.a(), uiElement.d(), map), b0Var);
        }
    }

    @m8.h
    private View h(@m8.g String str) {
        Activity activity = this.f82443a.get();
        if (activity == null) {
            o0 logger = this.f82445c.getLogger();
            SentryLevel sentryLevel = SentryLevel.DEBUG;
            logger.c(sentryLevel, "Activity is null in " + str + ". No breadcrumb captured.", new Object[0]);
            return null;
        }
        Window window = activity.getWindow();
        if (window == null) {
            o0 logger2 = this.f82445c.getLogger();
            SentryLevel sentryLevel2 = SentryLevel.DEBUG;
            logger2.c(sentryLevel2, "Window is null in " + str + ". No breadcrumb captured.", new Object[0]);
            return null;
        }
        View decorView = window.getDecorView();
        if (decorView == null) {
            o0 logger3 = this.f82445c.getLogger();
            SentryLevel sentryLevel3 = SentryLevel.DEBUG;
            logger3.c(sentryLevel3, "DecorView is null in " + str + ". No breadcrumb captured.", new Object[0]);
            return null;
        }
        return decorView;
    }

    @m8.g
    private String i(@m8.g Activity activity) {
        return activity.getClass().getSimpleName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(r2 r2Var, w0 w0Var, w0 w0Var2) {
        if (w0Var2 == null) {
            r2Var.O(w0Var);
        } else {
            this.f82445c.getLogger().c(SentryLevel.DEBUG, "Transaction '%s' won't be bound to the Scope since there's one already in there.", w0Var.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(r2 r2Var, w0 w0Var) {
        if (w0Var == this.f82447e) {
            r2Var.h();
        }
    }

    private void o(@m8.g UiElement uiElement, @m8.g String str) {
        Activity activity;
        if (this.f82445c.isTracingEnabled() && this.f82445c.isEnableUserInteractionTracing()) {
            if (this.f82443a.get() == null) {
                this.f82445c.getLogger().c(SentryLevel.DEBUG, "Activity is null, no transaction captured.", new Object[0]);
                return;
            }
            String b10 = uiElement.b();
            UiElement uiElement2 = this.f82446d;
            if (this.f82447e != null) {
                if (uiElement.equals(uiElement2) && str.equals(this.f82448f) && !this.f82447e.b()) {
                    this.f82445c.getLogger().c(SentryLevel.DEBUG, "The view with id: " + b10 + " already has an ongoing transaction assigned. Rescheduling finish", new Object[0]);
                    if (this.f82445c.getIdleTimeout() != null) {
                        this.f82447e.C();
                        return;
                    }
                    return;
                }
                p(SpanStatus.OK);
            }
            r5 r5Var = new r5();
            r5Var.n(true);
            r5Var.j(this.f82445c.getIdleTimeout());
            r5Var.m(true);
            final w0 N = this.f82444b.N(new p5(i(activity) + "." + b10, TransactionNameSource.COMPONENT, "ui.action." + str), r5Var);
            this.f82444b.t(new s2() { // from class: io.sentry.android.core.internal.gestures.f
                @Override // io.sentry.s2
                public final void a(r2 r2Var) {
                    g.this.l(N, r2Var);
                }
            });
            this.f82447e = N;
            this.f82446d = uiElement;
            this.f82448f = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @n
    /* renamed from: f */
    public void l(@m8.g final r2 r2Var, @m8.g final w0 w0Var) {
        r2Var.T(new r2.b() { // from class: io.sentry.android.core.internal.gestures.d
            @Override // io.sentry.r2.b
            public final void a(w0 w0Var2) {
                g.this.j(r2Var, w0Var, w0Var2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @n
    /* renamed from: g */
    public void m(@m8.g final r2 r2Var) {
        r2Var.T(new r2.b() { // from class: io.sentry.android.core.internal.gestures.c
            @Override // io.sentry.r2.b
            public final void a(w0 w0Var) {
                g.this.k(r2Var, w0Var);
            }
        });
    }

    public void n(@m8.g MotionEvent motionEvent) {
        View h4 = h("onUp");
        UiElement uiElement = this.f82449g.f82451b;
        if (h4 == null || uiElement == null) {
            return;
        }
        if (this.f82449g.f82450a == null) {
            this.f82445c.getLogger().c(SentryLevel.DEBUG, "Unable to define scroll type. No breadcrumb captured.", new Object[0]);
            return;
        }
        e(uiElement, this.f82449g.f82450a, Collections.singletonMap("direction", this.f82449g.i(motionEvent)), motionEvent);
        o(uiElement, this.f82449g.f82450a);
        this.f82449g.j();
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(@m8.h MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        this.f82449g.j();
        this.f82449g.f82452c = motionEvent.getX();
        this.f82449g.f82453d = motionEvent.getY();
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(@m8.h MotionEvent motionEvent, @m8.h MotionEvent motionEvent2, float f10, float f11) {
        this.f82449g.f82450a = "swipe";
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(@m8.h MotionEvent motionEvent, @m8.h MotionEvent motionEvent2, float f10, float f11) {
        View h4 = h("onScroll");
        if (h4 != null && motionEvent != null && this.f82449g.f82450a == null) {
            UiElement a10 = j.a(this.f82445c, h4, motionEvent.getX(), motionEvent.getY(), UiElement.Type.SCROLLABLE);
            if (a10 == null) {
                this.f82445c.getLogger().c(SentryLevel.DEBUG, "Unable to find scroll target. No breadcrumb captured.", new Object[0]);
                return false;
            }
            o0 logger = this.f82445c.getLogger();
            SentryLevel sentryLevel = SentryLevel.DEBUG;
            logger.c(sentryLevel, "Scroll target found: " + a10.b(), new Object[0]);
            this.f82449g.k(a10);
            this.f82449g.f82450a = "scroll";
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(@m8.h MotionEvent motionEvent) {
        View h4 = h("onSingleTapUp");
        if (h4 != null && motionEvent != null) {
            UiElement a10 = j.a(this.f82445c, h4, motionEvent.getX(), motionEvent.getY(), UiElement.Type.CLICKABLE);
            if (a10 == null) {
                this.f82445c.getLogger().c(SentryLevel.DEBUG, "Unable to find click target. No breadcrumb captured.", new Object[0]);
                return false;
            }
            e(a10, "click", Collections.emptyMap(), motionEvent);
            o(a10, "click");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(@m8.g SpanStatus spanStatus) {
        w0 w0Var = this.f82447e;
        if (w0Var != null) {
            w0Var.t(spanStatus);
        }
        this.f82444b.t(new s2() { // from class: io.sentry.android.core.internal.gestures.e
            @Override // io.sentry.s2
            public final void a(r2 r2Var) {
                g.this.m(r2Var);
            }
        });
        this.f82447e = null;
        if (this.f82446d != null) {
            this.f82446d = null;
        }
        this.f82448f = null;
    }
}
