package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;

/* loaded from: classes.dex */
public final class AnnotatedField extends AnnotatedMember implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private static final long f15151f = 1;

    /* renamed from: d  reason: collision with root package name */
    protected final transient Field f15152d;

    /* renamed from: e  reason: collision with root package name */
    protected a f15153e;

    /* loaded from: classes.dex */
    private static final class a implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f15154c = 1;

        /* renamed from: a  reason: collision with root package name */
        protected Class<?> f15155a;

        /* renamed from: b  reason: collision with root package name */
        protected String f15156b;

        public a(Field field) {
            this.f15155a = field.getDeclaringClass();
            this.f15156b = field.getName();
        }
    }

    public AnnotatedField(t tVar, Field field, i iVar) {
        super(tVar, iVar);
        this.f15152d = field;
    }

    Object b() {
        a aVar = this.f15153e;
        Class<?> cls = aVar.f15155a;
        try {
            Field declaredField = cls.getDeclaredField(aVar.f15156b);
            if (!declaredField.isAccessible()) {
                com.fasterxml.jackson.databind.util.g.i(declaredField, false);
            }
            return new AnnotatedField(null, declaredField, null);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Could not find method '" + this.f15153e.f15156b + "' from Class '" + cls.getName());
        }
    }

    Object c() {
        return new AnnotatedField(new a(this.f15152d));
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (com.fasterxml.jackson.databind.util.g.Q(obj, AnnotatedField.class)) {
            Field field = ((AnnotatedField) obj).f15152d;
            if (field == null) {
                return this.f15152d == null;
            }
            return field.equals(this.f15152d);
        }
        return false;
    }

    public int getAnnotationCount() {
        return this.f15159b.size();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Class<?> getDeclaringClass() {
        return this.f15152d.getDeclaringClass();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Member getMember() {
        return this.f15152d;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public int getModifiers() {
        return this.f15152d.getModifiers();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public String getName() {
        return this.f15152d.getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public Class<?> getRawType() {
        return this.f15152d.getType();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public JavaType getType() {
        return this.f15158a.a(this.f15152d.getGenericType());
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Object getValue(Object obj) throws IllegalArgumentException {
        try {
            return this.f15152d.get(obj);
        } catch (IllegalAccessException e4) {
            throw new IllegalArgumentException("Failed to getValue() for field " + getFullName() + ": " + e4.getMessage(), e4);
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public int hashCode() {
        return this.f15152d.getName().hashCode();
    }

    public boolean isTransient() {
        return Modifier.isTransient(getModifiers());
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public void setValue(Object obj, Object obj2) throws IllegalArgumentException {
        try {
            this.f15152d.set(obj, obj2);
        } catch (IllegalAccessException e4) {
            throw new IllegalArgumentException("Failed to setValue() for field " + getFullName() + ": " + e4.getMessage(), e4);
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public String toString() {
        return "[field " + getFullName() + "]";
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public Field getAnnotated() {
        return this.f15152d;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public AnnotatedField withAnnotations(i iVar) {
        return new AnnotatedField(this.f15158a, this.f15152d, iVar);
    }

    protected AnnotatedField(a aVar) {
        super(null, null);
        this.f15152d = null;
        this.f15153e = aVar;
    }
}
