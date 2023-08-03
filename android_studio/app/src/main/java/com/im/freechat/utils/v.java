package com.im.freechat.utils;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.core.content.ContextCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: UiUtils.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u001c\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u0001\u001aE\u0010\r\u001a\u00020\u0004*\u00020\u00062\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\t\u001a\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\u00012\b\b\u0002\u0010\u000b\u001a\u00020\u00012\b\b\u0002\u0010\f\u001a\u00020\u0001¢\u0006\u0004\b\r\u0010\u000e\u001a<\u0010\u0010\u001a\u00020\u0004*\u00020\u00062\b\b\u0001\u0010\u000f\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\u00012\b\b\u0002\u0010\u000b\u001a\u00020\u00012\b\b\u0002\u0010\f\u001a\u00020\u0001\u001a\u0016\u0010\u0013\u001a\u00020\u0004*\u00020\u00062\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011¨\u0006\u0014"}, d2 = {"Landroid/view/View;", "", "visible", "keepInLayout", "", "h", "Landroid/widget/TextView;", "", "resId", com.google.android.exoplayer2.text.ttml.d.f25720l0, "top", com.google.android.exoplayer2.text.ttml.d.f25723n0, "bottom", "c", "(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZ)V", "color", "f", "", MessageBundle.TITLE_ENTRY, "a", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class v {
    public static final void a(@m8.g TextView textView, @m8.h String str) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        int identifier = textView.getResources().getIdentifier("bg_profile", "drawable", textView.getContext().getPackageName());
        if (identifier != 0) {
            textView.setBackgroundResource(identifier);
            return;
        }
        if (str == null) {
            str = "";
        }
        textView.setBackgroundTintList(ColorStateList.valueOf(com.im.freechat.extend.r.a(str)));
    }

    public static /* synthetic */ void b(TextView textView, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = null;
        }
        a(textView, str);
    }

    public static final void c(@m8.g TextView textView, @DrawableRes @m8.h Integer num, boolean z9, boolean z10, boolean z11, boolean z12) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        textView.setCompoundDrawablesWithIntrinsicBounds(e(z9, num), e(z10, num), e(z11, num), e(z12, num));
    }

    public static /* synthetic */ void d(TextView textView, Integer num, boolean z9, boolean z10, boolean z11, boolean z12, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            num = 0;
        }
        c(textView, num, (i4 & 2) != 0 ? false : z9, (i4 & 4) != 0 ? false : z10, (i4 & 8) != 0 ? false : z11, (i4 & 16) == 0 ? z12 : false);
    }

    private static final int e(boolean z9, Integer num) {
        if (!z9 || num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static final void f(@m8.g TextView textView, @ColorRes int i4, boolean z9, boolean z10, boolean z11, boolean z12) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        Intrinsics.checkNotNullExpressionValue(compoundDrawables, "compoundDrawables");
        int length = compoundDrawables.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            Drawable drawable = compoundDrawables[i10];
            int i12 = i11 + 1;
            if (drawable != null && ((i11 == 0 && z9) || ((i11 == 1 && z10) || ((i11 == 2 && z11) || (i11 == 3 && z12))))) {
                drawable.setColorFilter(new PorterDuffColorFilter(ContextCompat.getColor(textView.getContext(), i4), PorterDuff.Mode.SRC_IN));
            }
            i10++;
            i11 = i12;
        }
    }

    public static final void h(@m8.g View view, boolean z9, boolean z10) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        int i4 = z10 ? 4 : 8;
        if (z9) {
            i4 = 0;
        }
        view.setVisibility(i4);
    }

    public static /* synthetic */ void i(View view, boolean z9, boolean z10, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z10 = false;
        }
        h(view, z9, z10);
    }
}
