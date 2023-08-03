package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;
import java.util.Collection;
import java.util.Objects;

@c2.a
/* loaded from: classes.dex */
public final class StringCollectionDeserializer extends ContainerDeserializerBase<Collection<String>> implements com.fasterxml.jackson.databind.deser.c {

    /* renamed from: m  reason: collision with root package name */
    private static final long f15039m = 1;

    /* renamed from: j  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<String> f15040j;

    /* renamed from: k  reason: collision with root package name */
    protected final ValueInstantiator f15041k;

    /* renamed from: l  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<Object> f15042l;

    public StringCollectionDeserializer(JavaType javaType, com.fasterxml.jackson.databind.d<?> dVar, ValueInstantiator valueInstantiator) {
        this(javaType, valueInstantiator, null, dVar, dVar, null);
    }

    private Collection<String> E0(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<String> collection, com.fasterxml.jackson.databind.d<String> dVar) throws IOException {
        String deserialize;
        while (true) {
            try {
                if (jsonParser.x1() == null) {
                    JsonToken W = jsonParser.W();
                    if (W == JsonToken.END_ARRAY) {
                        return collection;
                    }
                    if (W == JsonToken.VALUE_NULL) {
                        if (!this.f14862h) {
                            deserialize = (String) this.f14861g.getNullValue(deserializationContext);
                        }
                    } else {
                        deserialize = dVar.deserialize(jsonParser, deserializationContext);
                    }
                } else {
                    deserialize = dVar.deserialize(jsonParser, deserializationContext);
                }
                collection.add(deserialize);
            } catch (Exception e4) {
                throw JsonMappingException.wrapWithPath(e4, collection, collection.size());
            }
        }
    }

    private final Collection<String> F0(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<String> collection) throws IOException {
        String i02;
        Boolean bool = this.f14863i;
        if (!(bool == Boolean.TRUE || (bool == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)))) {
            if (jsonParser.k1(JsonToken.VALUE_STRING)) {
                return t(jsonParser, deserializationContext);
            }
            return (Collection) deserializationContext.handleUnexpectedToken(this.f14860f, jsonParser);
        }
        com.fasterxml.jackson.databind.d<String> dVar = this.f15040j;
        if (jsonParser.W() == JsonToken.VALUE_NULL) {
            if (this.f14862h) {
                return collection;
            }
            i02 = (String) this.f14861g.getNullValue(deserializationContext);
        } else {
            try {
                i02 = dVar == null ? i0(jsonParser, deserializationContext) : dVar.deserialize(jsonParser, deserializationContext);
            } catch (Exception e4) {
                throw JsonMappingException.wrapWithPath(e4, collection, collection.size());
            }
        }
        collection.add(i02);
        return collection;
    }

    protected StringCollectionDeserializer G0(com.fasterxml.jackson.databind.d<?> dVar, com.fasterxml.jackson.databind.d<?> dVar2, l lVar, Boolean bool) {
        return (Objects.equals(this.f14863i, bool) && this.f14861g == lVar && this.f15040j == dVar2 && this.f15042l == dVar) ? this : new StringCollectionDeserializer(this.f14860f, this.f15041k, dVar, dVar2, lVar, bool);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    @Override // com.fasterxml.jackson.databind.deser.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fasterxml.jackson.databind.d<?> createContextual(com.fasterxml.jackson.databind.DeserializationContext r6, com.fasterxml.jackson.databind.BeanProperty r7) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r5 = this;
            com.fasterxml.jackson.databind.deser.ValueInstantiator r0 = r5.f15041k
            r1 = 0
            if (r0 == 0) goto L31
            com.fasterxml.jackson.databind.introspect.AnnotatedWithParams r0 = r0.getArrayDelegateCreator()
            if (r0 == 0) goto L1a
            com.fasterxml.jackson.databind.deser.ValueInstantiator r0 = r5.f15041k
            com.fasterxml.jackson.databind.DeserializationConfig r2 = r6.getConfig()
            com.fasterxml.jackson.databind.JavaType r0 = r0.getArrayDelegateType(r2)
            com.fasterxml.jackson.databind.d r0 = r5.u0(r6, r0, r7)
            goto L32
        L1a:
            com.fasterxml.jackson.databind.deser.ValueInstantiator r0 = r5.f15041k
            com.fasterxml.jackson.databind.introspect.AnnotatedWithParams r0 = r0.getDelegateCreator()
            if (r0 == 0) goto L31
            com.fasterxml.jackson.databind.deser.ValueInstantiator r0 = r5.f15041k
            com.fasterxml.jackson.databind.DeserializationConfig r2 = r6.getConfig()
            com.fasterxml.jackson.databind.JavaType r0 = r0.getDelegateType(r2)
            com.fasterxml.jackson.databind.d r0 = r5.u0(r6, r0, r7)
            goto L32
        L31:
            r0 = r1
        L32:
            com.fasterxml.jackson.databind.d<java.lang.String> r2 = r5.f15040j
            com.fasterxml.jackson.databind.JavaType r3 = r5.f14860f
            com.fasterxml.jackson.databind.JavaType r3 = r3.getContentType()
            if (r2 != 0) goto L47
            com.fasterxml.jackson.databind.d r2 = r5.t0(r6, r7, r2)
            if (r2 != 0) goto L4b
            com.fasterxml.jackson.databind.d r2 = r6.findContextualValueDeserializer(r3, r7)
            goto L4b
        L47:
            com.fasterxml.jackson.databind.d r2 = r6.handleSecondaryContextualization(r2, r7, r3)
        L4b:
            java.lang.Class<java.util.Collection> r3 = java.util.Collection.class
            com.fasterxml.jackson.annotation.JsonFormat$Feature r4 = com.fasterxml.jackson.annotation.JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY
            java.lang.Boolean r3 = r5.v0(r6, r7, r3, r4)
            com.fasterxml.jackson.databind.deser.l r6 = r5.r0(r6, r7, r2)
            boolean r7 = r5.A0(r2)
            if (r7 == 0) goto L5e
            goto L5f
        L5e:
            r1 = r2
        L5f:
            com.fasterxml.jackson.databind.deser.std.StringCollectionDeserializer r6 = r5.G0(r0, r1, r6, r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.std.StringCollectionDeserializer.createContextual(com.fasterxml.jackson.databind.DeserializationContext, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.d");
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return bVar.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public com.fasterxml.jackson.databind.d<Object> getContentDeserializer() {
        return this.f15040j;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.deser.ValueInstantiator.a
    public ValueInstantiator getValueInstantiator() {
        return this.f15041k;
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return this.f15040j == null && this.f15042l == null;
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Collection;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected StringCollectionDeserializer(JavaType javaType, ValueInstantiator valueInstantiator, com.fasterxml.jackson.databind.d<?> dVar, com.fasterxml.jackson.databind.d<?> dVar2, l lVar, Boolean bool) {
        super(javaType, lVar, bool);
        this.f15040j = dVar2;
        this.f15041k = valueInstantiator;
        this.f15042l = dVar;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Collection<String> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        com.fasterxml.jackson.databind.d<Object> dVar = this.f15042l;
        if (dVar != null) {
            return (Collection) this.f15041k.createUsingDelegate(deserializationContext, dVar.deserialize(jsonParser, deserializationContext));
        }
        return deserialize(jsonParser, deserializationContext, (Collection) this.f15041k.createUsingDefault(deserializationContext));
    }

    @Override // com.fasterxml.jackson.databind.d
    public Collection<String> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<String> collection) throws IOException {
        String i02;
        if (!jsonParser.p1()) {
            return F0(jsonParser, deserializationContext, collection);
        }
        com.fasterxml.jackson.databind.d<String> dVar = this.f15040j;
        if (dVar != null) {
            return E0(jsonParser, deserializationContext, collection, dVar);
        }
        while (true) {
            try {
                String x12 = jsonParser.x1();
                if (x12 != null) {
                    collection.add(x12);
                } else {
                    JsonToken W = jsonParser.W();
                    if (W == JsonToken.END_ARRAY) {
                        return collection;
                    }
                    if (W == JsonToken.VALUE_NULL) {
                        if (!this.f14862h) {
                            i02 = (String) this.f14861g.getNullValue(deserializationContext);
                        }
                    } else {
                        i02 = i0(jsonParser, deserializationContext);
                    }
                    collection.add(i02);
                }
            } catch (Exception e4) {
                throw JsonMappingException.wrapWithPath(e4, collection, collection.size());
            }
        }
    }
}
