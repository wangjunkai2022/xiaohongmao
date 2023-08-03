package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;

/* compiled from: CreatorCandidate.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    protected final AnnotationIntrospector f14748a;

    /* renamed from: b  reason: collision with root package name */
    protected final AnnotatedWithParams f14749b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f14750c;

    /* renamed from: d  reason: collision with root package name */
    protected final C0116a[] f14751d;

    /* compiled from: CreatorCandidate.java */
    /* renamed from: com.fasterxml.jackson.databind.deser.impl.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0116a {

        /* renamed from: a  reason: collision with root package name */
        public final AnnotatedParameter f14752a;

        /* renamed from: b  reason: collision with root package name */
        public final com.fasterxml.jackson.databind.introspect.k f14753b;

        /* renamed from: c  reason: collision with root package name */
        public final JacksonInject.Value f14754c;

        public C0116a(AnnotatedParameter annotatedParameter, com.fasterxml.jackson.databind.introspect.k kVar, JacksonInject.Value value) {
            this.f14752a = annotatedParameter;
            this.f14753b = kVar;
            this.f14754c = value;
        }

        public PropertyName a() {
            com.fasterxml.jackson.databind.introspect.k kVar = this.f14753b;
            if (kVar == null) {
                return null;
            }
            return kVar.getFullName();
        }

        public boolean b() {
            com.fasterxml.jackson.databind.introspect.k kVar = this.f14753b;
            if (kVar == null) {
                return false;
            }
            return kVar.getFullName().hasSimpleName();
        }
    }

    protected a(AnnotationIntrospector annotationIntrospector, AnnotatedWithParams annotatedWithParams, C0116a[] c0116aArr, int i4) {
        this.f14748a = annotationIntrospector;
        this.f14749b = annotatedWithParams;
        this.f14751d = c0116aArr;
        this.f14750c = i4;
    }

    public static a a(AnnotationIntrospector annotationIntrospector, AnnotatedWithParams annotatedWithParams, com.fasterxml.jackson.databind.introspect.k[] kVarArr) {
        int parameterCount = annotatedWithParams.getParameterCount();
        C0116a[] c0116aArr = new C0116a[parameterCount];
        for (int i4 = 0; i4 < parameterCount; i4++) {
            AnnotatedParameter parameter = annotatedWithParams.getParameter(i4);
            c0116aArr[i4] = new C0116a(parameter, kVarArr == null ? null : kVarArr[i4], annotationIntrospector.findInjectableValue(parameter));
        }
        return new a(annotationIntrospector, annotatedWithParams, c0116aArr, parameterCount);
    }

    public AnnotatedWithParams b() {
        return this.f14749b;
    }

    public PropertyName c(int i4) {
        com.fasterxml.jackson.databind.introspect.k kVar = this.f14751d[i4].f14753b;
        if (kVar == null || !kVar.A()) {
            return null;
        }
        return kVar.getFullName();
    }

    public PropertyName d(int i4) {
        String findImplicitPropertyName = this.f14748a.findImplicitPropertyName(this.f14751d[i4].f14752a);
        if (findImplicitPropertyName == null || findImplicitPropertyName.isEmpty()) {
            return null;
        }
        return PropertyName.construct(findImplicitPropertyName);
    }

    public int e() {
        int i4 = -1;
        for (int i10 = 0; i10 < this.f14750c; i10++) {
            if (this.f14751d[i10].f14754c == null) {
                if (i4 >= 0) {
                    return -1;
                }
                i4 = i10;
            }
        }
        return i4;
    }

    public JacksonInject.Value f(int i4) {
        return this.f14751d[i4].f14754c;
    }

    public int g() {
        return this.f14750c;
    }

    public PropertyName h(int i4) {
        com.fasterxml.jackson.databind.introspect.k kVar = this.f14751d[i4].f14753b;
        if (kVar != null) {
            return kVar.getFullName();
        }
        return null;
    }

    public AnnotatedParameter i(int i4) {
        return this.f14751d[i4].f14752a;
    }

    public com.fasterxml.jackson.databind.introspect.k j(int i4) {
        return this.f14751d[i4].f14753b;
    }

    public String toString() {
        return this.f14749b.toString();
    }
}
