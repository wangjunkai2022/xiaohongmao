package com.bumptech.glide.load.engine;

import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Jobs.java */
/* loaded from: classes.dex */
final class r {

    /* renamed from: a  reason: collision with root package name */
    private final Map<com.bumptech.glide.load.c, l<?>> f8973a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<com.bumptech.glide.load.c, l<?>> f8974b = new HashMap();

    private Map<com.bumptech.glide.load.c, l<?>> c(boolean z9) {
        return z9 ? this.f8974b : this.f8973a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l<?> a(com.bumptech.glide.load.c cVar, boolean z9) {
        return c(z9).get(cVar);
    }

    @VisibleForTesting
    Map<com.bumptech.glide.load.c, l<?>> b() {
        return Collections.unmodifiableMap(this.f8973a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(com.bumptech.glide.load.c cVar, l<?> lVar) {
        c(lVar.q()).put(cVar, lVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(com.bumptech.glide.load.c cVar, l<?> lVar) {
        Map<com.bumptech.glide.load.c, l<?>> c10 = c(lVar.q());
        if (lVar.equals(c10.get(cVar))) {
            c10.remove(cVar);
        }
    }
}
