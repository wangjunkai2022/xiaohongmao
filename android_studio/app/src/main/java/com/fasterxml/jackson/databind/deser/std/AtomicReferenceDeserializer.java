package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class AtomicReferenceDeserializer extends ReferenceTypeDeserializer<AtomicReference<Object>> {

    /* renamed from: k  reason: collision with root package name */
    private static final long f14848k = 1;

    public AtomicReferenceDeserializer(JavaType javaType, ValueInstantiator valueInstantiator, com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        super(javaType, valueInstantiator, bVar, dVar);
    }

    @Override // com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
    public Object getAbsentValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ReferenceTypeDeserializer, com.fasterxml.jackson.databind.d
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return getNullValue(deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ReferenceTypeDeserializer, com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return Boolean.TRUE;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ReferenceTypeDeserializer
    /* renamed from: withResolved  reason: avoid collision after fix types in other method */
    public /* bridge */ /* synthetic */ ReferenceTypeDeserializer<AtomicReference<Object>> withResolved2(com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.d dVar) {
        return withResolved(bVar, (com.fasterxml.jackson.databind.d<?>) dVar);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ReferenceTypeDeserializer, com.fasterxml.jackson.databind.d, com.fasterxml.jackson.databind.deser.l
    public AtomicReference<Object> getNullValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return new AtomicReference<>(this.f14979i.getNullValue(deserializationContext));
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ReferenceTypeDeserializer
    public Object getReferenced(AtomicReference<Object> atomicReference) {
        return atomicReference.get();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ReferenceTypeDeserializer
    public AtomicReference<Object> referenceValue(Object obj) {
        return new AtomicReference<>(obj);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ReferenceTypeDeserializer
    public AtomicReference<Object> updateReference(AtomicReference<Object> atomicReference, Object obj) {
        atomicReference.set(obj);
        return atomicReference;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ReferenceTypeDeserializer
    public ReferenceTypeDeserializer<AtomicReference<Object>> withResolved(com.fasterxml.jackson.databind.jsontype.b bVar, com.fasterxml.jackson.databind.d<?> dVar) {
        return new AtomicReferenceDeserializer(this.f14976f, this.f14977g, bVar, dVar);
    }
}
