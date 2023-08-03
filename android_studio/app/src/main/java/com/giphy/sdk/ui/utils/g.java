package com.giphy.sdk.ui.utils;

import android.content.res.Resources;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IntExtensions.kt */
@Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0006\"\u0015\u0010\u0003\u001a\u00020\u0000*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\u0001\u0010\u0002\"\u0015\u0010\u0005\u001a\u00020\u0000*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0002¨\u0006\u0006"}, d2 = {"", "a", "(I)I", "dp", "b", "px", "giphy-ui-2.1.9_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class g {
    public static final int a(int i4) {
        Resources system = Resources.getSystem();
        Intrinsics.checkNotNullExpressionValue(system, "Resources.getSystem()");
        return (int) (i4 / system.getDisplayMetrics().density);
    }

    public static final int b(int i4) {
        Resources system = Resources.getSystem();
        Intrinsics.checkNotNullExpressionValue(system, "Resources.getSystem()");
        return (int) (i4 * system.getDisplayMetrics().density);
    }
}
