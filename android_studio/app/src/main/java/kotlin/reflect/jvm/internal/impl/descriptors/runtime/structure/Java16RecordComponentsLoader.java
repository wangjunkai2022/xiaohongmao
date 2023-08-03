package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaRecordComponent.kt */
/* loaded from: classes4.dex */
final class Java16RecordComponentsLoader {
    @g
    public static final Java16RecordComponentsLoader INSTANCE = new Java16RecordComponentsLoader();
    @h
    private static Cache _cache;

    /* compiled from: ReflectJavaRecordComponent.kt */
    /* loaded from: classes4.dex */
    public static final class Cache {
        @h
        private final Method getAccessor;
        @h
        private final Method getType;

        public Cache(@h Method method, @h Method method2) {
            this.getType = method;
            this.getAccessor = method2;
        }

        @h
        public final Method getGetAccessor() {
            return this.getAccessor;
        }

        @h
        public final Method getGetType() {
            return this.getType;
        }
    }

    private Java16RecordComponentsLoader() {
    }

    private final Cache buildCache(Object obj) {
        Class<?> cls = obj.getClass();
        try {
            return new Cache(cls.getMethod("getType", new Class[0]), cls.getMethod("getAccessor", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return new Cache(null, null);
        }
    }

    private final Cache initCache(Object obj) {
        Cache cache = _cache;
        if (cache == null) {
            Cache buildCache = buildCache(obj);
            _cache = buildCache;
            return buildCache;
        }
        return cache;
    }

    @h
    public final Method loadGetAccessor(@g Object recordComponent) {
        Intrinsics.checkNotNullParameter(recordComponent, "recordComponent");
        Method getAccessor = initCache(recordComponent).getGetAccessor();
        if (getAccessor == null) {
            return null;
        }
        Object invoke = getAccessor.invoke(recordComponent, new Object[0]);
        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type java.lang.reflect.Method");
        return (Method) invoke;
    }

    @h
    public final Class<?> loadGetType(@g Object recordComponent) {
        Intrinsics.checkNotNullParameter(recordComponent, "recordComponent");
        Method getType = initCache(recordComponent).getGetType();
        if (getType == null) {
            return null;
        }
        Object invoke = getType.invoke(recordComponent, new Object[0]);
        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type java.lang.Class<*>");
        return (Class) invoke;
    }
}
