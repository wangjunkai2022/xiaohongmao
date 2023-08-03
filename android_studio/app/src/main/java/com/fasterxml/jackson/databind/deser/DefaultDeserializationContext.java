package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.c0;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.InjectableValues;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.d;
import com.fasterxml.jackson.databind.deser.impl.j;
import com.fasterxml.jackson.databind.h;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class DefaultDeserializationContext extends DeserializationContext implements Serializable {

    /* renamed from: r  reason: collision with root package name */
    private static final long f14623r = 1;

    /* renamed from: p  reason: collision with root package name */
    protected transient LinkedHashMap<ObjectIdGenerator.IdKey, com.fasterxml.jackson.databind.deser.impl.j> f14624p;

    /* renamed from: q  reason: collision with root package name */
    private List<c0> f14625q;

    /* loaded from: classes.dex */
    public static final class Impl extends DefaultDeserializationContext {

        /* renamed from: s  reason: collision with root package name */
        private static final long f14626s = 1;

        public Impl(g gVar) {
            super(gVar, (DeserializerCache) null);
        }

        @Override // com.fasterxml.jackson.databind.deser.DefaultDeserializationContext
        public DefaultDeserializationContext copy() {
            com.fasterxml.jackson.databind.util.g.z0(Impl.class, this, "copy");
            return new Impl(this);
        }

        @Override // com.fasterxml.jackson.databind.deser.DefaultDeserializationContext
        public DefaultDeserializationContext createDummyInstance(DeserializationConfig deserializationConfig) {
            return new Impl(this, deserializationConfig);
        }

        @Override // com.fasterxml.jackson.databind.deser.DefaultDeserializationContext
        public DefaultDeserializationContext createInstance(DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues) {
            return new Impl(this, deserializationConfig, jsonParser, injectableValues);
        }

        @Override // com.fasterxml.jackson.databind.deser.DefaultDeserializationContext
        public DefaultDeserializationContext with(g gVar) {
            return new Impl(this, gVar);
        }

        private Impl(Impl impl, DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues) {
            super(impl, deserializationConfig, jsonParser, injectableValues);
        }

        private Impl(Impl impl) {
            super(impl);
        }

        private Impl(Impl impl, g gVar) {
            super(impl, gVar);
        }

        private Impl(Impl impl, DeserializationConfig deserializationConfig) {
            super(impl, deserializationConfig);
        }
    }

    protected DefaultDeserializationContext(g gVar, DeserializerCache deserializerCache) {
        super(gVar, deserializerCache);
    }

    @Override // com.fasterxml.jackson.databind.DeserializationContext
    public void checkUnresolvedObjectId() throws UnresolvedForwardReference {
        if (this.f14624p != null && isEnabled(DeserializationFeature.FAIL_ON_UNRESOLVED_OBJECT_IDS)) {
            UnresolvedForwardReference unresolvedForwardReference = null;
            for (Map.Entry<ObjectIdGenerator.IdKey, com.fasterxml.jackson.databind.deser.impl.j> entry : this.f14624p.entrySet()) {
                com.fasterxml.jackson.databind.deser.impl.j value = entry.getValue();
                if (value.e() && !s(value)) {
                    if (unresolvedForwardReference == null) {
                        unresolvedForwardReference = new UnresolvedForwardReference(getParser(), "Unresolved forward references for: ").withStackTrace();
                    }
                    Object obj = value.c().key;
                    Iterator<j.a> f10 = value.f();
                    while (f10.hasNext()) {
                        j.a next = f10.next();
                        unresolvedForwardReference.addUnresolvedId(obj, next.a(), next.b());
                    }
                }
            }
            if (unresolvedForwardReference != null) {
                throw unresolvedForwardReference;
            }
        }
    }

    public DefaultDeserializationContext copy() {
        throw new IllegalStateException("DefaultDeserializationContext sub-class not overriding copy()");
    }

    public abstract DefaultDeserializationContext createDummyInstance(DeserializationConfig deserializationConfig);

    public abstract DefaultDeserializationContext createInstance(DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues);

    @Override // com.fasterxml.jackson.databind.DeserializationContext
    public com.fasterxml.jackson.databind.d<Object> deserializerInstance(com.fasterxml.jackson.databind.introspect.a aVar, Object obj) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> dVar;
        if (obj == null) {
            return null;
        }
        if (obj instanceof com.fasterxml.jackson.databind.d) {
            dVar = (com.fasterxml.jackson.databind.d) obj;
        } else if (obj instanceof Class) {
            Class<?> cls = (Class) obj;
            if (cls == d.a.class || com.fasterxml.jackson.databind.util.g.T(cls)) {
                return null;
            }
            if (com.fasterxml.jackson.databind.d.class.isAssignableFrom(cls)) {
                com.fasterxml.jackson.databind.cfg.c handlerInstantiator = this.f14336d.getHandlerInstantiator();
                com.fasterxml.jackson.databind.d<?> b10 = handlerInstantiator != null ? handlerInstantiator.b(this.f14336d, aVar, cls) : null;
                dVar = b10 == null ? (com.fasterxml.jackson.databind.d) com.fasterxml.jackson.databind.util.g.n(cls, this.f14336d.canOverrideAccessModifiers()) : b10;
            } else {
                throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<JsonDeserializer>");
            }
        } else {
            throw new IllegalStateException("AnnotationIntrospector returned deserializer definition of type " + obj.getClass().getName() + "; expected type JsonDeserializer or Class<JsonDeserializer> instead");
        }
        if (dVar instanceof m) {
            ((m) dVar).resolve(this);
        }
        return dVar;
    }

    @Override // com.fasterxml.jackson.databind.DeserializationContext
    public com.fasterxml.jackson.databind.deser.impl.j findObjectId(Object obj, ObjectIdGenerator<?> objectIdGenerator, c0 c0Var) {
        c0 c0Var2 = null;
        if (obj == null) {
            return null;
        }
        ObjectIdGenerator.IdKey key = objectIdGenerator.key(obj);
        LinkedHashMap<ObjectIdGenerator.IdKey, com.fasterxml.jackson.databind.deser.impl.j> linkedHashMap = this.f14624p;
        if (linkedHashMap == null) {
            this.f14624p = new LinkedHashMap<>();
        } else {
            com.fasterxml.jackson.databind.deser.impl.j jVar = linkedHashMap.get(key);
            if (jVar != null) {
                return jVar;
            }
        }
        List<c0> list = this.f14625q;
        if (list == null) {
            this.f14625q = new ArrayList(8);
        } else {
            Iterator<c0> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                c0 next = it.next();
                if (next.b(c0Var)) {
                    c0Var2 = next;
                    break;
                }
            }
        }
        if (c0Var2 == null) {
            c0Var2 = c0Var.d(this);
            this.f14625q.add(c0Var2);
        }
        com.fasterxml.jackson.databind.deser.impl.j r9 = r(key);
        r9.h(c0Var2);
        this.f14624p.put(key, r9);
        return r9;
    }

    @Override // com.fasterxml.jackson.databind.DeserializationContext
    public final com.fasterxml.jackson.databind.h keyDeserializerInstance(com.fasterxml.jackson.databind.introspect.a aVar, Object obj) throws JsonMappingException {
        com.fasterxml.jackson.databind.h hVar;
        if (obj == null) {
            return null;
        }
        if (obj instanceof com.fasterxml.jackson.databind.h) {
            hVar = (com.fasterxml.jackson.databind.h) obj;
        } else if (obj instanceof Class) {
            Class<?> cls = (Class) obj;
            if (cls == h.a.class || com.fasterxml.jackson.databind.util.g.T(cls)) {
                return null;
            }
            if (com.fasterxml.jackson.databind.h.class.isAssignableFrom(cls)) {
                com.fasterxml.jackson.databind.cfg.c handlerInstantiator = this.f14336d.getHandlerInstantiator();
                com.fasterxml.jackson.databind.h d4 = handlerInstantiator != null ? handlerInstantiator.d(this.f14336d, aVar, cls) : null;
                hVar = d4 == null ? (com.fasterxml.jackson.databind.h) com.fasterxml.jackson.databind.util.g.n(cls, this.f14336d.canOverrideAccessModifiers()) : d4;
            } else {
                throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<KeyDeserializer>");
            }
        } else {
            throw new IllegalStateException("AnnotationIntrospector returned key deserializer definition of type " + obj.getClass().getName() + "; expected type KeyDeserializer or Class<KeyDeserializer> instead");
        }
        if (hVar instanceof m) {
            ((m) hVar).resolve(this);
        }
        return hVar;
    }

    protected Object q(JsonParser jsonParser, JavaType javaType, com.fasterxml.jackson.databind.d<Object> dVar, Object obj) throws IOException {
        Object deserialize;
        String simpleName = this.f14336d.findRootName(javaType).getSimpleName();
        JsonToken W = jsonParser.W();
        JsonToken jsonToken = JsonToken.START_OBJECT;
        if (W != jsonToken) {
            reportWrongTokenException(javaType, jsonToken, "Current token not START_OBJECT (needed to unwrap root name %s), but %s", com.fasterxml.jackson.databind.util.g.h0(simpleName), jsonParser.W());
        }
        JsonToken y12 = jsonParser.y1();
        JsonToken jsonToken2 = JsonToken.FIELD_NAME;
        if (y12 != jsonToken2) {
            reportWrongTokenException(javaType, jsonToken2, "Current token not FIELD_NAME (to contain expected root name %s), but %s", com.fasterxml.jackson.databind.util.g.h0(simpleName), jsonParser.W());
        }
        String M = jsonParser.M();
        if (!simpleName.equals(M)) {
            reportPropertyInputMismatch(javaType, M, "Root name (%s) does not match expected (%s) for type %s", com.fasterxml.jackson.databind.util.g.h0(M), com.fasterxml.jackson.databind.util.g.h0(simpleName), com.fasterxml.jackson.databind.util.g.P(javaType));
        }
        jsonParser.y1();
        if (obj == null) {
            deserialize = dVar.deserialize(jsonParser, this);
        } else {
            deserialize = dVar.deserialize(jsonParser, this, obj);
        }
        JsonToken y13 = jsonParser.y1();
        JsonToken jsonToken3 = JsonToken.END_OBJECT;
        if (y13 != jsonToken3) {
            reportWrongTokenException(javaType, jsonToken3, "Current token not END_OBJECT (to match wrapper object with root name %s), but %s", com.fasterxml.jackson.databind.util.g.h0(simpleName), jsonParser.W());
        }
        return deserialize;
    }

    protected com.fasterxml.jackson.databind.deser.impl.j r(ObjectIdGenerator.IdKey idKey) {
        return new com.fasterxml.jackson.databind.deser.impl.j(idKey);
    }

    public Object readRootValue(JsonParser jsonParser, JavaType javaType, com.fasterxml.jackson.databind.d<Object> dVar, Object obj) throws IOException {
        if (this.f14336d.useRootWrapping()) {
            return q(jsonParser, javaType, dVar, obj);
        }
        if (obj == null) {
            return dVar.deserialize(jsonParser, this);
        }
        return dVar.deserialize(jsonParser, this, obj);
    }

    protected boolean s(com.fasterxml.jackson.databind.deser.impl.j jVar) {
        return jVar.i(this);
    }

    public abstract DefaultDeserializationContext with(g gVar);

    protected DefaultDeserializationContext(DefaultDeserializationContext defaultDeserializationContext, DeserializationConfig deserializationConfig, JsonParser jsonParser, InjectableValues injectableValues) {
        super(defaultDeserializationContext, deserializationConfig, jsonParser, injectableValues);
    }

    protected DefaultDeserializationContext(DefaultDeserializationContext defaultDeserializationContext, DeserializationConfig deserializationConfig) {
        super(defaultDeserializationContext, deserializationConfig);
    }

    protected DefaultDeserializationContext(DefaultDeserializationContext defaultDeserializationContext, g gVar) {
        super(defaultDeserializationContext, gVar);
    }

    protected DefaultDeserializationContext(DefaultDeserializationContext defaultDeserializationContext) {
        super(defaultDeserializationContext);
    }
}
