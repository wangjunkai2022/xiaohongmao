package com.fasterxml.jackson.databind;

import c2.e;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.p;
import com.fasterxml.jackson.databind.type.TypeBindings;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: BeanDescription.java */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    protected final JavaType f14465a;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(JavaType javaType) {
        this.f14465a = javaType;
    }

    public abstract com.fasterxml.jackson.databind.introspect.c A();

    public abstract List<AnnotatedConstructor> B();

    public abstract List<com.fasterxml.jackson.databind.introspect.b<AnnotatedConstructor, JsonCreator.Mode>> C();

    public abstract List<AnnotatedMethod> D();

    public abstract List<com.fasterxml.jackson.databind.introspect.b<AnnotatedMethod, JsonCreator.Mode>> E();

    public abstract Set<String> F();

    public abstract p G();

    public JavaType H() {
        return this.f14465a;
    }

    public abstract boolean I();

    public abstract Object J(boolean z9);

    public boolean K() {
        return A().v();
    }

    @Deprecated
    public abstract JavaType L(Type type);

    @Deprecated
    public abstract TypeBindings a();

    public abstract AnnotatedMember b();

    @Deprecated
    public AnnotatedMethod c() {
        AnnotatedMember d4 = d();
        if (d4 instanceof AnnotatedMethod) {
            return (AnnotatedMethod) d4;
        }
        return null;
    }

    public abstract AnnotatedMember d();

    @Deprecated
    public AnnotatedMember e() {
        AnnotatedMember d4 = d();
        if (d4 instanceof AnnotatedField) {
            return d4;
        }
        return null;
    }

    @Deprecated
    public abstract Map<String, AnnotatedMember> f();

    public abstract List<com.fasterxml.jackson.databind.introspect.k> g();

    public String h() {
        return null;
    }

    public abstract AnnotatedConstructor i();

    public abstract Class<?>[] j();

    public abstract com.fasterxml.jackson.databind.util.h<Object, Object> k();

    public abstract JsonFormat.Value l(JsonFormat.Value value);

    @Deprecated
    public abstract Method m(Class<?>... clsArr);

    public abstract Map<Object, AnnotatedMember> n();

    public AnnotatedMember o() {
        return null;
    }

    public abstract AnnotatedMember p();

    @Deprecated
    public abstract AnnotatedMethod q();

    public abstract AnnotatedMethod r(String str, Class<?>[] clsArr);

    public abstract Class<?> s();

    public abstract e.a t();

    public abstract List<com.fasterxml.jackson.databind.introspect.k> u();

    public abstract JsonInclude.Value v(JsonInclude.Value value);

    public abstract com.fasterxml.jackson.databind.util.h<Object, Object> w();

    @Deprecated
    public abstract Constructor<?> x(Class<?>... clsArr);

    public Class<?> y() {
        return this.f14465a.getRawClass();
    }

    public abstract com.fasterxml.jackson.databind.util.a z();
}
