package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.m;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.g;
import com.fasterxml.jackson.databind.util.h;
import java.io.IOException;

/* loaded from: classes.dex */
public class StdDelegatingDeserializer<T> extends StdDeserializer<T> implements com.fasterxml.jackson.databind.deser.c, m {

    /* renamed from: i  reason: collision with root package name */
    private static final long f14981i = 1;

    /* renamed from: f  reason: collision with root package name */
    protected final h<Object, T> f14982f;

    /* renamed from: g  reason: collision with root package name */
    protected final JavaType f14983g;

    /* renamed from: h  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<Object> f14984h;

    public StdDelegatingDeserializer(h<?, T> hVar) {
        super(Object.class);
        this.f14982f = hVar;
        this.f14983g = null;
        this.f14984h = null;
    }

    protected Object C0(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        throw new UnsupportedOperationException(String.format("Cannot update object of type %s (using deserializer for type %s)" + obj.getClass().getName(), this.f14983g));
    }

    protected T D0(Object obj) {
        return this.f14982f.convert(obj);
    }

    protected StdDelegatingDeserializer<T> E0(h<Object, T> hVar, JavaType javaType, com.fasterxml.jackson.databind.d<?> dVar) {
        g.z0(StdDelegatingDeserializer.class, this, "withDelegate");
        return new StdDelegatingDeserializer<>(hVar, javaType, dVar);
    }

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<?> dVar = this.f14984h;
        if (dVar != null) {
            com.fasterxml.jackson.databind.d<?> handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(dVar, beanProperty, this.f14983g);
            return handleSecondaryContextualization != this.f14984h ? E0(this.f14982f, this.f14983g, handleSecondaryContextualization) : this;
        }
        JavaType a10 = this.f14982f.a(deserializationContext.getTypeFactory());
        return E0(this.f14982f, a10, deserializationContext.findContextualValueDeserializer(a10, beanProperty));
    }

    @Override // com.fasterxml.jackson.databind.d
    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object deserialize = this.f14984h.deserialize(jsonParser, deserializationContext);
        if (deserialize == null) {
            return null;
        }
        return D0(deserialize);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        Object deserialize = this.f14984h.deserialize(jsonParser, deserializationContext);
        if (deserialize == null) {
            return null;
        }
        return D0(deserialize);
    }

    @Override // com.fasterxml.jackson.databind.d
    public com.fasterxml.jackson.databind.d<?> getDelegatee() {
        return this.f14984h;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Class<?> handledType() {
        return this.f14984h.handledType();
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return this.f14984h.logicalType();
    }

    @Override // com.fasterxml.jackson.databind.deser.m
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14984h;
        if (dVar == null || !(dVar instanceof m)) {
            return;
        }
        ((m) dVar).resolve(deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return this.f14984h.supportsUpdate(deserializationConfig);
    }

    @Override // com.fasterxml.jackson.databind.d
    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        if (this.f14983g.getRawClass().isAssignableFrom(obj.getClass())) {
            return (T) this.f14984h.deserialize(jsonParser, deserializationContext, obj);
        }
        return (T) C0(jsonParser, deserializationContext, obj);
    }

    public StdDelegatingDeserializer(h<Object, T> hVar, JavaType javaType, com.fasterxml.jackson.databind.d<?> dVar) {
        super(javaType);
        this.f14982f = hVar;
        this.f14983g = javaType;
        this.f14984h = dVar;
    }

    protected StdDelegatingDeserializer(StdDelegatingDeserializer<T> stdDelegatingDeserializer) {
        super(stdDelegatingDeserializer);
        this.f14982f = stdDelegatingDeserializer.f14982f;
        this.f14983g = stdDelegatingDeserializer.f14983g;
        this.f14984h = stdDelegatingDeserializer.f14984h;
    }
}
