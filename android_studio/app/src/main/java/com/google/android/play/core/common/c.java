package com.google.android.play.core.common;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map f31709a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f31710b = new AtomicBoolean(false);

    private final synchronized void b() {
        this.f31709a.put("assetOnlyUpdates", Boolean.FALSE);
    }

    public final synchronized boolean a(String str) {
        if (!this.f31710b.get()) {
            b();
        }
        Object obj = this.f31709a.get("assetOnlyUpdates");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }
}
