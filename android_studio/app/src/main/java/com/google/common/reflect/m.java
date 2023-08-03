package com.google.common.reflect;

import com.google.common.collect.o4;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TypeVisitor.java */
/* loaded from: classes2.dex */
public abstract class m {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Type> f34970a = o4.u();

    public final void a(Type... typeArr) {
        for (Type type : typeArr) {
            if (type != null && this.f34970a.add(type)) {
                try {
                    if (type instanceof TypeVariable) {
                        e((TypeVariable) type);
                    } else if (type instanceof WildcardType) {
                        f((WildcardType) type);
                    } else if (type instanceof ParameterizedType) {
                        d((ParameterizedType) type);
                    } else if (type instanceof Class) {
                        b((Class) type);
                    } else if (type instanceof GenericArrayType) {
                        c((GenericArrayType) type);
                    } else {
                        throw new AssertionError("Unknown type: " + type);
                    }
                } catch (Throwable th) {
                    this.f34970a.remove(type);
                    throw th;
                }
            }
        }
    }

    void b(Class<?> cls) {
    }

    void c(GenericArrayType genericArrayType) {
    }

    void d(ParameterizedType parameterizedType) {
    }

    void e(TypeVariable<?> typeVariable) {
    }

    void f(WildcardType wildcardType) {
    }
}
