package com.qennnsad.aknkaksd.util;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

/* compiled from: ScreenUtil.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u001c\u0010\u000f\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\r\u001a\u00020\fH\u0007J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0014\u0010\u0012\u001a\u00020\u0004*\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0004H\u0007J*\u0010\u0017\u001a\u00020\u000e*\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00132\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0013H\u0007J\n\u0010\u0018\u001a\u00020\u0004*\u00020\u0002¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/util/h1;", "", "Landroid/app/Activity;", "activity", "", "h", "Landroid/content/Context;", "context", "Landroid/util/DisplayMetrics;", "g", "Landroid/view/View;", "view", "", "visible", "", "l", "j", "dp", "f", "", "text", AnnotatedPrivateKey.LABEL, "toastMsg", "d", ContextChain.TAG_INFRA, "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h1 {
    @m8.g

    /* renamed from: a */
    public static final h1 f54734a = new h1();

    private h1() {
    }

    @JvmStatic
    @JvmOverloads
    public static final void b(@m8.g Context context, @m8.g String text) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        e(context, text, null, null, 6, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void c(@m8.g Context context, @m8.g String text, @m8.g String label) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(label, "label");
        e(context, text, label, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void d(@m8.g Context context, @m8.g String text, @m8.g String label, @m8.h String str) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(label, "label");
        ClipData newPlainText = ClipData.newPlainText(label, text);
        Object systemService = context.getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ((ClipboardManager) systemService).setPrimaryClip(newPlainText);
        if (str == null) {
            str = context.getString(R.string.edit_profile_clip_success);
            Intrinsics.checkNotNullExpressionValue(str, "getString(R.string.edit_profile_clip_success)");
        }
        com.qennnsad.aknkaksd.util.toast.a.n(str, false, 2, null);
    }

    public static /* synthetic */ void e(Context context, String str, String str2, String str3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            str2 = "text";
        }
        if ((i4 & 4) != 0) {
            str3 = null;
        }
        d(context, str, str2, str3);
    }

    @JvmStatic
    public static final int f(@m8.g Context context, int i4) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (int) (i4 * (context.getResources().getDisplayMetrics().densityDpi / ((float) a1.f54532a)));
    }

    @JvmStatic
    @m8.g
    public static final DisplayMetrics g(@m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) systemService).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    @JvmStatic
    public static final int h(@m8.g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    @JvmStatic
    public static final void j(@m8.g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Object systemService = activity.getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        if (activity.getCurrentFocus() != null) {
            View currentFocus = activity.getCurrentFocus();
            inputMethodManager.hideSoftInputFromWindow(currentFocus != null ? currentFocus.getWindowToken() : null, 0);
        }
    }

    @JvmStatic
    @JvmOverloads
    public static final void k(@m8.h View view) {
        m(view, false, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void l(@m8.h final View view, boolean z9) {
        if (view == null) {
            return;
        }
        Object systemService = view.getContext().getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        final InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        if (z9) {
            view.post(new Runnable() { // from class: com.qennnsad.aknkaksd.util.g1
                @Override // java.lang.Runnable
                public final void run() {
                    h1.n(view, inputMethodManager);
                }
            });
        } else {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static /* synthetic */ void m(View view, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = true;
        }
        l(view, z9);
    }

    public static final void n(View view, InputMethodManager manager) {
        Intrinsics.checkNotNullParameter(manager, "$manager");
        view.requestFocus();
        manager.showSoftInput(view, 1);
    }

    public final int i(@m8.g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Object systemService = activity.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        return ((WindowManager) systemService).getDefaultDisplay().getWidth();
    }
}
