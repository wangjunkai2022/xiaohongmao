package kotlin.reflect.jvm.internal.impl.storage;

import kotlin.jvm.functions.Function0;
import m8.g;

/* compiled from: storage.kt */
/* loaded from: classes4.dex */
public interface CacheWithNotNullValues<K, V> {
    @g
    V computeIfAbsent(K k10, @g Function0<? extends V> function0);
}
