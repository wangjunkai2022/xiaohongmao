package com.giphy.sdk.ui.themes;

import android.content.Context;
import android.content.res.Resources;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import i2.a;
import i2.b;
import i2.c;
import i2.d;
import i2.e;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: GPHTheme.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0000¢\u0006\u0004\b\u0005\u0010\u0006j\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/giphy/sdk/ui/themes/GPHTheme;", "", "Landroid/content/Context;", "context", "Li2/e;", "getThemeResources$giphy_ui_2_1_9_release", "(Landroid/content/Context;)Li2/e;", "getThemeResources", "", "name", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Automatic", "Light", "Dark", TypedValues.Custom.NAME, "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public enum GPHTheme {
    Automatic("automatic"),
    Light("light"),
    Dark("dark"),
    Custom("custom");

    GPHTheme(String str) {
    }

    @g
    public final e getThemeResources$giphy_ui_2_1_9_release(@h Context context) {
        Integer num;
        if (context != null) {
            Resources resources = context.getResources();
            Intrinsics.checkNotNullExpressionValue(resources, "context.resources");
            num = Integer.valueOf(resources.getConfiguration().uiMode & 48);
        } else {
            num = null;
        }
        int i4 = c.$EnumSwitchMapping$0[ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 == 4) {
                        return b.f69288n;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return a.f69274n;
            }
            return d.f69302n;
        } else if (num != null && num.intValue() == 16) {
            return d.f69302n;
        } else {
            if (num != null && num.intValue() == 32) {
                return a.f69274n;
            }
            if (num != null && num.intValue() == 0) {
                return d.f69302n;
            }
            return d.f69302n;
        }
    }
}
