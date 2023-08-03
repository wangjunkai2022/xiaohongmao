package com.qennnsad.aknkaksd.presentation.ui.room.view;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;

/* compiled from: AndroidBug5497Workaround.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private View f54320a;

    /* renamed from: b  reason: collision with root package name */
    private int f54321b;

    /* renamed from: c  reason: collision with root package name */
    private FrameLayout.LayoutParams f54322c;

    /* renamed from: d  reason: collision with root package name */
    private int f54323d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54324e = true;

    /* renamed from: f  reason: collision with root package name */
    private int f54325f;

    /* compiled from: AndroidBug5497Workaround.java */
    /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class ViewTreeObserver$OnGlobalLayoutListenerC0455a implements ViewTreeObserver.OnGlobalLayoutListener {
        ViewTreeObserver$OnGlobalLayoutListenerC0455a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (a.this.f54324e) {
                a aVar = a.this;
                aVar.f54323d = aVar.f54320a.getHeight();
                a.this.f54324e = false;
            }
            a.this.h();
        }
    }

    private a(Activity activity) {
        this.f54325f = activity.getResources().getDimensionPixelSize(activity.getResources().getIdentifier("status_bar_height", "dimen", "android"));
        View childAt = ((FrameLayout) activity.findViewById(16908290)).getChildAt(0);
        this.f54320a = childAt;
        childAt.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC0455a());
        this.f54322c = (FrameLayout.LayoutParams) this.f54320a.getLayoutParams();
    }

    public static void f(Activity activity) {
        new a(activity);
    }

    private int g() {
        Rect rect = new Rect();
        this.f54320a.getWindowVisibleDisplayFrame(rect);
        return rect.bottom - rect.top;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        int g4 = g();
        if (g4 != this.f54321b) {
            int height = this.f54320a.getRootView().getHeight();
            int i4 = height - g4;
            if (i4 > height / 4) {
                this.f54322c.height = (height - i4) + this.f54325f;
            } else {
                this.f54322c.height = this.f54323d;
            }
            this.f54320a.requestLayout();
            this.f54321b = g4;
        }
    }
}
