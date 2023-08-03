package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.t;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Objects;

/* compiled from: MethodGenericTypeResolver.java */
/* loaded from: classes.dex */
final class o {
    o() {
    }

    static TypeBindings a(Method method, JavaType javaType, t tVar) {
        JavaType boundType;
        TypeVariable<?> b10;
        TypeVariable<Method>[] typeParameters = method.getTypeParameters();
        if (typeParameters.length == 0 || javaType.getBindings().isEmpty()) {
            return null;
        }
        Type genericReturnType = method.getGenericReturnType();
        if (genericReturnType instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) genericReturnType;
            if (Objects.equals(javaType.getRawClass(), parameterizedType.getRawType())) {
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                ArrayList arrayList = new ArrayList(typeParameters.length);
                ArrayList arrayList2 = new ArrayList(typeParameters.length);
                for (int i4 = 0; i4 < actualTypeArguments.length; i4++) {
                    TypeVariable<?> d4 = d(actualTypeArguments[i4]);
                    if (d4 != null) {
                        String name = d4.getName();
                        if (name == null || (boundType = javaType.getBindings().getBoundType(i4)) == null || (b10 = b(typeParameters, name)) == null) {
                            return null;
                        }
                        if (g(tVar, boundType, b10.getBounds())) {
                            int indexOf = arrayList.indexOf(name);
                            if (indexOf != -1) {
                                JavaType javaType2 = (JavaType) arrayList2.get(indexOf);
                                if (boundType.equals(javaType2)) {
                                    continue;
                                } else {
                                    boolean isTypeOrSubTypeOf = javaType2.isTypeOrSubTypeOf(boundType.getRawClass());
                                    boolean isTypeOrSubTypeOf2 = boundType.isTypeOrSubTypeOf(javaType2.getRawClass());
                                    if (!isTypeOrSubTypeOf && !isTypeOrSubTypeOf2) {
                                        return null;
                                    }
                                    if ((isTypeOrSubTypeOf ^ isTypeOrSubTypeOf2) && isTypeOrSubTypeOf2) {
                                        arrayList2.set(indexOf, boundType);
                                    }
                                }
                            } else {
                                arrayList.add(name);
                                arrayList2.add(boundType);
                            }
                        } else {
                            continue;
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return null;
                }
                return TypeBindings.create(arrayList, arrayList2);
            }
            return null;
        }
        return null;
    }

    private static TypeVariable<?> b(TypeVariable<?>[] typeVariableArr, String str) {
        if (typeVariableArr != null && str != null) {
            for (TypeVariable<?> typeVariable : typeVariableArr) {
                if (str.equals(typeVariable.getName())) {
                    return typeVariable;
                }
            }
        }
        return null;
    }

    private static ParameterizedType c(Type type) {
        if (type instanceof ParameterizedType) {
            return (ParameterizedType) type;
        }
        if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            if (wildcardType.getLowerBounds().length != 0) {
                return null;
            }
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (upperBounds.length == 1) {
                return c(upperBounds[0]);
            }
        }
        return null;
    }

    private static TypeVariable<?> d(Type type) {
        if (type instanceof TypeVariable) {
            return (TypeVariable) type;
        }
        if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            if (wildcardType.getLowerBounds().length != 0) {
                return null;
            }
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (upperBounds.length == 1) {
                return d(upperBounds[0]);
            }
        }
        return null;
    }

    public static t e(Method method, JavaType javaType, TypeFactory typeFactory, t tVar) {
        TypeBindings a10 = a(method, javaType, tVar);
        return a10 == null ? tVar : new t.a(typeFactory, a10);
    }

    private static boolean f(t tVar, JavaType javaType, Type type) {
        if (javaType.isTypeOrSubTypeOf(tVar.a(type).getRawClass())) {
            ParameterizedType c10 = c(type);
            if (c10 == null || !Objects.equals(javaType.getRawClass(), c10.getRawType())) {
                return true;
            }
            Type[] actualTypeArguments = c10.getActualTypeArguments();
            TypeBindings bindings = javaType.getBindings();
            if (bindings.size() != actualTypeArguments.length) {
                return false;
            }
            for (int i4 = 0; i4 < bindings.size(); i4++) {
                if (!f(tVar, bindings.getBoundType(i4), actualTypeArguments[i4])) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    private static boolean g(t tVar, JavaType javaType, Type[] typeArr) {
        for (Type type : typeArr) {
            if (!f(tVar, javaType, type)) {
                return false;
            }
        }
        return true;
    }
}
