package kotlin.reflect.jvm.internal.impl.util;

import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import m8.g;

/* compiled from: ArrayMapOwner.kt */
/* loaded from: classes4.dex */
public abstract class TypeRegistry<K, V> {
    @g
    private final ConcurrentHashMap<KClass<? extends K>, Integer> idPerType = new ConcurrentHashMap<>();
    @g
    private final AtomicInteger idCounter = new AtomicInteger(0);

    public abstract <T extends K> int customComputeIfAbsent(@g ConcurrentHashMap<KClass<? extends K>, Integer> concurrentHashMap, @g KClass<T> kClass, @g Function1<? super KClass<? extends K>, Integer> function1);

    /* JADX WARN: Multi-variable type inference failed */
    @g
    public final <T extends V, KK extends K> NullableArrayMapAccessor<K, V, T> generateNullableAccessor(@g KClass<KK> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        return new NullableArrayMapAccessor<>(kClass, getId(kClass));
    }

    public final <T extends K> int getId(@g KClass<T> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        return customComputeIfAbsent(this.idPerType, kClass, new TypeRegistry$getId$1(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final Collection<Integer> getIndices() {
        Collection<Integer> values = this.idPerType.values();
        Intrinsics.checkNotNullExpressionValue(values, "idPerType.values");
        return values;
    }
}
