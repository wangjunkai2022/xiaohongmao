package kotlin.reflect.jvm.internal.impl.storage;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import m8.g;
import m8.h;

/* compiled from: StorageManager.kt */
/* loaded from: classes4.dex */
public interface StorageManager {
    <T> T compute(@g Function0<? extends T> function0);

    @g
    <K, V> CacheWithNotNullValues<K, V> createCacheWithNotNullValues();

    @g
    <K, V> CacheWithNullableValues<K, V> createCacheWithNullableValues();

    @g
    <T> NotNullLazyValue<T> createLazyValue(@g Function0<? extends T> function0);

    @g
    <T> NotNullLazyValue<T> createLazyValueWithPostCompute(@g Function0<? extends T> function0, @h Function1<? super Boolean, ? extends T> function1, @g Function1<? super T, Unit> function12);

    @g
    <K, V> MemoizedFunctionToNotNull<K, V> createMemoizedFunction(@g Function1<? super K, ? extends V> function1);

    @g
    <K, V> MemoizedFunctionToNullable<K, V> createMemoizedFunctionWithNullableValues(@g Function1<? super K, ? extends V> function1);

    @g
    <T> NullableLazyValue<T> createNullableLazyValue(@g Function0<? extends T> function0);

    @g
    <T> NotNullLazyValue<T> createRecursionTolerantLazyValue(@g Function0<? extends T> function0, @g T t9);
}
