package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.n;
import com.fasterxml.jackson.databind.cfg.MutableConfigOverride;
import com.fasterxml.jackson.databind.deser.o;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.util.Collection;
import java.util.Collections;

/* compiled from: Module.java */
/* loaded from: classes.dex */
public abstract class j implements n {

    /* compiled from: Module.java */
    /* loaded from: classes.dex */
    public interface a {
        TypeFactory A();

        boolean B(JsonParser.Feature feature);

        void a(com.fasterxml.jackson.databind.a aVar);

        void b(com.fasterxml.jackson.databind.ser.l lVar);

        void c(com.fasterxml.jackson.databind.deser.i iVar);

        Version d();

        void e(com.fasterxml.jackson.databind.deser.j jVar);

        void f(o oVar);

        void g(NamedType... namedTypeArr);

        <C extends com.fasterxml.jackson.core.h> C h();

        void i(com.fasterxml.jackson.databind.type.b bVar);

        void j(com.fasterxml.jackson.databind.ser.l lVar);

        void k(com.fasterxml.jackson.databind.deser.f fVar);

        void l(AnnotationIntrospector annotationIntrospector);

        void m(Class<?>... clsArr);

        boolean n(JsonFactory.Feature feature);

        boolean o(DeserializationFeature deserializationFeature);

        void p(Class<?> cls, Class<?> cls2);

        MutableConfigOverride q(Class<?> cls);

        boolean r(SerializationFeature serializationFeature);

        void s(com.fasterxml.jackson.databind.ser.d dVar);

        void t(Collection<Class<?>> collection);

        boolean u(JsonGenerator.Feature feature);

        void v(com.fasterxml.jackson.databind.deser.b bVar);

        void w(AnnotationIntrospector annotationIntrospector);

        void x(PropertyNamingStrategy propertyNamingStrategy);

        boolean y(MapperFeature mapperFeature);

        void z(com.fasterxml.jackson.databind.introspect.l lVar);
    }

    public Iterable<? extends j> getDependencies() {
        return Collections.emptyList();
    }

    public abstract String getModuleName();

    public Object getTypeId() {
        return getClass().getName();
    }

    public abstract void setupModule(a aVar);

    @Override // com.fasterxml.jackson.core.n
    public abstract Version version();
}
