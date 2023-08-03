package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.node.ObjectNode;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class DefaultSerializerProvider extends com.fasterxml.jackson.databind.l implements Serializable {

    /* renamed from: s  reason: collision with root package name */
    private static final long f15617s = 1;

    /* renamed from: p  reason: collision with root package name */
    protected transient Map<Object, com.fasterxml.jackson.databind.ser.impl.f> f15618p;

    /* renamed from: q  reason: collision with root package name */
    protected transient ArrayList<ObjectIdGenerator<?>> f15619q;

    /* renamed from: r  reason: collision with root package name */
    protected transient JsonGenerator f15620r;

    /* loaded from: classes.dex */
    public static final class Impl extends DefaultSerializerProvider {

        /* renamed from: t  reason: collision with root package name */
        private static final long f15621t = 1;

        public Impl() {
        }

        @Override // com.fasterxml.jackson.databind.ser.DefaultSerializerProvider
        public DefaultSerializerProvider copy() {
            if (Impl.class != Impl.class) {
                return super.copy();
            }
            return new Impl(this);
        }

        public Impl(Impl impl) {
            super(impl);
        }

        @Override // com.fasterxml.jackson.databind.ser.DefaultSerializerProvider
        public Impl createInstance(SerializationConfig serializationConfig, k kVar) {
            return new Impl(this, serializationConfig, kVar);
        }

        protected Impl(com.fasterxml.jackson.databind.l lVar, SerializationConfig serializationConfig, k kVar) {
            super(lVar, serializationConfig, kVar);
        }
    }

    protected DefaultSerializerProvider() {
    }

    private final void v(JsonGenerator jsonGenerator, Object obj, com.fasterxml.jackson.databind.g<Object> gVar) throws IOException {
        try {
            gVar.serialize(obj, jsonGenerator, this);
        } catch (Exception e4) {
            throw y(jsonGenerator, e4);
        }
    }

    private final void w(JsonGenerator jsonGenerator, Object obj, com.fasterxml.jackson.databind.g<Object> gVar, PropertyName propertyName) throws IOException {
        try {
            jsonGenerator.K1();
            jsonGenerator.U0(propertyName.simpleAsEncoded(this.f15485b));
            gVar.serialize(obj, jsonGenerator, this);
            jsonGenerator.S0();
        } catch (Exception e4) {
            throw y(jsonGenerator, e4);
        }
    }

    private IOException y(JsonGenerator jsonGenerator, Exception exc) {
        if (exc instanceof IOException) {
            return (IOException) exc;
        }
        String q9 = com.fasterxml.jackson.databind.util.g.q(exc);
        if (q9 == null) {
            q9 = "[no message for " + exc.getClass().getName() + "]";
        }
        return new JsonMappingException(jsonGenerator, q9, exc);
    }

    public void acceptJsonFormatVisitor(JavaType javaType, com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar) throws JsonMappingException {
        if (javaType != null) {
            fVar.n(this);
            findValueSerializer(javaType, (BeanProperty) null).acceptJsonFormatVisitor(fVar, javaType);
            return;
        }
        throw new IllegalArgumentException("A class must be provided");
    }

    public int cachedSerializersCount() {
        return this.f15488e.i();
    }

    public DefaultSerializerProvider copy() {
        throw new IllegalStateException("DefaultSerializerProvider sub-class not overriding copy()");
    }

    public abstract DefaultSerializerProvider createInstance(SerializationConfig serializationConfig, k kVar);

    @Override // com.fasterxml.jackson.databind.l
    public com.fasterxml.jackson.databind.ser.impl.f findObjectId(Object obj, ObjectIdGenerator<?> objectIdGenerator) {
        Map<Object, com.fasterxml.jackson.databind.ser.impl.f> map = this.f15618p;
        if (map == null) {
            this.f15618p = u();
        } else {
            com.fasterxml.jackson.databind.ser.impl.f fVar = map.get(obj);
            if (fVar != null) {
                return fVar;
            }
        }
        ObjectIdGenerator<?> objectIdGenerator2 = null;
        ArrayList<ObjectIdGenerator<?>> arrayList = this.f15619q;
        if (arrayList == null) {
            this.f15619q = new ArrayList<>(8);
        } else {
            int i4 = 0;
            int size = arrayList.size();
            while (true) {
                if (i4 >= size) {
                    break;
                }
                ObjectIdGenerator<?> objectIdGenerator3 = this.f15619q.get(i4);
                if (objectIdGenerator3.canUseFor(objectIdGenerator)) {
                    objectIdGenerator2 = objectIdGenerator3;
                    break;
                }
                i4++;
            }
        }
        if (objectIdGenerator2 == null) {
            objectIdGenerator2 = objectIdGenerator.newForSerialization(this);
            this.f15619q.add(objectIdGenerator2);
        }
        com.fasterxml.jackson.databind.ser.impl.f fVar2 = new com.fasterxml.jackson.databind.ser.impl.f(objectIdGenerator2);
        this.f15618p.put(obj, fVar2);
        return fVar2;
    }

    public void flushCachedSerializers() {
        this.f15488e.g();
    }

    @Deprecated
    public d2.a generateJsonSchema(Class<?> cls) throws JsonMappingException {
        com.fasterxml.jackson.databind.g<Object> findValueSerializer = findValueSerializer(cls, (BeanProperty) null);
        com.fasterxml.jackson.databind.e schema = findValueSerializer instanceof d2.c ? ((d2.c) findValueSerializer).getSchema(this, null) : d2.a.a();
        if (schema instanceof ObjectNode) {
            return new d2.a((ObjectNode) schema);
        }
        throw new IllegalArgumentException("Class " + cls.getName() + " would not be serialized as a JSON object and therefore has no schema");
    }

    @Override // com.fasterxml.jackson.databind.l
    public JsonGenerator getGenerator() {
        return this.f15620r;
    }

    public boolean hasSerializerFor(Class<?> cls, AtomicReference<Throwable> atomicReference) {
        if (cls != Object.class || this.f15485b.isEnabled(SerializationFeature.FAIL_ON_EMPTY_BEANS)) {
            try {
                return p(cls) != null;
            } catch (JsonMappingException e4) {
                if (atomicReference != null) {
                    atomicReference.set(e4);
                }
                return false;
            } catch (RuntimeException e10) {
                if (atomicReference != null) {
                    atomicReference.set(e10);
                    return false;
                }
                throw e10;
            }
        }
        return true;
    }

    @Override // com.fasterxml.jackson.databind.l
    public Object includeFilterInstance(com.fasterxml.jackson.databind.introspect.k kVar, Class<?> cls) {
        if (cls == null) {
            return null;
        }
        com.fasterxml.jackson.databind.cfg.c handlerInstantiator = this.f15485b.getHandlerInstantiator();
        Object c10 = handlerInstantiator != null ? handlerInstantiator.c(this.f15485b, kVar, cls) : null;
        return c10 == null ? com.fasterxml.jackson.databind.util.g.n(cls, this.f15485b.canOverrideAccessModifiers()) : c10;
    }

    @Override // com.fasterxml.jackson.databind.l
    public boolean includeFilterSuppressNulls(Object obj) throws JsonMappingException {
        if (obj == null) {
            return true;
        }
        try {
            return obj.equals(null);
        } catch (Throwable th) {
            reportBadDefinition(obj.getClass(), String.format("Problem determining whether filter of type '%s' should filter out `null` values: (%s) %s", obj.getClass().getName(), th.getClass().getName(), com.fasterxml.jackson.databind.util.g.q(th)), th);
            return false;
        }
    }

    public void serializePolymorphic(JsonGenerator jsonGenerator, Object obj, JavaType javaType, com.fasterxml.jackson.databind.g<Object> gVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        boolean z9;
        this.f15620r = jsonGenerator;
        if (obj == null) {
            x(jsonGenerator);
            return;
        }
        if (javaType != null && !javaType.getRawClass().isAssignableFrom(obj.getClass())) {
            s(obj, javaType);
        }
        if (gVar == null) {
            if (javaType != null && javaType.isContainerType()) {
                gVar = findValueSerializer(javaType, (BeanProperty) null);
            } else {
                gVar = findValueSerializer(obj.getClass(), (BeanProperty) null);
            }
        }
        PropertyName fullRootName = this.f15485b.getFullRootName();
        if (fullRootName == null) {
            z9 = this.f15485b.isEnabled(SerializationFeature.WRAP_ROOT_VALUE);
            if (z9) {
                jsonGenerator.K1();
                jsonGenerator.U0(this.f15485b.findRootName(obj.getClass()).simpleAsEncoded(this.f15485b));
            }
        } else if (fullRootName.isEmpty()) {
            z9 = false;
        } else {
            jsonGenerator.K1();
            jsonGenerator.V0(fullRootName.getSimpleName());
            z9 = true;
        }
        try {
            gVar.serializeWithType(obj, jsonGenerator, this, fVar);
            if (z9) {
                jsonGenerator.S0();
            }
        } catch (Exception e4) {
            throw y(jsonGenerator, e4);
        }
    }

    public void serializeValue(JsonGenerator jsonGenerator, Object obj) throws IOException {
        this.f15620r = jsonGenerator;
        if (obj == null) {
            x(jsonGenerator);
            return;
        }
        Class<?> cls = obj.getClass();
        com.fasterxml.jackson.databind.g<Object> findTypedValueSerializer = findTypedValueSerializer(cls, true, (BeanProperty) null);
        PropertyName fullRootName = this.f15485b.getFullRootName();
        if (fullRootName == null) {
            if (this.f15485b.isEnabled(SerializationFeature.WRAP_ROOT_VALUE)) {
                w(jsonGenerator, obj, findTypedValueSerializer, this.f15485b.findRootName(cls));
                return;
            }
        } else if (!fullRootName.isEmpty()) {
            w(jsonGenerator, obj, findTypedValueSerializer, fullRootName);
            return;
        }
        v(jsonGenerator, obj, findTypedValueSerializer);
    }

    @Override // com.fasterxml.jackson.databind.l
    public com.fasterxml.jackson.databind.g<Object> serializerInstance(com.fasterxml.jackson.databind.introspect.a aVar, Object obj) throws JsonMappingException {
        com.fasterxml.jackson.databind.g<?> gVar;
        if (obj == null) {
            return null;
        }
        if (obj instanceof com.fasterxml.jackson.databind.g) {
            gVar = (com.fasterxml.jackson.databind.g) obj;
        } else {
            if (!(obj instanceof Class)) {
                JavaType type = aVar.getType();
                reportBadDefinition(type, "AnnotationIntrospector returned serializer definition of type " + obj.getClass().getName() + "; expected type JsonSerializer or Class<JsonSerializer> instead");
            }
            Class<?> cls = (Class) obj;
            if (cls == g.a.class || com.fasterxml.jackson.databind.util.g.T(cls)) {
                return null;
            }
            if (!com.fasterxml.jackson.databind.g.class.isAssignableFrom(cls)) {
                JavaType type2 = aVar.getType();
                reportBadDefinition(type2, "AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<JsonSerializer>");
            }
            com.fasterxml.jackson.databind.cfg.c handlerInstantiator = this.f15485b.getHandlerInstantiator();
            com.fasterxml.jackson.databind.g<?> h4 = handlerInstantiator != null ? handlerInstantiator.h(this.f15485b, aVar, cls) : null;
            gVar = h4 == null ? (com.fasterxml.jackson.databind.g) com.fasterxml.jackson.databind.util.g.n(cls, this.f15485b.canOverrideAccessModifiers()) : h4;
        }
        return r(gVar);
    }

    protected Map<Object, com.fasterxml.jackson.databind.ser.impl.f> u() {
        if (isEnabled(SerializationFeature.USE_EQUALITY_FOR_OBJECT_ID)) {
            return new HashMap();
        }
        return new IdentityHashMap();
    }

    protected void x(JsonGenerator jsonGenerator) throws IOException {
        try {
            getDefaultNullValueSerializer().serialize(null, jsonGenerator, this);
        } catch (Exception e4) {
            throw y(jsonGenerator, e4);
        }
    }

    protected DefaultSerializerProvider(com.fasterxml.jackson.databind.l lVar, SerializationConfig serializationConfig, k kVar) {
        super(lVar, serializationConfig, kVar);
    }

    protected DefaultSerializerProvider(DefaultSerializerProvider defaultSerializerProvider) {
        super(defaultSerializerProvider);
    }

    public void serializeValue(JsonGenerator jsonGenerator, Object obj, JavaType javaType) throws IOException {
        this.f15620r = jsonGenerator;
        if (obj == null) {
            x(jsonGenerator);
            return;
        }
        if (!javaType.getRawClass().isAssignableFrom(obj.getClass())) {
            s(obj, javaType);
        }
        com.fasterxml.jackson.databind.g<Object> findTypedValueSerializer = findTypedValueSerializer(javaType, true, (BeanProperty) null);
        PropertyName fullRootName = this.f15485b.getFullRootName();
        if (fullRootName == null) {
            if (this.f15485b.isEnabled(SerializationFeature.WRAP_ROOT_VALUE)) {
                w(jsonGenerator, obj, findTypedValueSerializer, this.f15485b.findRootName(javaType));
                return;
            }
        } else if (!fullRootName.isEmpty()) {
            w(jsonGenerator, obj, findTypedValueSerializer, fullRootName);
            return;
        }
        v(jsonGenerator, obj, findTypedValueSerializer);
    }

    public void serializeValue(JsonGenerator jsonGenerator, Object obj, JavaType javaType, com.fasterxml.jackson.databind.g<Object> gVar) throws IOException {
        PropertyName findRootName;
        this.f15620r = jsonGenerator;
        if (obj == null) {
            x(jsonGenerator);
            return;
        }
        if (javaType != null && !javaType.getRawClass().isAssignableFrom(obj.getClass())) {
            s(obj, javaType);
        }
        if (gVar == null) {
            gVar = findTypedValueSerializer(javaType, true, (BeanProperty) null);
        }
        PropertyName fullRootName = this.f15485b.getFullRootName();
        if (fullRootName == null) {
            if (this.f15485b.isEnabled(SerializationFeature.WRAP_ROOT_VALUE)) {
                if (javaType == null) {
                    findRootName = this.f15485b.findRootName(obj.getClass());
                } else {
                    findRootName = this.f15485b.findRootName(javaType);
                }
                w(jsonGenerator, obj, gVar, findRootName);
                return;
            }
        } else if (!fullRootName.isEmpty()) {
            w(jsonGenerator, obj, gVar, fullRootName);
            return;
        }
        v(jsonGenerator, obj, gVar);
    }
}
