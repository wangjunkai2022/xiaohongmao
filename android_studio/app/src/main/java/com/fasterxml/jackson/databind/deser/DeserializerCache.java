package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.d;
import com.fasterxml.jackson.databind.deser.std.StdDelegatingDeserializer;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class DeserializerCache implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f14627c = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final LRUMap<JavaType, com.fasterxml.jackson.databind.d<Object>> f14628a;

    /* renamed from: b  reason: collision with root package name */
    protected final HashMap<JavaType, com.fasterxml.jackson.databind.d<Object>> f14629b;

    public DeserializerCache() {
        this(2000);
    }

    private boolean j(JavaType javaType) {
        if (javaType.isContainerType()) {
            JavaType contentType = javaType.getContentType();
            if (contentType == null || (contentType.getValueHandler() == null && contentType.getTypeHandler() == null)) {
                return javaType.isMapLikeType() && javaType.getKeyType().getValueHandler() != null;
            }
            return true;
        }
        return false;
    }

    private Class<?> k(Object obj, String str, Class<?> cls) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Class) {
            Class<?> cls2 = (Class) obj;
            if (cls2 == cls || com.fasterxml.jackson.databind.util.g.T(cls2)) {
                return null;
            }
            return cls2;
        }
        throw new IllegalStateException("AnnotationIntrospector." + str + "() returned value of type " + obj.getClass().getName() + ": expected type JsonSerializer or Class<JsonSerializer> instead");
    }

    private JavaType o(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.introspect.a aVar, JavaType javaType) throws JsonMappingException {
        Object findContentDeserializer;
        JavaType keyType;
        Object findKeyDeserializer;
        com.fasterxml.jackson.databind.h keyDeserializerInstance;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null) {
            return javaType;
        }
        if (javaType.isMapLikeType() && (keyType = javaType.getKeyType()) != null && keyType.getValueHandler() == null && (findKeyDeserializer = annotationIntrospector.findKeyDeserializer(aVar)) != null && (keyDeserializerInstance = deserializationContext.keyDeserializerInstance(aVar, findKeyDeserializer)) != null) {
            javaType = ((MapLikeType) javaType).withKeyValueHandler(keyDeserializerInstance);
        }
        JavaType contentType = javaType.getContentType();
        if (contentType != null && contentType.getValueHandler() == null && (findContentDeserializer = annotationIntrospector.findContentDeserializer(aVar)) != null) {
            com.fasterxml.jackson.databind.d<Object> dVar = null;
            if (findContentDeserializer instanceof com.fasterxml.jackson.databind.d) {
                dVar = (com.fasterxml.jackson.databind.d) findContentDeserializer;
            } else {
                Class<?> k10 = k(findContentDeserializer, "findContentDeserializer", d.a.class);
                if (k10 != null) {
                    dVar = deserializationContext.deserializerInstance(aVar, k10);
                }
            }
            if (dVar != null) {
                javaType = javaType.withContentValueHandler(dVar);
            }
        }
        return annotationIntrospector.refineDeserializationType(deserializationContext.getConfig(), aVar, javaType);
    }

    protected com.fasterxml.jackson.databind.d<Object> a(DeserializationContext deserializationContext, g gVar, JavaType javaType) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<Object> dVar;
        try {
            dVar = c(deserializationContext, gVar, javaType);
        } catch (IllegalArgumentException e4) {
            deserializationContext.reportBadDefinition(javaType, com.fasterxml.jackson.databind.util.g.q(e4));
            dVar = null;
        }
        if (dVar == null) {
            return null;
        }
        boolean z9 = !j(javaType) && dVar.isCachable();
        if (dVar instanceof m) {
            this.f14629b.put(javaType, dVar);
            ((m) dVar).resolve(deserializationContext);
            this.f14629b.remove(javaType);
        }
        if (z9) {
            this.f14628a.put(javaType, dVar);
        }
        return dVar;
    }

    protected com.fasterxml.jackson.databind.d<Object> b(DeserializationContext deserializationContext, g gVar, JavaType javaType) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<Object> dVar;
        synchronized (this.f14629b) {
            com.fasterxml.jackson.databind.d<Object> e4 = e(javaType);
            if (e4 != null) {
                return e4;
            }
            int size = this.f14629b.size();
            if (size <= 0 || (dVar = this.f14629b.get(javaType)) == null) {
                com.fasterxml.jackson.databind.d<Object> a10 = a(deserializationContext, gVar, javaType);
                if (size == 0 && this.f14629b.size() > 0) {
                    this.f14629b.clear();
                }
                return a10;
            }
            return dVar;
        }
    }

    protected com.fasterxml.jackson.databind.d<Object> c(DeserializationContext deserializationContext, g gVar, JavaType javaType) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        if (javaType.isAbstract() || javaType.isMapLikeType() || javaType.isCollectionLikeType()) {
            javaType = gVar.mapAbstractType(config, javaType);
        }
        com.fasterxml.jackson.databind.b introspect = config.introspect(javaType);
        com.fasterxml.jackson.databind.d<Object> n9 = n(deserializationContext, introspect.A());
        if (n9 != null) {
            return n9;
        }
        JavaType o9 = o(deserializationContext, introspect.A(), javaType);
        if (o9 != javaType) {
            introspect = config.introspect(o9);
            javaType = o9;
        }
        Class<?> s9 = introspect.s();
        if (s9 != null) {
            return gVar.createBuilderBasedDeserializer(deserializationContext, javaType, introspect, s9);
        }
        com.fasterxml.jackson.databind.util.h<Object, Object> k10 = introspect.k();
        if (k10 == null) {
            return d(deserializationContext, gVar, javaType, introspect);
        }
        JavaType a10 = k10.a(deserializationContext.getTypeFactory());
        if (!a10.hasRawClass(javaType.getRawClass())) {
            introspect = config.introspect(a10);
        }
        return new StdDelegatingDeserializer(k10, a10, d(deserializationContext, gVar, a10, introspect));
    }

    public int cachedDeserializersCount() {
        return this.f14628a.size();
    }

    protected com.fasterxml.jackson.databind.d<?> d(DeserializationContext deserializationContext, g gVar, JavaType javaType, com.fasterxml.jackson.databind.b bVar) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        if (javaType.isEnumType()) {
            return gVar.createEnumDeserializer(deserializationContext, javaType, bVar);
        }
        if (javaType.isContainerType()) {
            if (javaType.isArrayType()) {
                return gVar.createArrayDeserializer(deserializationContext, (ArrayType) javaType, bVar);
            }
            if (javaType.isMapLikeType() && bVar.l(null).getShape() != JsonFormat.Shape.OBJECT) {
                MapLikeType mapLikeType = (MapLikeType) javaType;
                if (mapLikeType instanceof MapType) {
                    return gVar.createMapDeserializer(deserializationContext, (MapType) mapLikeType, bVar);
                }
                return gVar.createMapLikeDeserializer(deserializationContext, mapLikeType, bVar);
            } else if (javaType.isCollectionLikeType() && bVar.l(null).getShape() != JsonFormat.Shape.OBJECT) {
                CollectionLikeType collectionLikeType = (CollectionLikeType) javaType;
                if (collectionLikeType instanceof CollectionType) {
                    return gVar.createCollectionDeserializer(deserializationContext, (CollectionType) collectionLikeType, bVar);
                }
                return gVar.createCollectionLikeDeserializer(deserializationContext, collectionLikeType, bVar);
            }
        }
        if (javaType.isReferenceType()) {
            return gVar.createReferenceDeserializer(deserializationContext, (ReferenceType) javaType, bVar);
        }
        if (com.fasterxml.jackson.databind.e.class.isAssignableFrom(javaType.getRawClass())) {
            return gVar.createTreeDeserializer(config, javaType, bVar);
        }
        return gVar.createBeanDeserializer(deserializationContext, javaType, bVar);
    }

    protected com.fasterxml.jackson.databind.d<Object> e(JavaType javaType) {
        if (javaType != null) {
            if (j(javaType)) {
                return null;
            }
            return this.f14628a.get(javaType);
        }
        throw new IllegalArgumentException("Null JavaType passed");
    }

    public com.fasterxml.jackson.databind.h findKeyDeserializer(DeserializationContext deserializationContext, g gVar, JavaType javaType) throws JsonMappingException {
        com.fasterxml.jackson.databind.h createKeyDeserializer = gVar.createKeyDeserializer(deserializationContext, javaType);
        if (createKeyDeserializer == null) {
            return h(deserializationContext, javaType);
        }
        if (createKeyDeserializer instanceof m) {
            ((m) createKeyDeserializer).resolve(deserializationContext);
        }
        return createKeyDeserializer;
    }

    public com.fasterxml.jackson.databind.d<Object> findValueDeserializer(DeserializationContext deserializationContext, g gVar, JavaType javaType) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<Object> e4 = e(javaType);
        if (e4 == null) {
            com.fasterxml.jackson.databind.d<Object> b10 = b(deserializationContext, gVar, javaType);
            return b10 == null ? i(deserializationContext, javaType) : b10;
        }
        return e4;
    }

    public void flushCachedDeserializers() {
        this.f14628a.clear();
    }

    protected com.fasterxml.jackson.databind.h h(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        return (com.fasterxml.jackson.databind.h) deserializationContext.reportBadDefinition(javaType, "Cannot find a (Map) Key deserializer for type " + javaType);
    }

    public boolean hasValueDeserializerFor(DeserializationContext deserializationContext, g gVar, JavaType javaType) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<Object> e4 = e(javaType);
        if (e4 == null) {
            e4 = b(deserializationContext, gVar, javaType);
        }
        return e4 != null;
    }

    protected com.fasterxml.jackson.databind.d<Object> i(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        if (!com.fasterxml.jackson.databind.util.g.V(javaType.getRawClass())) {
            return (com.fasterxml.jackson.databind.d) deserializationContext.reportBadDefinition(javaType, "Cannot find a Value deserializer for abstract type " + javaType);
        }
        return (com.fasterxml.jackson.databind.d) deserializationContext.reportBadDefinition(javaType, "Cannot find a Value deserializer for type " + javaType);
    }

    protected com.fasterxml.jackson.databind.util.h<Object, Object> l(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.introspect.a aVar) throws JsonMappingException {
        Object findDeserializationConverter = deserializationContext.getAnnotationIntrospector().findDeserializationConverter(aVar);
        if (findDeserializationConverter == null) {
            return null;
        }
        return deserializationContext.converterInstance(aVar, findDeserializationConverter);
    }

    protected com.fasterxml.jackson.databind.d<Object> m(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.introspect.a aVar, com.fasterxml.jackson.databind.d<Object> dVar) throws JsonMappingException {
        com.fasterxml.jackson.databind.util.h<Object, Object> l10 = l(deserializationContext, aVar);
        return l10 == null ? dVar : new StdDelegatingDeserializer(l10, l10.a(deserializationContext.getTypeFactory()), dVar);
    }

    protected com.fasterxml.jackson.databind.d<Object> n(DeserializationContext deserializationContext, com.fasterxml.jackson.databind.introspect.a aVar) throws JsonMappingException {
        Object findDeserializer = deserializationContext.getAnnotationIntrospector().findDeserializer(aVar);
        if (findDeserializer == null) {
            return null;
        }
        return m(deserializationContext, aVar, deserializationContext.deserializerInstance(aVar, findDeserializer));
    }

    Object p() {
        this.f14629b.clear();
        return this;
    }

    public DeserializerCache(int i4) {
        this.f14629b = new HashMap<>(8);
        this.f14628a = new LRUMap<>(Math.min(64, i4 >> 2), i4);
    }
}
