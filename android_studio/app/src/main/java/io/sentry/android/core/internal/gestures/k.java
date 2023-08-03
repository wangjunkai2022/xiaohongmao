package io.sentry.android.core.internal.gestures;

import android.annotation.SuppressLint;
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

/* compiled from: WindowCallbackAdapter.java */
/* loaded from: classes4.dex */
class k implements Window.Callback {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Window.Callback f82459a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Window.Callback callback) {
        this.f82459a = callback;
    }

    @Override // android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f82459a.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f82459a.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return this.f82459a.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f82459a.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTouchEvent(@m8.h MotionEvent motionEvent) {
        return this.f82459a.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f82459a.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public void onActionModeFinished(ActionMode actionMode) {
        this.f82459a.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public void onActionModeStarted(ActionMode actionMode) {
        this.f82459a.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public void onAttachedToWindow() {
        this.f82459a.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public void onContentChanged() {
        this.f82459a.onContentChanged();
    }

    @Override // android.view.Window.Callback
    public boolean onCreatePanelMenu(int i4, @m8.g Menu menu) {
        return this.f82459a.onCreatePanelMenu(i4, menu);
    }

    @Override // android.view.Window.Callback
    @m8.h
    public View onCreatePanelView(int i4) {
        return this.f82459a.onCreatePanelView(i4);
    }

    @Override // android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f82459a.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public boolean onMenuItemSelected(int i4, @m8.g MenuItem menuItem) {
        return this.f82459a.onMenuItemSelected(i4, menuItem);
    }

    @Override // android.view.Window.Callback
    public boolean onMenuOpened(int i4, @m8.g Menu menu) {
        return this.f82459a.onMenuOpened(i4, menu);
    }

    @Override // android.view.Window.Callback
    public void onPanelClosed(int i4, @m8.g Menu menu) {
        this.f82459a.onPanelClosed(i4, menu);
    }

    @Override // android.view.Window.Callback
    public boolean onPreparePanel(int i4, @m8.h View view, @m8.g Menu menu) {
        return this.f82459a.onPreparePanel(i4, view, menu);
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested() {
        return this.f82459a.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f82459a.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public void onWindowFocusChanged(boolean z9) {
        this.f82459a.onWindowFocusChanged(z9);
    }

    @Override // android.view.Window.Callback
    @m8.h
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return this.f82459a.onWindowStartingActionMode(callback);
    }

    @Override // android.view.Window.Callback
    @SuppressLint({"NewApi"})
    public boolean onSearchRequested(SearchEvent searchEvent) {
        return this.f82459a.onSearchRequested(searchEvent);
    }

    @Override // android.view.Window.Callback
    @m8.h
    @SuppressLint({"NewApi"})
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i4) {
        return this.f82459a.onWindowStartingActionMode(callback, i4);
    }
}
