package kotlin.reflect.jvm.internal.impl.storage;

import io.sentry.protocol.v;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.utils.ExceptionUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.WrappedValues;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public class LockBasedStorageManager implements StorageManager {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final StorageManager NO_LOCKS;
    private static final String PACKAGE_NAME;
    private final String debugText;
    private final ExceptionHandlingStrategy exceptionHandlingStrategy;
    protected final SimpleLock lock;

    /* loaded from: classes4.dex */
    private static class CacheWithNotNullValuesBasedOnMemoizedFunction<K, V> extends CacheWithNullableValuesBasedOnMemoizedFunction<K, V> implements CacheWithNotNullValues<K, V> {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        private static /* synthetic */ void $$$reportNull$$$0(int i4) {
            String str = i4 != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i4 != 3 ? 3 : 2];
            if (i4 == 1) {
                objArr[0] = "map";
            } else if (i4 == 2) {
                objArr[0] = "computation";
            } else if (i4 != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            }
            if (i4 != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            } else {
                objArr[1] = "computeIfAbsent";
            }
            if (i4 == 2) {
                objArr[2] = "computeIfAbsent";
            } else if (i4 != 3) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            if (i4 == 3) {
                throw new IllegalStateException(format);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.CacheWithNullableValuesBasedOnMemoizedFunction, kotlin.reflect.jvm.internal.impl.storage.CacheWithNotNullValues
        @g
        public V computeIfAbsent(K k10, @g Function0<? extends V> function0) {
            if (function0 == null) {
                $$$reportNull$$$0(2);
            }
            V v9 = (V) super.computeIfAbsent(k10, function0);
            if (v9 == null) {
                $$$reportNull$$$0(3);
            }
            return v9;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private CacheWithNotNullValuesBasedOnMemoizedFunction(@g LockBasedStorageManager lockBasedStorageManager, @g ConcurrentMap<KeyWithComputation<K, V>, Object> concurrentMap) {
            super(concurrentMap);
            if (lockBasedStorageManager == null) {
                $$$reportNull$$$0(0);
            }
            if (concurrentMap == null) {
                $$$reportNull$$$0(1);
            }
        }
    }

    /* loaded from: classes4.dex */
    private static class CacheWithNullableValuesBasedOnMemoizedFunction<K, V> extends MapBasedMemoizedFunction<KeyWithComputation<K, V>, V> implements CacheWithNullableValues<K, V> {
        private static /* synthetic */ void $$$reportNull$$$0(int i4) {
            Object[] objArr = new Object[3];
            if (i4 == 1) {
                objArr[0] = "map";
            } else if (i4 != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "computation";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction";
            if (i4 != 2) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "computeIfAbsent";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @h
        public V computeIfAbsent(K k10, @g Function0<? extends V> function0) {
            if (function0 == null) {
                $$$reportNull$$$0(2);
            }
            return invoke(new KeyWithComputation(k10, function0));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private CacheWithNullableValuesBasedOnMemoizedFunction(@g LockBasedStorageManager lockBasedStorageManager, @g ConcurrentMap<KeyWithComputation<K, V>, Object> concurrentMap) {
            super(lockBasedStorageManager, concurrentMap, new Function1<KeyWithComputation<K, V>, V>() { // from class: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.CacheWithNullableValuesBasedOnMemoizedFunction.1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return invoke((KeyWithComputation<K, Object>) obj);
                }

                public V invoke(KeyWithComputation<K, V> keyWithComputation) {
                    return (V) ((KeyWithComputation) keyWithComputation).computation.invoke();
                }
            });
            if (lockBasedStorageManager == null) {
                $$$reportNull$$$0(0);
            }
            if (concurrentMap == null) {
                $$$reportNull$$$0(1);
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface ExceptionHandlingStrategy {
        public static final ExceptionHandlingStrategy THROW = new ExceptionHandlingStrategy() { // from class: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.ExceptionHandlingStrategy.1
            private static /* synthetic */ void $$$reportNull$$$0(int i4) {
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "throwable", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy$1", "handleException"));
            }

            @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.ExceptionHandlingStrategy
            @g
            public RuntimeException handleException(@g Throwable th) {
                if (th == null) {
                    $$$reportNull$$$0(0);
                }
                throw ExceptionUtilsKt.rethrow(th);
            }
        };

        @g
        RuntimeException handleException(@g Throwable th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class KeyWithComputation<K, V> {
        private final Function0<? extends V> computation;
        private final K key;

        public KeyWithComputation(K k10, Function0<? extends V> function0) {
            this.key = k10;
            this.computation = function0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.key.equals(((KeyWithComputation) obj).key);
        }

        public int hashCode() {
            return this.key.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class LockBasedLazyValue<T> implements NullableLazyValue<T> {
        private final Function0<? extends T> computable;
        private final LockBasedStorageManager storageManager;
        @h
        private volatile Object value;

        private static /* synthetic */ void $$$reportNull$$$0(int i4) {
            String str = (i4 == 2 || i4 == 3) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i4 == 2 || i4 == 3) ? 2 : 3];
            if (i4 == 1) {
                objArr[0] = "computable";
            } else if (i4 == 2 || i4 == 3) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[0] = "storageManager";
            }
            if (i4 == 2) {
                objArr[1] = "recursionDetected";
            } else if (i4 != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[1] = "renderDebugInformation";
            }
            if (i4 != 2 && i4 != 3) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            if (i4 != 2 && i4 != 3) {
                throw new IllegalArgumentException(format);
            }
            throw new IllegalStateException(format);
        }

        public LockBasedLazyValue(@g LockBasedStorageManager lockBasedStorageManager, @g Function0<? extends T> function0) {
            if (lockBasedStorageManager == null) {
                $$$reportNull$$$0(0);
            }
            if (function0 == null) {
                $$$reportNull$$$0(1);
            }
            this.value = NotValue.NOT_COMPUTED;
            this.storageManager = lockBasedStorageManager;
            this.computable = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public T invoke() {
            T invoke;
            Object obj = this.value;
            if (obj instanceof NotValue) {
                this.storageManager.lock.lock();
                try {
                    Object obj2 = this.value;
                    if (obj2 instanceof NotValue) {
                        NotValue notValue = NotValue.COMPUTING;
                        if (obj2 == notValue) {
                            this.value = NotValue.RECURSION_WAS_DETECTED;
                            RecursionDetectedResult<T> recursionDetected = recursionDetected(true);
                            if (!recursionDetected.isFallThrough()) {
                                invoke = recursionDetected.getValue();
                            }
                        }
                        if (obj2 == NotValue.RECURSION_WAS_DETECTED) {
                            RecursionDetectedResult<T> recursionDetected2 = recursionDetected(false);
                            if (!recursionDetected2.isFallThrough()) {
                                invoke = recursionDetected2.getValue();
                            }
                        }
                        this.value = notValue;
                        invoke = this.computable.invoke();
                        postCompute(invoke);
                        this.value = invoke;
                    } else {
                        invoke = (T) WrappedValues.unescapeThrowable(obj2);
                    }
                    return invoke;
                } finally {
                    this.storageManager.lock.unlock();
                }
            }
            return (T) WrappedValues.unescapeThrowable(obj);
        }

        public boolean isComputed() {
            return (this.value == NotValue.NOT_COMPUTED || this.value == NotValue.COMPUTING) ? false : true;
        }

        protected void postCompute(T t9) {
        }

        @g
        protected RecursionDetectedResult<T> recursionDetected(boolean z9) {
            RecursionDetectedResult<T> recursionDetectedDefault = this.storageManager.recursionDetectedDefault("in a lazy value", null);
            if (recursionDetectedDefault == null) {
                $$$reportNull$$$0(2);
            }
            return recursionDetectedDefault;
        }
    }

    /* loaded from: classes4.dex */
    private static abstract class LockBasedLazyValueWithPostCompute<T> extends LockBasedLazyValue<T> {
        @h
        private volatile SingleThreadValue<T> valuePostCompute;

        private static /* synthetic */ void $$$reportNull$$$0(int i4) {
            Object[] objArr = new Object[3];
            if (i4 != 1) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "computable";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute";
            objArr[2] = "<init>";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LockBasedLazyValueWithPostCompute(@g LockBasedStorageManager lockBasedStorageManager, @g Function0<? extends T> function0) {
            super(lockBasedStorageManager, function0);
            if (lockBasedStorageManager == null) {
                $$$reportNull$$$0(0);
            }
            if (function0 == null) {
                $$$reportNull$$$0(1);
            }
            this.valuePostCompute = null;
        }

        protected abstract void doPostCompute(T t9);

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue, kotlin.jvm.functions.Function0
        public T invoke() {
            SingleThreadValue<T> singleThreadValue = this.valuePostCompute;
            if (singleThreadValue != null && singleThreadValue.hasValue()) {
                return singleThreadValue.getValue();
            }
            return (T) super.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue
        protected final void postCompute(T t9) {
            this.valuePostCompute = new SingleThreadValue<>(t9);
            try {
                doPostCompute(t9);
            } finally {
                this.valuePostCompute = null;
            }
        }
    }

    /* loaded from: classes4.dex */
    private static class LockBasedNotNullLazyValue<T> extends LockBasedLazyValue<T> implements NotNullLazyValue<T> {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        private static /* synthetic */ void $$$reportNull$$$0(int i4) {
            String str = i4 != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i4 != 2 ? 3 : 2];
            if (i4 == 1) {
                objArr[0] = "computable";
            } else if (i4 != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            }
            if (i4 != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            } else {
                objArr[1] = "invoke";
            }
            if (i4 != 2) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            if (i4 == 2) {
                throw new IllegalStateException(format);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LockBasedNotNullLazyValue(@g LockBasedStorageManager lockBasedStorageManager, @g Function0<? extends T> function0) {
            super(lockBasedStorageManager, function0);
            if (lockBasedStorageManager == null) {
                $$$reportNull$$$0(0);
            }
            if (function0 == null) {
                $$$reportNull$$$0(1);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue, kotlin.jvm.functions.Function0
        @g
        public T invoke() {
            T t9 = (T) super.invoke();
            if (t9 == null) {
                $$$reportNull$$$0(2);
            }
            return t9;
        }
    }

    /* loaded from: classes4.dex */
    private static abstract class LockBasedNotNullLazyValueWithPostCompute<T> extends LockBasedLazyValueWithPostCompute<T> implements NotNullLazyValue<T> {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        private static /* synthetic */ void $$$reportNull$$$0(int i4) {
            String str = i4 != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i4 != 2 ? 3 : 2];
            if (i4 == 1) {
                objArr[0] = "computable";
            } else if (i4 != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            }
            if (i4 != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            } else {
                objArr[1] = "invoke";
            }
            if (i4 != 2) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            if (i4 == 2) {
                throw new IllegalStateException(format);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LockBasedNotNullLazyValueWithPostCompute(@g LockBasedStorageManager lockBasedStorageManager, @g Function0<? extends T> function0) {
            super(lockBasedStorageManager, function0);
            if (lockBasedStorageManager == null) {
                $$$reportNull$$$0(0);
            }
            if (function0 == null) {
                $$$reportNull$$$0(1);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValueWithPostCompute, kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue, kotlin.jvm.functions.Function0
        @g
        public T invoke() {
            T t9 = (T) super.invoke();
            if (t9 == null) {
                $$$reportNull$$$0(2);
            }
            return t9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class MapBasedMemoizedFunction<K, V> implements MemoizedFunctionToNullable<K, V> {
        private final ConcurrentMap<K, Object> cache;
        private final Function1<? super K, ? extends V> compute;
        private final LockBasedStorageManager storageManager;

        private static /* synthetic */ void $$$reportNull$$$0(int i4) {
            String str = (i4 == 3 || i4 == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i4 == 3 || i4 == 4) ? 2 : 3];
            if (i4 == 1) {
                objArr[0] = "map";
            } else if (i4 == 2) {
                objArr[0] = "compute";
            } else if (i4 == 3 || i4 == 4) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[0] = "storageManager";
            }
            if (i4 == 3) {
                objArr[1] = "recursionDetected";
            } else if (i4 != 4) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[1] = "raceCondition";
            }
            if (i4 != 3 && i4 != 4) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            if (i4 != 3 && i4 != 4) {
                throw new IllegalArgumentException(format);
            }
            throw new IllegalStateException(format);
        }

        public MapBasedMemoizedFunction(@g LockBasedStorageManager lockBasedStorageManager, @g ConcurrentMap<K, Object> concurrentMap, @g Function1<? super K, ? extends V> function1) {
            if (lockBasedStorageManager == null) {
                $$$reportNull$$$0(0);
            }
            if (concurrentMap == null) {
                $$$reportNull$$$0(1);
            }
            if (function1 == null) {
                $$$reportNull$$$0(2);
            }
            this.storageManager = lockBasedStorageManager;
            this.cache = concurrentMap;
            this.compute = function1;
        }

        @g
        private AssertionError raceCondition(K k10, Object obj) {
            AssertionError assertionError = (AssertionError) LockBasedStorageManager.sanitizeStackTrace(new AssertionError("Race condition detected on input " + k10 + ". Old value is " + obj + " under " + this.storageManager));
            if (assertionError == null) {
                $$$reportNull$$$0(4);
            }
            return assertionError;
        }

        protected LockBasedStorageManager getStorageManager() {
            return this.storageManager;
        }

        @Override // kotlin.jvm.functions.Function1
        @h
        public V invoke(K k10) {
            V v9;
            Object obj = this.cache.get(k10);
            if (obj == null || obj == NotValue.COMPUTING) {
                this.storageManager.lock.lock();
                try {
                    Object obj2 = this.cache.get(k10);
                    NotValue notValue = NotValue.COMPUTING;
                    if (obj2 == notValue) {
                        obj2 = NotValue.RECURSION_WAS_DETECTED;
                        RecursionDetectedResult<V> recursionDetected = recursionDetected(k10, true);
                        if (!recursionDetected.isFallThrough()) {
                            v9 = recursionDetected.getValue();
                            return v9;
                        }
                    }
                    if (obj2 == NotValue.RECURSION_WAS_DETECTED) {
                        RecursionDetectedResult<V> recursionDetected2 = recursionDetected(k10, false);
                        if (!recursionDetected2.isFallThrough()) {
                            v9 = recursionDetected2.getValue();
                            return v9;
                        }
                    }
                    if (obj2 != null) {
                        v9 = (V) WrappedValues.unescapeExceptionOrNull(obj2);
                        return v9;
                    }
                    this.cache.put(k10, notValue);
                    V invoke = this.compute.invoke(k10);
                    Object put = this.cache.put(k10, WrappedValues.escapeNull(invoke));
                    if (put == notValue) {
                        return invoke;
                    }
                    throw raceCondition(k10, put);
                } finally {
                    this.storageManager.lock.unlock();
                }
            }
            return (V) WrappedValues.unescapeExceptionOrNull(obj);
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable
        public boolean isComputed(K k10) {
            Object obj = this.cache.get(k10);
            return (obj == null || obj == NotValue.COMPUTING) ? false : true;
        }

        @g
        protected RecursionDetectedResult<V> recursionDetected(K k10, boolean z9) {
            RecursionDetectedResult<V> recursionDetectedDefault = this.storageManager.recursionDetectedDefault("", k10);
            if (recursionDetectedDefault == null) {
                $$$reportNull$$$0(3);
            }
            return recursionDetectedDefault;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class MapBasedMemoizedFunctionToNotNull<K, V> extends MapBasedMemoizedFunction<K, V> implements MemoizedFunctionToNotNull<K, V> {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        private static /* synthetic */ void $$$reportNull$$$0(int i4) {
            String str = i4 != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i4 != 3 ? 3 : 2];
            if (i4 == 1) {
                objArr[0] = "map";
            } else if (i4 == 2) {
                objArr[0] = "compute";
            } else if (i4 != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            }
            if (i4 != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            } else {
                objArr[1] = "invoke";
            }
            if (i4 != 3) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            if (i4 == 3) {
                throw new IllegalStateException(format);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MapBasedMemoizedFunctionToNotNull(@g LockBasedStorageManager lockBasedStorageManager, @g ConcurrentMap<K, Object> concurrentMap, @g Function1<? super K, ? extends V> function1) {
            super(lockBasedStorageManager, concurrentMap, function1);
            if (lockBasedStorageManager == null) {
                $$$reportNull$$$0(0);
            }
            if (concurrentMap == null) {
                $$$reportNull$$$0(1);
            }
            if (function1 == null) {
                $$$reportNull$$$0(2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.MapBasedMemoizedFunction, kotlin.jvm.functions.Function1
        @g
        public V invoke(K k10) {
            V v9 = (V) super.invoke(k10);
            if (v9 == null) {
                $$$reportNull$$$0(3);
            }
            return v9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public enum NotValue {
        NOT_COMPUTED,
        COMPUTING,
        RECURSION_WAS_DETECTED
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class RecursionDetectedResult<T> {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final boolean fallThrough;
        private final T value;

        private RecursionDetectedResult(T t9, boolean z9) {
            this.value = t9;
            this.fallThrough = z9;
        }

        @g
        public static <T> RecursionDetectedResult<T> fallThrough() {
            return new RecursionDetectedResult<>(null, true);
        }

        @g
        public static <T> RecursionDetectedResult<T> value(T t9) {
            return new RecursionDetectedResult<>(t9, false);
        }

        public T getValue() {
            return this.value;
        }

        public boolean isFallThrough() {
            return this.fallThrough;
        }

        public String toString() {
            return isFallThrough() ? "FALL_THROUGH" : String.valueOf(this.value);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static /* synthetic */ void $$$reportNull$$$0(int r13) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.$$$reportNull$$$0(int):void");
    }

    static {
        String substringBeforeLast;
        substringBeforeLast = StringsKt__StringsKt.substringBeforeLast(LockBasedStorageManager.class.getCanonicalName(), ".", "");
        PACKAGE_NAME = substringBeforeLast;
        NO_LOCKS = new LockBasedStorageManager("NO_LOCKS", ExceptionHandlingStrategy.THROW, EmptySimpleLock.INSTANCE) { // from class: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.1
            private static /* synthetic */ void $$$reportNull$$$0(int i4) {
                String str = i4 != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
                Object[] objArr = new Object[i4 != 1 ? 3 : 2];
                if (i4 != 1) {
                    objArr[0] = v.b.f83881a;
                } else {
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1";
                }
                if (i4 != 1) {
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1";
                } else {
                    objArr[1] = "recursionDetectedDefault";
                }
                if (i4 != 1) {
                    objArr[2] = "recursionDetectedDefault";
                }
                String format = String.format(str, objArr);
                if (i4 == 1) {
                    throw new IllegalStateException(format);
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager
            @g
            protected <K, V> RecursionDetectedResult<V> recursionDetectedDefault(@g String str, K k10) {
                if (str == null) {
                    $$$reportNull$$$0(0);
                }
                RecursionDetectedResult<V> fallThrough = RecursionDetectedResult.fallThrough();
                if (fallThrough == null) {
                    $$$reportNull$$$0(1);
                }
                return fallThrough;
            }
        };
    }

    static /* synthetic */ ExceptionHandlingStrategy access$100(LockBasedStorageManager lockBasedStorageManager) {
        return lockBasedStorageManager.exceptionHandlingStrategy;
    }

    @g
    private static <K> ConcurrentMap<K, Object> createConcurrentHashMap() {
        return new ConcurrentHashMap(3, 1.0f, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @g
    public static <T extends Throwable> T sanitizeStackTrace(@g T t9) {
        if (t9 == null) {
            $$$reportNull$$$0(36);
        }
        StackTraceElement[] stackTrace = t9.getStackTrace();
        int length = stackTrace.length;
        int i4 = -1;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            } else if (!stackTrace[i10].getClassName().startsWith(PACKAGE_NAME)) {
                i4 = i10;
                break;
            } else {
                i10++;
            }
        }
        List subList = Arrays.asList(stackTrace).subList(i4, length);
        t9.setStackTrace((StackTraceElement[]) subList.toArray(new StackTraceElement[subList.size()]));
        return t9;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    public <T> T compute(@g Function0<? extends T> function0) {
        if (function0 == null) {
            $$$reportNull$$$0(34);
        }
        this.lock.lock();
        try {
            return function0.invoke();
        } finally {
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    @g
    public <K, V> CacheWithNotNullValues<K, V> createCacheWithNotNullValues() {
        return new CacheWithNotNullValuesBasedOnMemoizedFunction(createConcurrentHashMap());
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    @g
    public <K, V> CacheWithNullableValues<K, V> createCacheWithNullableValues() {
        return new CacheWithNullableValuesBasedOnMemoizedFunction(createConcurrentHashMap());
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    @g
    public <T> NotNullLazyValue<T> createLazyValue(@g Function0<? extends T> function0) {
        if (function0 == null) {
            $$$reportNull$$$0(23);
        }
        return new LockBasedNotNullLazyValue(this, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    @g
    public <T> NotNullLazyValue<T> createLazyValueWithPostCompute(@g Function0<? extends T> function0, final Function1<? super Boolean, ? extends T> function1, @g final Function1<? super T, Unit> function12) {
        if (function0 == null) {
            $$$reportNull$$$0(28);
        }
        if (function12 == null) {
            $$$reportNull$$$0(29);
        }
        return new LockBasedNotNullLazyValueWithPostCompute<T>(this, function0) { // from class: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.5
            private static /* synthetic */ void $$$reportNull$$$0(int i4) {
                String str = i4 != 2 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                Object[] objArr = new Object[i4 != 2 ? 2 : 3];
                if (i4 != 2) {
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
                } else {
                    objArr[0] = "value";
                }
                if (i4 != 2) {
                    objArr[1] = "recursionDetected";
                } else {
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
                }
                if (i4 == 2) {
                    objArr[2] = "doPostCompute";
                }
                String format = String.format(str, objArr);
                if (i4 == 2) {
                    throw new IllegalArgumentException(format);
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValueWithPostCompute
            protected void doPostCompute(@g T t9) {
                if (t9 == 0) {
                    $$$reportNull$$$0(2);
                }
                function12.invoke(t9);
            }

            @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue
            @g
            protected RecursionDetectedResult<T> recursionDetected(boolean z9) {
                Function1 function13 = function1;
                if (function13 == null) {
                    RecursionDetectedResult<T> recursionDetected = super.recursionDetected(z9);
                    if (recursionDetected == 0) {
                        $$$reportNull$$$0(0);
                    }
                    return recursionDetected;
                }
                RecursionDetectedResult<T> value = RecursionDetectedResult.value(function13.invoke(Boolean.valueOf(z9)));
                if (value == 0) {
                    $$$reportNull$$$0(1);
                }
                return value;
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    @g
    public <K, V> MemoizedFunctionToNotNull<K, V> createMemoizedFunction(@g Function1<? super K, ? extends V> function1) {
        if (function1 == null) {
            $$$reportNull$$$0(9);
        }
        MemoizedFunctionToNotNull<K, V> createMemoizedFunction = createMemoizedFunction(function1, createConcurrentHashMap());
        if (createMemoizedFunction == null) {
            $$$reportNull$$$0(10);
        }
        return createMemoizedFunction;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    @g
    public <K, V> MemoizedFunctionToNullable<K, V> createMemoizedFunctionWithNullableValues(@g Function1<? super K, ? extends V> function1) {
        if (function1 == null) {
            $$$reportNull$$$0(19);
        }
        MemoizedFunctionToNullable<K, V> createMemoizedFunctionWithNullableValues = createMemoizedFunctionWithNullableValues(function1, createConcurrentHashMap());
        if (createMemoizedFunctionWithNullableValues == null) {
            $$$reportNull$$$0(20);
        }
        return createMemoizedFunctionWithNullableValues;
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    @g
    public <T> NullableLazyValue<T> createNullableLazyValue(@g Function0<? extends T> function0) {
        if (function0 == null) {
            $$$reportNull$$$0(30);
        }
        return new LockBasedLazyValue(this, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.storage.StorageManager
    @g
    public <T> NotNullLazyValue<T> createRecursionTolerantLazyValue(@g Function0<? extends T> function0, @g final T t9) {
        if (function0 == null) {
            $$$reportNull$$$0(26);
        }
        if (t9 == null) {
            $$$reportNull$$$0(27);
        }
        return new LockBasedNotNullLazyValue<T>(this, function0) { // from class: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.4
            private static /* synthetic */ void $$$reportNull$$$0(int i4) {
                throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$4", "recursionDetected"));
            }

            @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue
            @g
            protected RecursionDetectedResult<T> recursionDetected(boolean z9) {
                RecursionDetectedResult<T> value = RecursionDetectedResult.value(t9);
                if (value == 0) {
                    $$$reportNull$$$0(0);
                }
                return value;
            }
        };
    }

    @g
    protected <K, V> RecursionDetectedResult<V> recursionDetectedDefault(@g String str, K k10) {
        String str2;
        if (str == null) {
            $$$reportNull$$$0(35);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Recursion detected ");
        sb.append(str);
        if (k10 == null) {
            str2 = "";
        } else {
            str2 = "on input: " + k10;
        }
        sb.append(str2);
        sb.append(" under ");
        sb.append(this);
        throw ((AssertionError) sanitizeStackTrace(new AssertionError(sb.toString())));
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + " (" + this.debugText + ")";
    }

    private LockBasedStorageManager(@g String str, @g ExceptionHandlingStrategy exceptionHandlingStrategy, @g SimpleLock simpleLock) {
        if (str == null) {
            $$$reportNull$$$0(4);
        }
        if (exceptionHandlingStrategy == null) {
            $$$reportNull$$$0(5);
        }
        if (simpleLock == null) {
            $$$reportNull$$$0(6);
        }
        this.lock = simpleLock;
        this.exceptionHandlingStrategy = exceptionHandlingStrategy;
        this.debugText = str;
    }

    @g
    public <K, V> MemoizedFunctionToNotNull<K, V> createMemoizedFunction(@g Function1<? super K, ? extends V> function1, @g ConcurrentMap<K, Object> concurrentMap) {
        if (function1 == null) {
            $$$reportNull$$$0(14);
        }
        if (concurrentMap == null) {
            $$$reportNull$$$0(15);
        }
        return new MapBasedMemoizedFunctionToNotNull(this, concurrentMap, function1);
    }

    @g
    public <K, V> MemoizedFunctionToNullable<K, V> createMemoizedFunctionWithNullableValues(@g Function1<? super K, ? extends V> function1, @g ConcurrentMap<K, Object> concurrentMap) {
        if (function1 == null) {
            $$$reportNull$$$0(21);
        }
        if (concurrentMap == null) {
            $$$reportNull$$$0(22);
        }
        return new MapBasedMemoizedFunction(this, concurrentMap, function1);
    }

    public LockBasedStorageManager(String str) {
        this(str, (Runnable) null, (Function1<InterruptedException, Unit>) null);
    }

    public LockBasedStorageManager(String str, @h Runnable runnable, @h Function1<InterruptedException, Unit> function1) {
        this(str, ExceptionHandlingStrategy.THROW, SimpleLock.Companion.simpleLock(runnable, function1));
    }
}
