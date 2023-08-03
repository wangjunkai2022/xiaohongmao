package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.l;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.ArrayBlockingQueue;

/* loaded from: classes.dex */
public class ArrayBlockingQueueDeserializer extends CollectionDeserializer {

    /* renamed from: o  reason: collision with root package name */
    private static final long f14844o = 1;

    public ArrayBlockingQueueDeserializer(JavaType javaType, com.fasterxml.jackson.databind.d<Object> dVar, com.fasterxml.jackson.databind.jsontype.b bVar, ValueInstantiator valueInstantiator) {
        super(javaType, dVar, bVar, valueInstantiator);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.deser.std.CollectionDeserializer
    public Collection<Object> E0(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<Object> collection) throws IOException {
        if (collection == null) {
            collection = new ArrayList<>();
        }
        Collection<Object> E0 = super.E0(jsonParser, deserializationContext, collection);
        if (E0.isEmpty()) {
            return new ArrayBlockingQueue(1, false);
        }
        return new ArrayBlockingQueue(E0.size(), false, E0);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.CollectionDeserializer
    protected Collection<Object> H0(DeserializationContext deserializationContext) throws IOException {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.deser.std.CollectionDeserializer
    /* renamed from: K0 */
    public ArrayBlockingQueueDeserializer J0(com.fasterxml.jackson.databind.d<?> dVar, com.fasterxml.jackson.databind.d<?> dVar2, com.fasterxml.jackson.databind.jsontype.b bVar, l lVar, Boolean bool) {
        return new ArrayBlockingQueueDeserializer(this.f14860f, dVar2, bVar, this.f14853l, dVar, lVar, bool);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.CollectionDeserializer, com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return bVar.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    protected ArrayBlockingQueueDeserializer(JavaType javaType, com.fasterxml.jackson.databind.d<Object> dVar, com.fasterxml.jackson.databind.jsontype.b bVar, ValueInstantiator valueInstantiator, com.fasterxml.jackson.databind.d<Object> dVar2, l lVar, Boolean bool) {
        super(javaType, dVar, bVar, valueInstantiator, dVar2, lVar, bool);
    }

    protected ArrayBlockingQueueDeserializer(ArrayBlockingQueueDeserializer arrayBlockingQueueDeserializer) {
        super(arrayBlockingQueueDeserializer);
    }
}
