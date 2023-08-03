package com.google.android.exoplayer2.ui;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import com.google.android.exoplayer2.text.a;

/* compiled from: SubtitleViewUtils.java */
/* loaded from: classes2.dex */
final class t0 {
    private t0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean c(Object obj) {
        return !(obj instanceof com.google.android.exoplayer2.text.span.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(Object obj) {
        return (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan);
    }

    public static void e(a.c cVar) {
        cVar.b();
        if (cVar.k() instanceof Spanned) {
            if (!(cVar.k() instanceof Spannable)) {
                cVar.A(SpannableString.valueOf(cVar.k()));
            }
            g((Spannable) com.google.android.exoplayer2.util.a.g(cVar.k()), r0.f26920a);
        }
        f(cVar);
    }

    public static void f(a.c cVar) {
        cVar.C(-3.4028235E38f, Integer.MIN_VALUE);
        if (cVar.k() instanceof Spanned) {
            if (!(cVar.k() instanceof Spannable)) {
                cVar.A(SpannableString.valueOf(cVar.k()));
            }
            g((Spannable) com.google.android.exoplayer2.util.a.g(cVar.k()), s0.f26922a);
        }
    }

    private static void g(Spannable spannable, com.google.common.base.b0<Object> b0Var) {
        Object[] spans;
        for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
            if (b0Var.apply(obj)) {
                spannable.removeSpan(obj);
            }
        }
    }

    public static float h(int i4, float f10, int i10, int i11) {
        float f11;
        if (f10 == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i4 == 0) {
            f11 = i11;
        } else if (i4 != 1) {
            if (i4 != 2) {
                return -3.4028235E38f;
            }
            return f10;
        } else {
            f11 = i10;
        }
        return f10 * f11;
    }
}
