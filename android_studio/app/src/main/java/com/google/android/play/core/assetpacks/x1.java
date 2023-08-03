package com.google.android.play.core.assetpacks;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class x1 {

    /* renamed from: a  reason: collision with root package name */
    private final Map f31661a = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized double a(String str) {
        Double d4 = (Double) this.f31661a.get(str);
        if (d4 == null) {
            return 0.0d;
        }
        return d4.doubleValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized double b(String str, q2 q2Var) {
        double d4;
        d4 = (((n1) q2Var).f31477h + 1.0d) / ((n1) q2Var).f31478i;
        this.f31661a.put(str, Double.valueOf(d4));
        return d4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void c(String str) {
        this.f31661a.put(str, Double.valueOf(0.0d));
    }
}
