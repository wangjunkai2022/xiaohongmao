package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import java.util.Iterator;

/* compiled from: BeanPropertyDefinition.java */
/* loaded from: classes.dex */
public abstract class k implements com.fasterxml.jackson.databind.util.n {

    /* renamed from: a  reason: collision with root package name */
    protected static final JsonInclude.Value f15303a = JsonInclude.Value.empty();

    public boolean A() {
        return z();
    }

    public boolean B() {
        return false;
    }

    public abstract k C(PropertyName propertyName);

    public abstract k D(String str);

    public boolean a() {
        return o() != null;
    }

    public boolean b() {
        return h() != null;
    }

    public abstract JsonInclude.Value c();

    public p d() {
        return null;
    }

    public String e() {
        AnnotationIntrospector.ReferenceProperty f10 = f();
        if (f10 == null) {
            return null;
        }
        return f10.b();
    }

    public AnnotationIntrospector.ReferenceProperty f() {
        return null;
    }

    public Class<?>[] g() {
        return null;
    }

    public abstract PropertyName getFullName();

    public abstract PropertyMetadata getMetadata();

    @Override // com.fasterxml.jackson.databind.util.n
    public abstract String getName();

    public abstract PropertyName getWrapperName();

    public AnnotatedMember h() {
        AnnotatedMethod m9 = m();
        return m9 == null ? l() : m9;
    }

    public abstract AnnotatedParameter i();

    public boolean isRequired() {
        return getMetadata().isRequired();
    }

    public Iterator<AnnotatedParameter> k() {
        return com.fasterxml.jackson.databind.util.g.p();
    }

    public abstract AnnotatedField l();

    public abstract AnnotatedMethod m();

    public abstract String n();

    public AnnotatedMember o() {
        AnnotatedParameter i4 = i();
        if (i4 == null) {
            AnnotatedMethod t9 = t();
            return t9 == null ? l() : t9;
        }
        return i4;
    }

    public AnnotatedMember p() {
        AnnotatedMethod t9 = t();
        return t9 == null ? l() : t9;
    }

    public abstract AnnotatedMember q();

    public abstract JavaType r();

    public abstract Class<?> s();

    public abstract AnnotatedMethod t();

    public abstract boolean u();

    public abstract boolean v();

    public abstract boolean w();

    public boolean x(PropertyName propertyName) {
        return getFullName().equals(propertyName);
    }

    public abstract boolean y();

    public abstract boolean z();
}
