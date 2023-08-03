package io.sentry.android.core.internal.gestures;

import android.content.res.Resources;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ScrollView;
import androidx.core.view.ScrollingView;
import io.sentry.internal.gestures.UiElement;
import m8.a;

/* compiled from: AndroidViewGestureTargetLocator.java */
@a.c
/* loaded from: classes4.dex */
public final class a implements io.sentry.internal.gestures.a {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f82432a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f82433b = new int[2];

    public a(boolean z9) {
        this.f82432a = z9;
    }

    private UiElement b(@m8.g View view) {
        try {
            String b10 = j.b(view);
            String canonicalName = view.getClass().getCanonicalName();
            if (canonicalName == null) {
                canonicalName = view.getClass().getSimpleName();
            }
            return new UiElement(view, canonicalName, b10, null);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    private static boolean c(@m8.g View view, boolean z9) {
        if (z9) {
            return ScrollingView.class.isAssignableFrom(view.getClass());
        }
        return false;
    }

    private static boolean d(@m8.g View view, boolean z9) {
        return (c(view, z9) || AbsListView.class.isAssignableFrom(view.getClass()) || ScrollView.class.isAssignableFrom(view.getClass())) && view.getVisibility() == 0;
    }

    private static boolean e(@m8.g View view) {
        return view.isClickable() && view.getVisibility() == 0;
    }

    private boolean f(@m8.g View view, float f10, float f11) {
        view.getLocationOnScreen(this.f82433b);
        int[] iArr = this.f82433b;
        int i4 = iArr[0];
        int i10 = iArr[1];
        return f10 >= ((float) i4) && f10 <= ((float) (i4 + view.getWidth())) && f11 >= ((float) i10) && f11 <= ((float) (i10 + view.getHeight()));
    }

    @Override // io.sentry.internal.gestures.a
    @m8.h
    public UiElement a(@m8.g Object obj, float f10, float f11, UiElement.Type type) {
        if (obj instanceof View) {
            View view = (View) obj;
            if (f(view, f10, f11)) {
                if (type == UiElement.Type.CLICKABLE && e(view)) {
                    return b(view);
                }
                if (type == UiElement.Type.SCROLLABLE && d(view, this.f82432a)) {
                    return b(view);
                }
            }
            return null;
        }
        return null;
    }
}
