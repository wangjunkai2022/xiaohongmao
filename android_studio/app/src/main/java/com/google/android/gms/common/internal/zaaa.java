package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import t2.a;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class zaaa extends Button {
    public zaaa(Context context, @Nullable AttributeSet attributeSet) {
        super(context, null, 16842824);
    }

    private static final int b(int i4, int i10, int i11, int i12) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 == 2) {
                    return i12;
                }
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unknown color scheme: ");
                sb.append(i4);
                throw new IllegalStateException(sb.toString());
            }
            return i11;
        }
        return i10;
    }

    public final void a(Resources resources, int i4, int i10) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i11 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i11);
        setMinWidth(i11);
        int i12 = a.c.f93780b;
        int i13 = a.c.f93785g;
        int b10 = b(i10, i12, i13, i13);
        int i14 = a.c.f93789k;
        int i15 = a.c.f93794p;
        int b11 = b(i10, i14, i15, i15);
        if (i4 == 0 || i4 == 1) {
            b10 = b11;
        } else if (i4 != 2) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Unknown button size: ");
            sb.append(i4);
            throw new IllegalStateException(sb.toString());
        }
        Drawable wrap = DrawableCompat.wrap(resources.getDrawable(b10));
        DrawableCompat.setTintList(wrap, resources.getColorStateList(a.b.f93778k));
        DrawableCompat.setTintMode(wrap, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(wrap);
        int i16 = a.b.f93768a;
        int i17 = a.b.f93773f;
        setTextColor((ColorStateList) u.k(resources.getColorStateList(b(i10, i16, i17, i17))));
        if (i4 == 0) {
            setText(resources.getString(a.e.f93824p));
        } else if (i4 == 1) {
            setText(resources.getString(a.e.f93825q));
        } else if (i4 == 2) {
            setText((CharSequence) null);
        } else {
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Unknown button size: ");
            sb2.append(i4);
            throw new IllegalStateException(sb2.toString());
        }
        setTransformationMethod(null);
        if (y2.l.k(getContext())) {
            setGravity(19);
        }
    }
}
