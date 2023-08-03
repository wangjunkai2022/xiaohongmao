package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class r3 {

    /* renamed from: d  reason: collision with root package name */
    private int f28873d;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayMap<c<?>, String> f28871b = new ArrayMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.gms.tasks.l<Map<c<?>, String>> f28872c = new com.google.android.gms.tasks.l<>();

    /* renamed from: e  reason: collision with root package name */
    private boolean f28874e = false;

    /* renamed from: a  reason: collision with root package name */
    private final ArrayMap<c<?>, ConnectionResult> f28870a = new ArrayMap<>();

    public r3(Iterable<? extends com.google.android.gms.common.api.j<?>> iterable) {
        for (com.google.android.gms.common.api.j<?> jVar : iterable) {
            this.f28870a.put(jVar.b(), null);
        }
        this.f28873d = this.f28870a.keySet().size();
    }

    public final com.google.android.gms.tasks.k<Map<c<?>, String>> a() {
        return this.f28872c.a();
    }

    public final Set<c<?>> b() {
        return this.f28870a.keySet();
    }

    public final void c(c<?> cVar, ConnectionResult connectionResult, @Nullable String str) {
        this.f28870a.put(cVar, connectionResult);
        this.f28871b.put(cVar, str);
        this.f28873d--;
        if (!connectionResult.isSuccess()) {
            this.f28874e = true;
        }
        if (this.f28873d == 0) {
            if (this.f28874e) {
                this.f28872c.b(new AvailabilityException(this.f28870a));
                return;
            }
            this.f28872c.c(this.f28871b);
        }
    }
}
