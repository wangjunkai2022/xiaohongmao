package io.sentry.android.core.internal.util;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.RequiresApi;
import io.sentry.android.core.m0;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FirstDrawDoneListener.java */
@RequiresApi(api = 16)
@SuppressLint({"ObsoleteSdkInt"})
/* loaded from: classes4.dex */
public class h implements ViewTreeObserver.OnDrawListener {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Handler f82470a = new Handler(Looper.getMainLooper());
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference<View> f82471b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f82472c;

    /* compiled from: FirstDrawDoneListener.java */
    /* loaded from: classes4.dex */
    class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnDrawListener(h.this);
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
        }
    }

    private h(@m8.g View view, @m8.g Runnable runnable) {
        this.f82471b = new AtomicReference<>(view);
        this.f82472c = runnable;
    }

    private static boolean b(@m8.g View view, @m8.g m0 m0Var) {
        return view.getViewTreeObserver().isAlive() && c(view, m0Var);
    }

    @SuppressLint({"NewApi"})
    private static boolean c(@m8.g View view, @m8.g m0 m0Var) {
        if (m0Var.d() >= 19) {
            return view.isAttachedToWindow();
        }
        return view.getWindowToken() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        view.getViewTreeObserver().removeOnDrawListener(this);
    }

    public static void e(@m8.g View view, @m8.g Runnable runnable, @m8.g m0 m0Var) {
        h hVar = new h(view, runnable);
        if (m0Var.d() < 26 && !b(view, m0Var)) {
            view.addOnAttachStateChangeListener(new a());
        } else {
            view.getViewTreeObserver().addOnDrawListener(hVar);
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        final View andSet = this.f82471b.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: io.sentry.android.core.internal.util.g
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                h.this.d(andSet);
            }
        });
        this.f82470a.postAtFrontOfQueue(this.f82472c);
    }
}
