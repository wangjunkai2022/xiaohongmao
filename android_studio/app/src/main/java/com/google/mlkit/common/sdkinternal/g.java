package com.google.mlkit.common.sdkinternal;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public abstract class g<K, V> {
    @GuardedBy("instances")

    /* renamed from: a  reason: collision with root package name */
    private final Map f35795a = new HashMap();

    @NonNull
    @u2.a
    protected abstract V a(@NonNull K k10);

    @NonNull
    @u2.a
    public V b(@NonNull K k10) {
        synchronized (this.f35795a) {
            if (this.f35795a.containsKey(k10)) {
                return (V) this.f35795a.get(k10);
            }
            V a10 = a(k10);
            this.f35795a.put(k10, a10);
            return a10;
        }
    }
}
