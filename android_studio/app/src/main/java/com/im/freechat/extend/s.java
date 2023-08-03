package com.im.freechat.extend;

import android.content.res.Resources;
import android.util.TypedValue;
import kotlin.Metadata;

/* compiled from: ViewExtends.kt */
@Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u001a\n\u0010\u0001\u001a\u00020\u0000*\u00020\u0000¨\u0006\u0002"}, d2 = {"", "a", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class s {
    public static final int a(int i4) {
        return (int) TypedValue.applyDimension(1, i4, Resources.getSystem().getDisplayMetrics());
    }
}
