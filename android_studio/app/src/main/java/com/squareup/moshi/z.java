package com.squareup.moshi;

import com.squareup.moshi.internal.c;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/* compiled from: Types.java */
@r7.c
/* loaded from: classes3.dex */
public final class z {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Types.java */
    /* loaded from: classes3.dex */
    public class a implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f55767a;

        a(Class cls) {
            this.f55767a = cls;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            name.hashCode();
            char c10 = 65535;
            switch (name.hashCode()) {
                case -1776922004:
                    if (name.equals("toString")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1295482945:
                    if (name.equals("equals")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 147696667:
                    if (name.equals("hashCode")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 1444986633:
                    if (name.equals("annotationType")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    return "@" + this.f55767a.getName() + "()";
                case 1:
                    return Boolean.valueOf(this.f55767a.isInstance(objArr[0]));
                case 2:
                    return 0;
                case 3:
                    return this.f55767a;
                default:
                    return method.invoke(obj, objArr);
            }
        }
    }

    private z() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type a(Type type) {
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType) type).getGenericComponentType();
        }
        if (type instanceof Class) {
            return ((Class) type).getComponentType();
        }
        return null;
    }

    public static GenericArrayType b(Type type) {
        return new c.a(type);
    }

    public static Type c(Type type, Class<?> cls) {
        Type k10 = k(type, cls, Collection.class);
        if (k10 instanceof WildcardType) {
            k10 = ((WildcardType) k10).getUpperBounds()[0];
        }
        if (k10 instanceof ParameterizedType) {
            return ((ParameterizedType) k10).getActualTypeArguments()[0];
        }
        return Object.class;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends Annotation> T d(Class<T> cls) {
        if (cls.isAnnotation()) {
            if (cls.isAnnotationPresent(j.class)) {
                if (cls.getDeclaredMethods().length == 0) {
                    return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(cls));
                }
                throw new IllegalArgumentException(cls + " must not declare methods.");
            }
            throw new IllegalArgumentException(cls + " must have @JsonQualifier.");
        }
        throw new IllegalArgumentException(cls + " must be an annotation.");
    }

    public static boolean e(@r7.h Type type, @r7.h Type type2) {
        Type[] actualTypeArguments;
        Type[] actualTypeArguments2;
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            if (type2 instanceof GenericArrayType) {
                return e(((Class) type).getComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return type.equals(type2);
        } else if (type instanceof ParameterizedType) {
            if (type2 instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                ParameterizedType parameterizedType2 = (ParameterizedType) type2;
                if (parameterizedType instanceof c.b) {
                    actualTypeArguments = ((c.b) parameterizedType).f55619c;
                } else {
                    actualTypeArguments = parameterizedType.getActualTypeArguments();
                }
                if (parameterizedType2 instanceof c.b) {
                    actualTypeArguments2 = ((c.b) parameterizedType2).f55619c;
                } else {
                    actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
                }
                return e(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(actualTypeArguments, actualTypeArguments2);
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            if (type2 instanceof Class) {
                return e(((Class) type2).getComponentType(), ((GenericArrayType) type).getGenericComponentType());
            }
            if (type2 instanceof GenericArrayType) {
                return e(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        } else if (type instanceof WildcardType) {
            if (type2 instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                WildcardType wildcardType2 = (WildcardType) type2;
                return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
            }
            return false;
        } else if ((type instanceof TypeVariable) && (type2 instanceof TypeVariable)) {
            TypeVariable typeVariable = (TypeVariable) type;
            TypeVariable typeVariable2 = (TypeVariable) type2;
            return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
        } else {
            return false;
        }
    }

    public static String f(Class<?> cls) {
        if (cls.getAnnotation(i.class) != null) {
            return g(cls.getName());
        }
        throw new IllegalArgumentException("Class does not have a JsonClass annotation: " + cls);
    }

    public static String g(String str) {
        return str.replace("$", "_") + "JsonAdapter";
    }

    @Deprecated
    public static Set<? extends Annotation> h(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            Annotation[] declaredAnnotations = declaredField.getDeclaredAnnotations();
            LinkedHashSet linkedHashSet = new LinkedHashSet(declaredAnnotations.length);
            for (Annotation annotation : declaredAnnotations) {
                if (annotation.annotationType().isAnnotationPresent(j.class)) {
                    linkedHashSet.add(annotation);
                }
            }
            return Collections.unmodifiableSet(linkedHashSet);
        } catch (NoSuchFieldException e4) {
            throw new IllegalArgumentException("Could not access field " + str + " on class " + cls.getCanonicalName(), e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type i(Type type) {
        Class<?> j4 = j(type);
        return com.squareup.moshi.internal.c.u(type, j4, j4.getGenericSuperclass());
    }

    public static Class<?> j(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(j(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return j(((WildcardType) type).getUpperBounds()[0]);
        }
        String name = type == null ? "null" : type.getClass().getName();
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
    }

    static Type k(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return com.squareup.moshi.internal.c.u(type, cls, com.squareup.moshi.internal.c.g(type, cls, cls2));
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type[] l(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type k10 = k(type, cls, Map.class);
        return k10 instanceof ParameterizedType ? ((ParameterizedType) k10).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    public static ParameterizedType m(Type type, Type... typeArr) {
        if (typeArr.length != 0) {
            return new c.b(null, type, typeArr);
        }
        throw new IllegalArgumentException("Missing type arguments for " + type);
    }

    public static ParameterizedType n(Type type, Type type2, Type... typeArr) {
        if (typeArr.length != 0) {
            return new c.b(type, type2, typeArr);
        }
        throw new IllegalArgumentException("Missing type arguments for " + type2);
    }

    @r7.h
    public static Set<? extends Annotation> o(Set<? extends Annotation> set, Class<? extends Annotation> cls) {
        if (cls.isAnnotationPresent(j.class)) {
            if (set.isEmpty()) {
                return null;
            }
            for (Annotation annotation : set) {
                if (cls.equals(annotation.annotationType())) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet(set);
                    linkedHashSet.remove(annotation);
                    return Collections.unmodifiableSet(linkedHashSet);
                }
            }
            return null;
        }
        throw new IllegalArgumentException(cls + " is not a JsonQualifier.");
    }

    public static WildcardType p(Type type) {
        return new c.C0473c(type instanceof WildcardType ? ((WildcardType) type).getUpperBounds() : new Type[]{type}, com.squareup.moshi.internal.c.f55612b);
    }

    public static WildcardType q(Type type) {
        return new c.C0473c(new Type[]{Object.class}, type instanceof WildcardType ? ((WildcardType) type).getLowerBounds() : new Type[]{type});
    }
}
