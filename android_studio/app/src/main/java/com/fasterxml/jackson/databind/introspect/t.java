package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.Type;

/* compiled from: TypeResolutionContext.java */
/* loaded from: classes.dex */
public interface t {

    /* compiled from: TypeResolutionContext.java */
    /* loaded from: classes.dex */
    public static class a implements t {

        /* renamed from: a  reason: collision with root package name */
        private final TypeFactory f15364a;

        /* renamed from: b  reason: collision with root package name */
        private final TypeBindings f15365b;

        public a(TypeFactory typeFactory, TypeBindings typeBindings) {
            this.f15364a = typeFactory;
            this.f15365b = typeBindings;
        }

        @Override // com.fasterxml.jackson.databind.introspect.t
        public JavaType a(Type type) {
            return this.f15364a.resolveMemberType(type, this.f15365b);
        }
    }

    /* compiled from: TypeResolutionContext.java */
    /* loaded from: classes.dex */
    public static class b implements t {

        /* renamed from: a  reason: collision with root package name */
        private final TypeFactory f15366a;

        public b(TypeFactory typeFactory) {
            this.f15366a = typeFactory;
        }

        @Override // com.fasterxml.jackson.databind.introspect.t
        public JavaType a(Type type) {
            return this.f15366a.constructType(type);
        }
    }

    JavaType a(Type type);
}
