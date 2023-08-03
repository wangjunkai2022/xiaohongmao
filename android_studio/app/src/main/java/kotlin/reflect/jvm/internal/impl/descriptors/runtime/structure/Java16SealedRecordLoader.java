package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaClass.kt */
/* loaded from: classes4.dex */
final class Java16SealedRecordLoader {
    @g
    public static final Java16SealedRecordLoader INSTANCE = new Java16SealedRecordLoader();
    @h
    private static Cache _cache;

    /* compiled from: ReflectJavaClass.kt */
    /* loaded from: classes4.dex */
    public static final class Cache {
        @h
        private final Method getPermittedSubclasses;
        @h
        private final Method getRecordComponents;
        @h
        private final Method isRecord;
        @h
        private final Method isSealed;

        public Cache(@h Method method, @h Method method2, @h Method method3, @h Method method4) {
            this.isSealed = method;
            this.getPermittedSubclasses = method2;
            this.isRecord = method3;
            this.getRecordComponents = method4;
        }

        @h
        public final Method getGetPermittedSubclasses() {
            return this.getPermittedSubclasses;
        }

        @h
        public final Method getGetRecordComponents() {
            return this.getRecordComponents;
        }

        @h
        public final Method isRecord() {
            return this.isRecord;
        }

        @h
        public final Method isSealed() {
            return this.isSealed;
        }
    }

    private Java16SealedRecordLoader() {
    }

    private final Cache buildCache() {
        try {
            return new Cache(Class.class.getMethod("isSealed", new Class[0]), Class.class.getMethod("getPermittedSubclasses", new Class[0]), Class.class.getMethod("isRecord", new Class[0]), Class.class.getMethod("getRecordComponents", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return new Cache(null, null, null, null);
        }
    }

    private final Cache initCache() {
        Cache cache = _cache;
        if (cache == null) {
            Cache buildCache = buildCache();
            _cache = buildCache;
            return buildCache;
        }
        return cache;
    }

    @h
    public final Class<?>[] loadGetPermittedSubclasses(@g Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Method getPermittedSubclasses = initCache().getGetPermittedSubclasses();
        if (getPermittedSubclasses == null) {
            return null;
        }
        Object invoke = getPermittedSubclasses.invoke(clazz, new Object[0]);
        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.Array<java.lang.Class<*>>");
        return (Class[]) invoke;
    }

    @h
    public final Object[] loadGetRecordComponents(@g Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Method getRecordComponents = initCache().getGetRecordComponents();
        if (getRecordComponents == null) {
            return null;
        }
        return (Object[]) getRecordComponents.invoke(clazz, new Object[0]);
    }

    @h
    public final Boolean loadIsRecord(@g Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Method isRecord = initCache().isRecord();
        if (isRecord == null) {
            return null;
        }
        Object invoke = isRecord.invoke(clazz, new Object[0]);
        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.Boolean");
        return (Boolean) invoke;
    }

    @h
    public final Boolean loadIsSealed(@g Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Method isSealed = initCache().isSealed();
        if (isSealed == null) {
            return null;
        }
        Object invoke = isSealed.invoke(clazz, new Object[0]);
        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.Boolean");
        return (Boolean) invoke;
    }
}
