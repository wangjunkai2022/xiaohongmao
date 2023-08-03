package com.google.android.gms.common.providers;

import com.google.android.gms.common.providers.a;
import com.google.android.gms.internal.common.q;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class b implements a.InterfaceC0198a {
    @Override // com.google.android.gms.common.providers.a.InterfaceC0198a
    public final ScheduledExecutorService a() {
        q.a();
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
    }
}
