package com.google.android.exoplayer2.text.span;

import android.text.Spannable;

/* compiled from: SpanUtil.java */
/* loaded from: classes2.dex */
public final class d {
    private d() {
    }

    public static void a(Spannable spannable, Object obj, int i4, int i10, int i11) {
        Object[] spans;
        for (Object obj2 : spannable.getSpans(i4, i10, obj.getClass())) {
            if (spannable.getSpanStart(obj2) == i4 && spannable.getSpanEnd(obj2) == i10 && spannable.getSpanFlags(obj2) == i11) {
                spannable.removeSpan(obj2);
            }
        }
        spannable.setSpan(obj, i4, i10, i11);
    }
}
