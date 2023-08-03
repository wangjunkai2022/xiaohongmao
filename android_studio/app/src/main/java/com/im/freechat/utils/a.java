package com.im.freechat.utils;

import android.content.res.Resources;
import android.util.TypedValue;
import kotlin.Metadata;

/* compiled from: AudioView.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u001a\n\u0010\u0001\u001a\u00020\u0000*\u00020\u0000\u001a\n\u0010\u0003\u001a\u00020\u0000*\u00020\u0002\"\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"", "b", "", "c", "a", "I", "LINE_COUNT", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f43739a = 50;

    public static final float b(float f10) {
        return TypedValue.applyDimension(1, f10, Resources.getSystem().getDisplayMetrics());
    }

    public static final float c(int i4) {
        return b(i4);
    }
}
