package com.google.android.play.core.splitinstall.testing;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class u {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract u a(@g3.a int i4);

    abstract u b(Map map);

    abstract v c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Map d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final v e() {
        b(Collections.unmodifiableMap(d()));
        return c();
    }
}
