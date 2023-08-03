package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.m;
import com.fasterxml.jackson.databind.e;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class StdNodeBasedDeserializer<T> extends StdDeserializer<T> implements m {

    /* renamed from: g  reason: collision with root package name */
    private static final long f15011g = 1;

    /* renamed from: f  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Object> f15012f;

    protected StdNodeBasedDeserializer(JavaType javaType) {
        super(javaType);
    }

    public abstract T convert(e eVar, DeserializationContext deserializationContext) throws IOException;

    @Override // com.fasterxml.jackson.databind.d
    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return convert((e) this.f15012f.deserialize(jsonParser, deserializationContext), deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return convert((e) this.f15012f.deserializeWithType(jsonParser, deserializationContext, bVar), deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.m
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        this.f15012f = deserializationContext.findRootValueDeserializer(deserializationContext.constructType(e.class));
    }

    protected StdNodeBasedDeserializer(Class<T> cls) {
        super((Class<?>) cls);
    }

    protected StdNodeBasedDeserializer(StdNodeBasedDeserializer<?> stdNodeBasedDeserializer) {
        super(stdNodeBasedDeserializer);
        this.f15012f = stdNodeBasedDeserializer.f15012f;
    }
}
