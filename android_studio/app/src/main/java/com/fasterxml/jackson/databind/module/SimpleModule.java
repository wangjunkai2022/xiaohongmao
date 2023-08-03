package com.fasterxml.jackson.databind.module;

import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.b;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.h;
import com.fasterxml.jackson.databind.j;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.ser.d;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class SimpleModule extends j implements Serializable {

    /* renamed from: o  reason: collision with root package name */
    private static final long f15504o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final AtomicInteger f15505p = new AtomicInteger(1);

    /* renamed from: a  reason: collision with root package name */
    protected final String f15506a;

    /* renamed from: b  reason: collision with root package name */
    protected final Version f15507b;

    /* renamed from: c  reason: collision with root package name */
    protected final boolean f15508c;

    /* renamed from: d  reason: collision with root package name */
    protected SimpleSerializers f15509d;

    /* renamed from: e  reason: collision with root package name */
    protected SimpleDeserializers f15510e;

    /* renamed from: f  reason: collision with root package name */
    protected SimpleSerializers f15511f;

    /* renamed from: g  reason: collision with root package name */
    protected SimpleKeyDeserializers f15512g;

    /* renamed from: h  reason: collision with root package name */
    protected SimpleAbstractTypeResolver f15513h;

    /* renamed from: i  reason: collision with root package name */
    protected SimpleValueInstantiators f15514i;

    /* renamed from: j  reason: collision with root package name */
    protected b f15515j;

    /* renamed from: k  reason: collision with root package name */
    protected d f15516k;

    /* renamed from: l  reason: collision with root package name */
    protected HashMap<Class<?>, Class<?>> f15517l;

    /* renamed from: m  reason: collision with root package name */
    protected LinkedHashSet<NamedType> f15518m;

    /* renamed from: n  reason: collision with root package name */
    protected PropertyNamingStrategy f15519n;

    public SimpleModule() {
        String name;
        this.f15509d = null;
        this.f15510e = null;
        this.f15511f = null;
        this.f15512g = null;
        this.f15513h = null;
        this.f15514i = null;
        this.f15515j = null;
        this.f15516k = null;
        this.f15517l = null;
        this.f15518m = null;
        this.f15519n = null;
        if (getClass() == SimpleModule.class) {
            name = "SimpleModule-" + f15505p.getAndIncrement();
        } else {
            name = getClass().getName();
        }
        this.f15506a = name;
        this.f15507b = Version.unknownVersion();
        this.f15508c = false;
    }

    protected void a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(String.format("Cannot pass `null` as %s", str));
        }
    }

    public <T> SimpleModule addAbstractTypeMapping(Class<T> cls, Class<? extends T> cls2) {
        a(cls, "abstract type to map");
        a(cls2, "concrete type to map to");
        if (this.f15513h == null) {
            this.f15513h = new SimpleAbstractTypeResolver();
        }
        this.f15513h = this.f15513h.addMapping(cls, cls2);
        return this;
    }

    public <T> SimpleModule addDeserializer(Class<T> cls, com.fasterxml.jackson.databind.d<? extends T> dVar) {
        a(cls, "type to register deserializer for");
        a(dVar, "deserializer");
        if (this.f15510e == null) {
            this.f15510e = new SimpleDeserializers();
        }
        this.f15510e.addDeserializer(cls, dVar);
        return this;
    }

    public SimpleModule addKeyDeserializer(Class<?> cls, h hVar) {
        a(cls, "type to register key deserializer for");
        a(hVar, "key deserializer");
        if (this.f15512g == null) {
            this.f15512g = new SimpleKeyDeserializers();
        }
        this.f15512g.addDeserializer(cls, hVar);
        return this;
    }

    public <T> SimpleModule addKeySerializer(Class<? extends T> cls, g<T> gVar) {
        a(cls, "type to register key serializer for");
        a(gVar, "key serializer");
        if (this.f15511f == null) {
            this.f15511f = new SimpleSerializers();
        }
        this.f15511f.addSerializer(cls, gVar);
        return this;
    }

    public SimpleModule addSerializer(g<?> gVar) {
        a(gVar, "serializer");
        if (this.f15509d == null) {
            this.f15509d = new SimpleSerializers();
        }
        this.f15509d.addSerializer(gVar);
        return this;
    }

    public SimpleModule addValueInstantiator(Class<?> cls, ValueInstantiator valueInstantiator) {
        a(cls, "class to register value instantiator for");
        a(valueInstantiator, "value instantiator");
        if (this.f15514i == null) {
            this.f15514i = new SimpleValueInstantiators();
        }
        this.f15514i = this.f15514i.addValueInstantiator(cls, valueInstantiator);
        return this;
    }

    protected SimpleModule b(PropertyNamingStrategy propertyNamingStrategy) {
        this.f15519n = propertyNamingStrategy;
        return this;
    }

    @Override // com.fasterxml.jackson.databind.j
    public String getModuleName() {
        return this.f15506a;
    }

    @Override // com.fasterxml.jackson.databind.j
    public Object getTypeId() {
        if (this.f15508c) {
            return this.f15506a;
        }
        if (getClass() == SimpleModule.class) {
            return this.f15506a;
        }
        return super.getTypeId();
    }

    public SimpleModule registerSubtypes(Class<?>... clsArr) {
        if (this.f15518m == null) {
            this.f15518m = new LinkedHashSet<>();
        }
        for (Class<?> cls : clsArr) {
            a(cls, "subtype to register");
            this.f15518m.add(new NamedType(cls));
        }
        return this;
    }

    public void setAbstractTypes(SimpleAbstractTypeResolver simpleAbstractTypeResolver) {
        this.f15513h = simpleAbstractTypeResolver;
    }

    public SimpleModule setDeserializerModifier(b bVar) {
        this.f15515j = bVar;
        return this;
    }

    public void setDeserializers(SimpleDeserializers simpleDeserializers) {
        this.f15510e = simpleDeserializers;
    }

    public void setKeyDeserializers(SimpleKeyDeserializers simpleKeyDeserializers) {
        this.f15512g = simpleKeyDeserializers;
    }

    public void setKeySerializers(SimpleSerializers simpleSerializers) {
        this.f15511f = simpleSerializers;
    }

    public SimpleModule setMixInAnnotation(Class<?> cls, Class<?> cls2) {
        a(cls, "target type");
        a(cls2, "mixin class");
        if (this.f15517l == null) {
            this.f15517l = new HashMap<>();
        }
        this.f15517l.put(cls, cls2);
        return this;
    }

    public SimpleModule setSerializerModifier(d dVar) {
        this.f15516k = dVar;
        return this;
    }

    public void setSerializers(SimpleSerializers simpleSerializers) {
        this.f15509d = simpleSerializers;
    }

    public void setValueInstantiators(SimpleValueInstantiators simpleValueInstantiators) {
        this.f15514i = simpleValueInstantiators;
    }

    @Override // com.fasterxml.jackson.databind.j
    public void setupModule(j.a aVar) {
        SimpleSerializers simpleSerializers = this.f15509d;
        if (simpleSerializers != null) {
            aVar.b(simpleSerializers);
        }
        SimpleDeserializers simpleDeserializers = this.f15510e;
        if (simpleDeserializers != null) {
            aVar.c(simpleDeserializers);
        }
        SimpleSerializers simpleSerializers2 = this.f15511f;
        if (simpleSerializers2 != null) {
            aVar.j(simpleSerializers2);
        }
        SimpleKeyDeserializers simpleKeyDeserializers = this.f15512g;
        if (simpleKeyDeserializers != null) {
            aVar.e(simpleKeyDeserializers);
        }
        SimpleAbstractTypeResolver simpleAbstractTypeResolver = this.f15513h;
        if (simpleAbstractTypeResolver != null) {
            aVar.a(simpleAbstractTypeResolver);
        }
        SimpleValueInstantiators simpleValueInstantiators = this.f15514i;
        if (simpleValueInstantiators != null) {
            aVar.f(simpleValueInstantiators);
        }
        b bVar = this.f15515j;
        if (bVar != null) {
            aVar.v(bVar);
        }
        d dVar = this.f15516k;
        if (dVar != null) {
            aVar.s(dVar);
        }
        LinkedHashSet<NamedType> linkedHashSet = this.f15518m;
        if (linkedHashSet != null && linkedHashSet.size() > 0) {
            LinkedHashSet<NamedType> linkedHashSet2 = this.f15518m;
            aVar.g((NamedType[]) linkedHashSet2.toArray(new NamedType[linkedHashSet2.size()]));
        }
        PropertyNamingStrategy propertyNamingStrategy = this.f15519n;
        if (propertyNamingStrategy != null) {
            aVar.x(propertyNamingStrategy);
        }
        HashMap<Class<?>, Class<?>> hashMap = this.f15517l;
        if (hashMap != null) {
            for (Map.Entry<Class<?>, Class<?>> entry : hashMap.entrySet()) {
                aVar.p(entry.getKey(), entry.getValue());
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.j, com.fasterxml.jackson.core.n
    public Version version() {
        return this.f15507b;
    }

    public <T> SimpleModule addSerializer(Class<? extends T> cls, g<T> gVar) {
        a(cls, "type to register serializer for");
        a(gVar, "serializer");
        if (this.f15509d == null) {
            this.f15509d = new SimpleSerializers();
        }
        this.f15509d.addSerializer(cls, gVar);
        return this;
    }

    public SimpleModule registerSubtypes(NamedType... namedTypeArr) {
        if (this.f15518m == null) {
            this.f15518m = new LinkedHashSet<>();
        }
        for (NamedType namedType : namedTypeArr) {
            a(namedType, "subtype to register");
            this.f15518m.add(namedType);
        }
        return this;
    }

    public SimpleModule registerSubtypes(Collection<Class<?>> collection) {
        if (this.f15518m == null) {
            this.f15518m = new LinkedHashSet<>();
        }
        for (Class<?> cls : collection) {
            a(cls, "subtype to register");
            this.f15518m.add(new NamedType(cls));
        }
        return this;
    }

    public SimpleModule(String str) {
        this(str, Version.unknownVersion());
    }

    public SimpleModule(Version version) {
        this(version.getArtifactId(), version);
    }

    public SimpleModule(String str, Version version) {
        this.f15509d = null;
        this.f15510e = null;
        this.f15511f = null;
        this.f15512g = null;
        this.f15513h = null;
        this.f15514i = null;
        this.f15515j = null;
        this.f15516k = null;
        this.f15517l = null;
        this.f15518m = null;
        this.f15519n = null;
        this.f15506a = str;
        this.f15507b = version;
        this.f15508c = true;
    }

    public SimpleModule(String str, Version version, Map<Class<?>, com.fasterxml.jackson.databind.d<?>> map) {
        this(str, version, map, null);
    }

    public SimpleModule(String str, Version version, List<g<?>> list) {
        this(str, version, null, list);
    }

    public SimpleModule(String str, Version version, Map<Class<?>, com.fasterxml.jackson.databind.d<?>> map, List<g<?>> list) {
        this.f15509d = null;
        this.f15510e = null;
        this.f15511f = null;
        this.f15512g = null;
        this.f15513h = null;
        this.f15514i = null;
        this.f15515j = null;
        this.f15516k = null;
        this.f15517l = null;
        this.f15518m = null;
        this.f15519n = null;
        this.f15506a = str;
        this.f15508c = true;
        this.f15507b = version;
        if (map != null) {
            this.f15510e = new SimpleDeserializers(map);
        }
        if (list != null) {
            this.f15509d = new SimpleSerializers(list);
        }
    }
}
