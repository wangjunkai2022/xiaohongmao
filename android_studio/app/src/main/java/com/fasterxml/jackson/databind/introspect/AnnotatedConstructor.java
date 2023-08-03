package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public final class AnnotatedConstructor extends AnnotatedWithParams {

    /* renamed from: h  reason: collision with root package name */
    private static final long f15145h = 1;

    /* renamed from: f  reason: collision with root package name */
    protected final Constructor<?> f15146f;

    /* renamed from: g  reason: collision with root package name */
    protected a f15147g;

    /* loaded from: classes.dex */
    private static final class a implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f15148c = 1;

        /* renamed from: a  reason: collision with root package name */
        protected Class<?> f15149a;

        /* renamed from: b  reason: collision with root package name */
        protected Class<?>[] f15150b;

        public a(Constructor<?> constructor) {
            this.f15149a = constructor.getDeclaringClass();
            this.f15150b = constructor.getParameterTypes();
        }
    }

    public AnnotatedConstructor(t tVar, Constructor<?> constructor, i iVar, i[] iVarArr) {
        super(tVar, iVar, iVarArr);
        if (constructor != null) {
            this.f15146f = constructor;
            return;
        }
        throw new IllegalArgumentException("Null constructor not allowed");
    }

    Object c() {
        a aVar = this.f15147g;
        Class<?> cls = aVar.f15149a;
        try {
            Constructor<?> declaredConstructor = cls.getDeclaredConstructor(aVar.f15150b);
            if (!declaredConstructor.isAccessible()) {
                com.fasterxml.jackson.databind.util.g.i(declaredConstructor, false);
            }
            return new AnnotatedConstructor(null, declaredConstructor, null, null);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Could not find constructor with " + this.f15147g.f15150b.length + " args from Class '" + cls.getName());
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public final Object call() throws Exception {
        return this.f15146f.newInstance(null);
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public final Object call1(Object obj) throws Exception {
        return this.f15146f.newInstance(obj);
    }

    Object d() {
        return new AnnotatedConstructor(new a(this.f15146f));
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (com.fasterxml.jackson.databind.util.g.Q(obj, AnnotatedConstructor.class)) {
            Constructor<?> constructor = ((AnnotatedConstructor) obj).f15146f;
            if (constructor == null) {
                return this.f15146f == null;
            }
            return constructor.equals(this.f15146f);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Class<?> getDeclaringClass() {
        return this.f15146f.getDeclaringClass();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    @Deprecated
    public Type getGenericParameterType(int i4) {
        Type[] genericParameterTypes = this.f15146f.getGenericParameterTypes();
        if (i4 >= genericParameterTypes.length) {
            return null;
        }
        return genericParameterTypes[i4];
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Member getMember() {
        return this.f15146f;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public int getModifiers() {
        return this.f15146f.getModifiers();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public String getName() {
        return this.f15146f.getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public int getParameterCount() {
        return this.f15146f.getParameterTypes().length;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public JavaType getParameterType(int i4) {
        Type[] genericParameterTypes = this.f15146f.getGenericParameterTypes();
        if (i4 >= genericParameterTypes.length) {
            return null;
        }
        return this.f15158a.a(genericParameterTypes[i4]);
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public Class<?> getRawParameterType(int i4) {
        Class<?>[] parameterTypes = this.f15146f.getParameterTypes();
        if (i4 >= parameterTypes.length) {
            return null;
        }
        return parameterTypes[i4];
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public Class<?> getRawType() {
        return this.f15146f.getDeclaringClass();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public JavaType getType() {
        return this.f15158a.a(getRawType());
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Object getValue(Object obj) throws UnsupportedOperationException {
        throw new UnsupportedOperationException("Cannot call getValue() on constructor of " + getDeclaringClass().getName());
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public int hashCode() {
        return this.f15146f.getName().hashCode();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public void setValue(Object obj, Object obj2) throws UnsupportedOperationException {
        throw new UnsupportedOperationException("Cannot call setValue() on constructor of " + getDeclaringClass().getName());
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public String toString() {
        int length = this.f15146f.getParameterTypes().length;
        Object[] objArr = new Object[4];
        objArr[0] = com.fasterxml.jackson.databind.util.g.j0(this.f15146f.getDeclaringClass());
        objArr[1] = Integer.valueOf(length);
        objArr[2] = length == 1 ? "" : "s";
        objArr[3] = this.f15159b;
        return String.format("[constructor for %s (%d arg%s), annotations: %s", objArr);
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public final Object call(Object[] objArr) throws Exception {
        return this.f15146f.newInstance(objArr);
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public Constructor<?> getAnnotated() {
        return this.f15146f;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public AnnotatedConstructor withAnnotations(i iVar) {
        return new AnnotatedConstructor(this.f15158a, this.f15146f, iVar, this.f15173d);
    }

    protected AnnotatedConstructor(a aVar) {
        super(null, null, null);
        this.f15146f = null;
        this.f15147g = aVar;
    }
}
