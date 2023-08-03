package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ReflectJavaMember.kt */
/* loaded from: classes4.dex */
final class Java8ParameterNamesLoader {
    @g
    public static final Java8ParameterNamesLoader INSTANCE = new Java8ParameterNamesLoader();
    @h
    private static Cache cache;

    /* compiled from: ReflectJavaMember.kt */
    /* loaded from: classes4.dex */
    public static final class Cache {
        @h
        private final Method getName;
        @h
        private final Method getParameters;

        public Cache(@h Method method, @h Method method2) {
            this.getParameters = method;
            this.getName = method2;
        }

        @h
        public final Method getGetName() {
            return this.getName;
        }

        @h
        public final Method getGetParameters() {
            return this.getParameters;
        }
    }

    private Java8ParameterNamesLoader() {
    }

    @g
    public final Cache buildCache(@g Member member) {
        Intrinsics.checkNotNullParameter(member, "member");
        Class<?> cls = member.getClass();
        try {
            return new Cache(cls.getMethod("getParameters", new Class[0]), ReflectClassUtilKt.getSafeClassLoader(cls).loadClass("java.lang.reflect.Parameter").getMethod("getName", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return new Cache(null, null);
        }
    }

    @h
    public final List<String> loadParameterNames(@g Member member) {
        Method getName;
        Intrinsics.checkNotNullParameter(member, "member");
        Cache cache2 = cache;
        if (cache2 == null) {
            synchronized (this) {
                Java8ParameterNamesLoader java8ParameterNamesLoader = INSTANCE;
                Cache cache3 = cache;
                if (cache3 == null) {
                    cache2 = java8ParameterNamesLoader.buildCache(member);
                    cache = cache2;
                } else {
                    cache2 = cache3;
                }
            }
        }
        Method getParameters = cache2.getGetParameters();
        if (getParameters == null || (getName = cache2.getGetName()) == null) {
            return null;
        }
        Object invoke = getParameters.invoke(member, new Object[0]);
        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.Array<*>");
        Object[] objArr = (Object[]) invoke;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            Object invoke2 = getName.invoke(obj, new Object[0]);
            Intrinsics.checkNotNull(invoke2, "null cannot be cast to non-null type kotlin.String");
            arrayList.add((String) invoke2);
        }
        return arrayList;
    }
}
