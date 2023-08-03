package com.google.common.reflect;

import com.google.common.base.a0;
import com.google.common.collect.ImmutableList;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Invokable.java */
@h3.a
/* loaded from: classes2.dex */
public abstract class e<T, R> extends c implements GenericDeclaration {

    /* compiled from: Invokable.java */
    /* loaded from: classes2.dex */
    static class a<T> extends e<T, T> {

        /* renamed from: c  reason: collision with root package name */
        final Constructor<?> f34947c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Constructor<?> constructor) {
            super(constructor);
            this.f34947c = constructor;
        }

        private boolean B0() {
            Class<?> declaringClass = this.f34947c.getDeclaringClass();
            if (declaringClass.getEnclosingConstructor() != null) {
                return true;
            }
            Method enclosingMethod = declaringClass.getEnclosingMethod();
            if (enclosingMethod != null) {
                return !Modifier.isStatic(enclosingMethod.getModifiers());
            }
            return (declaringClass.getEnclosingClass() == null || Modifier.isStatic(declaringClass.getModifiers())) ? false : true;
        }

        @Override // java.lang.reflect.GenericDeclaration
        public final TypeVariable<?>[] getTypeParameters() {
            TypeVariable<Class<? super T>>[] typeParameters = getDeclaringClass().getTypeParameters();
            TypeVariable<Constructor<?>>[] typeParameters2 = this.f34947c.getTypeParameters();
            TypeVariable<?>[] typeVariableArr = new TypeVariable[typeParameters.length + typeParameters2.length];
            System.arraycopy(typeParameters, 0, typeVariableArr, 0, typeParameters.length);
            System.arraycopy(typeParameters2, 0, typeVariableArr, typeParameters.length, typeParameters2.length);
            return typeVariableArr;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.e
        public Type[] p0() {
            return this.f34947c.getGenericExceptionTypes();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.e
        public Type[] q0() {
            Type[] genericParameterTypes = this.f34947c.getGenericParameterTypes();
            if (genericParameterTypes.length <= 0 || !B0()) {
                return genericParameterTypes;
            }
            Class<?>[] parameterTypes = this.f34947c.getParameterTypes();
            return (genericParameterTypes.length == parameterTypes.length && parameterTypes[0] == getDeclaringClass().getEnclosingClass()) ? (Type[]) Arrays.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length) : genericParameterTypes;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.e
        public Type r0() {
            Class<? super T> declaringClass = getDeclaringClass();
            TypeVariable<Class<? super T>>[] typeParameters = declaringClass.getTypeParameters();
            return typeParameters.length > 0 ? n.m(declaringClass, typeParameters) : declaringClass;
        }

        @Override // com.google.common.reflect.e
        final Annotation[][] s0() {
            return this.f34947c.getParameterAnnotations();
        }

        @Override // com.google.common.reflect.e
        final Object w0(@NullableDecl Object obj, Object[] objArr) throws InvocationTargetException, IllegalAccessException {
            try {
                return this.f34947c.newInstance(objArr);
            } catch (InstantiationException e4) {
                throw new RuntimeException(this.f34947c + " failed.", e4);
            }
        }

        @Override // com.google.common.reflect.e
        public final boolean x0() {
            return false;
        }

        @Override // com.google.common.reflect.e
        public final boolean y0() {
            return this.f34947c.isVarArgs();
        }
    }

    /* compiled from: Invokable.java */
    /* loaded from: classes2.dex */
    static class b<T> extends e<T, Object> {

        /* renamed from: c  reason: collision with root package name */
        final Method f34948c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Method method) {
            super(method);
            this.f34948c = method;
        }

        @Override // java.lang.reflect.GenericDeclaration
        public final TypeVariable<?>[] getTypeParameters() {
            return this.f34948c.getTypeParameters();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.e
        public Type[] p0() {
            return this.f34948c.getGenericExceptionTypes();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.e
        public Type[] q0() {
            return this.f34948c.getGenericParameterTypes();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.e
        public Type r0() {
            return this.f34948c.getGenericReturnType();
        }

        @Override // com.google.common.reflect.e
        final Annotation[][] s0() {
            return this.f34948c.getParameterAnnotations();
        }

        @Override // com.google.common.reflect.e
        final Object w0(@NullableDecl Object obj, Object[] objArr) throws InvocationTargetException, IllegalAccessException {
            return this.f34948c.invoke(obj, objArr);
        }

        @Override // com.google.common.reflect.e
        public final boolean x0() {
            return (c0() || f0() || i0() || Modifier.isFinal(getDeclaringClass().getModifiers())) ? false : true;
        }

        @Override // com.google.common.reflect.e
        public final boolean y0() {
            return this.f34948c.isVarArgs();
        }
    }

    <M extends AccessibleObject & Member> e(M m9) {
        super(m9);
    }

    public static <T> e<T, T> m0(Constructor<T> constructor) {
        return new a(constructor);
    }

    public static e<?, Object> n0(Method method) {
        return new b(method);
    }

    public final <R1 extends R> e<T, R1> A0(Class<R1> cls) {
        return z0(TypeToken.of((Class) cls));
    }

    @Override // com.google.common.reflect.c
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.reflect.c
    public TypeToken<T> f() {
        return TypeToken.of((Class) getDeclaringClass());
    }

    @Override // com.google.common.reflect.c, java.lang.reflect.Member
    public final Class<? super T> getDeclaringClass() {
        return (Class<? super T>) super.getDeclaringClass();
    }

    @Override // com.google.common.reflect.c
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public final ImmutableList<TypeToken<? extends Throwable>> o0() {
        ImmutableList.a builder = ImmutableList.builder();
        for (Type type : p0()) {
            builder.g(TypeToken.of(type));
        }
        return builder.e();
    }

    abstract Type[] p0();

    abstract Type[] q0();

    abstract Type r0();

    abstract Annotation[][] s0();

    public final ImmutableList<g> t0() {
        Type[] q02 = q0();
        Annotation[][] s02 = s0();
        ImmutableList.a builder = ImmutableList.builder();
        for (int i4 = 0; i4 < q02.length; i4++) {
            builder.g(new g(this, i4, TypeToken.of(q02[i4]), s02[i4]));
        }
        return builder.e();
    }

    @Override // com.google.common.reflect.c
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public final TypeToken<? extends R> u0() {
        return (TypeToken<? extends R>) TypeToken.of(r0());
    }

    @CanIgnoreReturnValue
    public final R v0(@NullableDecl T t9, Object... objArr) throws InvocationTargetException, IllegalAccessException {
        return (R) w0(t9, (Object[]) a0.E(objArr));
    }

    abstract Object w0(@NullableDecl Object obj, Object[] objArr) throws InvocationTargetException, IllegalAccessException;

    public abstract boolean x0();

    public abstract boolean y0();

    /* JADX WARN: Multi-variable type inference failed */
    public final <R1 extends R> e<T, R1> z0(TypeToken<R1> typeToken) {
        if (typeToken.isSupertypeOf(u0())) {
            return this;
        }
        throw new IllegalArgumentException("Invokable is known to return " + u0() + ", not " + typeToken);
    }
}
