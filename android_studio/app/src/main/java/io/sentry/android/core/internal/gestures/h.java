package io.sentry.android.core.internal.gestures;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.GestureDetectorCompat;
import io.sentry.SentryOptions;
import io.sentry.SpanStatus;
import m8.a;

/* compiled from: SentryWindowCallback.java */
@a.c
/* loaded from: classes4.dex */
public final class h extends k {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Window.Callback f82454b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final g f82455c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final GestureDetectorCompat f82456d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private final SentryOptions f82457e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final b f82458f;

    /* compiled from: SentryWindowCallback.java */
    /* loaded from: classes4.dex */
    class a implements b {
        a() {
        }

        @Override // io.sentry.android.core.internal.gestures.h.b
        public /* synthetic */ MotionEvent a(MotionEvent motionEvent) {
            return i.a(this, motionEvent);
        }
    }

    /* compiled from: SentryWindowCallback.java */
    /* loaded from: classes4.dex */
    interface b {
        @m8.g
        MotionEvent a(@m8.g MotionEvent motionEvent);
    }

    public h(@m8.g Window.Callback callback, @m8.g Context context, @m8.g g gVar, @m8.h SentryOptions sentryOptions) {
        this(callback, new GestureDetectorCompat(context, gVar), gVar, sentryOptions, new a());
    }

    private void b(@m8.g MotionEvent motionEvent) {
        this.f82456d.onTouchEvent(motionEvent);
        if (motionEvent.getActionMasked() == 1) {
            this.f82455c.n(motionEvent);
        }
    }

    @m8.g
    public Window.Callback a() {
        return this.f82454b;
    }

    public void c() {
        this.f82455c.p(SpanStatus.CANCELLED);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public boolean dispatchTouchEvent(@m8.h MotionEvent motionEvent) {
        if (motionEvent != null) {
            try {
                b(this.f82458f.a(motionEvent));
            } finally {
                try {
                } finally {
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return super.dispatchTrackballEvent(motionEvent);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onActionModeFinished(ActionMode actionMode) {
        super.onActionModeFinished(actionMode);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onActionModeStarted(ActionMode actionMode) {
        super.onActionModeStarted(actionMode);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onContentChanged() {
        super.onContentChanged();
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ boolean onCreatePanelMenu(int i4, @m8.g Menu menu) {
        return super.onCreatePanelMenu(i4, menu);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    @m8.h
    public /* bridge */ /* synthetic */ View onCreatePanelView(int i4) {
        return super.onCreatePanelView(i4);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ boolean onMenuItemSelected(int i4, @m8.g MenuItem menuItem) {
        return super.onMenuItemSelected(i4, menuItem);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ boolean onMenuOpened(int i4, @m8.g Menu menu) {
        return super.onMenuOpened(i4, menu);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onPanelClosed(int i4, @m8.g Menu menu) {
        super.onPanelClosed(i4, menu);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ boolean onPreparePanel(int i4, @m8.h View view, @m8.g Menu menu) {
        return super.onPreparePanel(i4, view, menu);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ boolean onSearchRequested() {
        return super.onSearchRequested();
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        super.onWindowAttributesChanged(layoutParams);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    public /* bridge */ /* synthetic */ void onWindowFocusChanged(boolean z9) {
        super.onWindowFocusChanged(z9);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    @m8.h
    public /* bridge */ /* synthetic */ ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return super.onWindowStartingActionMode(callback);
    }

    h(@m8.g Window.Callback callback, @m8.g GestureDetectorCompat gestureDetectorCompat, @m8.g g gVar, @m8.h SentryOptions sentryOptions, @m8.g b bVar) {
        super(callback);
        this.f82454b = callback;
        this.f82455c = gVar;
        this.f82457e = sentryOptions;
        this.f82456d = gestureDetectorCompat;
        this.f82458f = bVar;
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    @SuppressLint({"NewApi"})
    public /* bridge */ /* synthetic */ boolean onSearchRequested(SearchEvent searchEvent) {
        return super.onSearchRequested(searchEvent);
    }

    @Override // io.sentry.android.core.internal.gestures.k, android.view.Window.Callback
    @m8.h
    @SuppressLint({"NewApi"})
    public /* bridge */ /* synthetic */ ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i4) {
        return super.onWindowStartingActionMode(callback, i4);
    }
}
