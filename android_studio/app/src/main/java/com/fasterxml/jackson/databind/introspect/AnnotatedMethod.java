package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public final class AnnotatedMethod extends AnnotatedWithParams implements Serializable {

    /* renamed from: i  reason: collision with root package name */
    private static final long f15160i = 1;

    /* renamed from: f  reason: collision with root package name */
    protected final transient Method f15161f;

    /* renamed from: g  reason: collision with root package name */
    protected Class<?>[] f15162g;

    /* renamed from: h  reason: collision with root package name */
    protected a f15163h;

    /* loaded from: classes.dex */
    private static final class a implements Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f15164d = 1;

        /* renamed from: a  reason: collision with root package name */
        protected Class<?> f15165a;

        /* renamed from: b  reason: collision with root package name */
        protected String f15166b;

        /* renamed from: c  reason: collision with root package name */
        protected Class<?>[] f15167c;

        public a(Method method) {
            this.f15165a = method.getDeclaringClass();
            this.f15166b = method.getName();
            this.f15167c = method.getParameterTypes();
        }
    }

    public AnnotatedMethod(t tVar, Method method, i iVar, i[] iVarArr) {
        super(tVar, iVar, iVarArr);
        if (method != null) {
            this.f15161f = method;
            return;
        }
        throw new IllegalArgumentException("Cannot construct AnnotatedMethod with null Method");
    }

    Object c() {
        a aVar = this.f15163h;
        Class<?> cls = aVar.f15165a;
        try {
            Method declaredMethod = cls.getDeclaredMethod(aVar.f15166b, aVar.f15167c);
            if (!declaredMethod.isAccessible()) {
                com.fasterxml.jackson.databind.util.g.i(declaredMethod, false);
            }
            return new AnnotatedMethod(null, declaredMethod, null, null);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Could not find method '" + this.f15163h.f15166b + "' from Class '" + cls.getName());
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public final Object call() throws Exception {
        return this.f15161f.invoke(null, new Object[0]);
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public final Object call1(Object obj) throws Exception {
        return this.f15161f.invoke(null, obj);
    }

    public final Object callOn(Object obj) throws Exception {
        return this.f15161f.invoke(obj, null);
    }

    public final Object callOnWith(Object obj, Object... objArr) throws Exception {
        return this.f15161f.invoke(obj, objArr);
    }

    Object d() {
        return new AnnotatedMethod(new a(this.f15161f));
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (com.fasterxml.jackson.databind.util.g.Q(obj, AnnotatedMethod.class)) {
            Method method = ((AnnotatedMethod) obj).f15161f;
            if (method == null) {
                return this.f15161f == null;
            }
            return method.equals(this.f15161f);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Class<?> getDeclaringClass() {
        return this.f15161f.getDeclaringClass();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public String getFullName() {
        String fullName = super.getFullName();
        int parameterCount = getParameterCount();
        if (parameterCount == 0) {
            return fullName + "()";
        } else if (parameterCount != 1) {
            return String.format("%s(%d params)", super.getFullName(), Integer.valueOf(getParameterCount()));
        } else {
            return fullName + "(" + getRawParameterType(0).getName() + ")";
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    @Deprecated
    public Type getGenericParameterType(int i4) {
        Type[] genericParameterTypes = getGenericParameterTypes();
        if (i4 >= genericParameterTypes.length) {
            return null;
        }
        return genericParameterTypes[i4];
    }

    @Deprecated
    public Type[] getGenericParameterTypes() {
        return this.f15161f.getGenericParameterTypes();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public int getModifiers() {
        return this.f15161f.getModifiers();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public String getName() {
        return this.f15161f.getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public int getParameterCount() {
        return getRawParameterTypes().length;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public JavaType getParameterType(int i4) {
        Type[] genericParameterTypes = this.f15161f.getGenericParameterTypes();
        if (i4 >= genericParameterTypes.length) {
            return null;
        }
        return this.f15158a.a(genericParameterTypes[i4]);
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public Class<?> getRawParameterType(int i4) {
        Class<?>[] rawParameterTypes = getRawParameterTypes();
        if (i4 >= rawParameterTypes.length) {
            return null;
        }
        return rawParameterTypes[i4];
    }

    public Class<?>[] getRawParameterTypes() {
        if (this.f15162g == null) {
            this.f15162g = this.f15161f.getParameterTypes();
        }
        return this.f15162g;
    }

    public Class<?> getRawReturnType() {
        return this.f15161f.getReturnType();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public Class<?> getRawType() {
        return this.f15161f.getReturnType();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public JavaType getType() {
        return this.f15158a.a(this.f15161f.getGenericReturnType());
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Object getValue(Object obj) throws IllegalArgumentException {
        try {
            return this.f15161f.invoke(obj, null);
        } catch (IllegalAccessException | InvocationTargetException e4) {
            throw new IllegalArgumentException("Failed to getValue() with method " + getFullName() + ": " + com.fasterxml.jackson.databind.util.g.q(e4), e4);
        }
    }

    @Deprecated
    public boolean hasReturnType() {
        return getRawReturnType() != Void.TYPE;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public int hashCode() {
        return this.f15161f.getName().hashCode();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public void setValue(Object obj, Object obj2) throws IllegalArgumentException {
        try {
            this.f15161f.invoke(obj, obj2);
        } catch (IllegalAccessException | InvocationTargetException e4) {
            throw new IllegalArgumentException("Failed to setValue() with method " + getFullName() + ": " + com.fasterxml.jackson.databind.util.g.q(e4), e4);
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public String toString() {
        return "[method " + getFullName() + "]";
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public final Object call(Object[] objArr) throws Exception {
        return this.f15161f.invoke(null, objArr);
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public Method getAnnotated() {
        return this.f15161f;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Method getMember() {
        return this.f15161f;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public AnnotatedMethod withAnnotations(i iVar) {
        return new AnnotatedMethod(this.f15158a, this.f15161f, iVar, this.f15173d);
    }

    protected AnnotatedMethod(a aVar) {
        super(null, null, null);
        this.f15161f = null;
        this.f15163h = aVar;
    }
}
