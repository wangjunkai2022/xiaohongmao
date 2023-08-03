package com.google.android.play.core.internal;

import androidx.annotation.GuardedBy;
import java.util.HashSet;
import java.util.Set;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class g {
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    protected final Set f31721a = new HashSet();

    public final synchronized void a(com.google.android.play.core.listener.a aVar) {
        this.f31721a.add(aVar);
    }

    public final synchronized void b(com.google.android.play.core.listener.a aVar) {
        this.f31721a.remove(aVar);
    }

    public final synchronized void c(Object obj) {
        for (com.google.android.play.core.listener.a aVar : this.f31721a) {
            aVar.onStateUpdate(obj);
        }
    }
}
