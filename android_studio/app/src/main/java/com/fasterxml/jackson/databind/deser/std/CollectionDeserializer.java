package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.cfg.CoercionInputShape;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.j;
import com.fasterxml.jackson.databind.deser.l;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

@c2.a
/* loaded from: classes.dex */
public class CollectionDeserializer extends ContainerDeserializerBase<Collection<Object>> implements com.fasterxml.jackson.databind.deser.c {

    /* renamed from: n  reason: collision with root package name */
    private static final long f14850n = -1;

    /* renamed from: j  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<Object> f14851j;

    /* renamed from: k  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.b f14852k;

    /* renamed from: l  reason: collision with root package name */
    protected final ValueInstantiator f14853l;

    /* renamed from: m  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.d<Object> f14854m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a extends j.a {

        /* renamed from: c  reason: collision with root package name */
        private final b f14855c;

        /* renamed from: d  reason: collision with root package name */
        public final List<Object> f14856d;

        a(b bVar, UnresolvedForwardReference unresolvedForwardReference, Class<?> cls) {
            super(unresolvedForwardReference, cls);
            this.f14856d = new ArrayList();
            this.f14855c = bVar;
        }

        @Override // com.fasterxml.jackson.databind.deser.impl.j.a
        public void c(Object obj, Object obj2) throws IOException {
            this.f14855c.c(obj, obj2);
        }
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Class<?> f14857a;

        /* renamed from: b  reason: collision with root package name */
        private final Collection<Object> f14858b;

        /* renamed from: c  reason: collision with root package name */
        private List<a> f14859c = new ArrayList();

        public b(Class<?> cls, Collection<Object> collection) {
            this.f14857a = cls;
            this.f14858b = collection;
        }

        public void a(Object obj) {
            if (this.f14859c.isEmpty()) {
                this.f14858b.add(obj);
                return;
            }
            List<a> list = this.f14859c;
            list.get(list.size() - 1).f14856d.add(obj);
        }

        public j.a b(UnresolvedForwardReference unresolvedForwardReference) {
            a aVar = new a(this, unresolvedForwardReference, this.f14857a);
            this.f14859c.add(aVar);
            return aVar;
        }

        public void c(Object obj, Object obj2) throws IOException {
            Iterator<a> it = this.f14859c.iterator();
            Collection collection = this.f14858b;
            while (it.hasNext()) {
                a next = it.next();
                if (next.d(obj)) {
                    it.remove();
                    collection.add(obj2);
                    collection.addAll(next.f14856d);
                    return;
                }
                collection = next.f14856d;
            }
            throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + obj + "] that wasn't previously seen as unresolved.");
        }
    }

    public CollectionDeserializer(JavaType javaType, com.fasterxml.jackson.databind.d<Object> dVar, com.fasterxml.jackson.databind.jsontype.b bVar, ValueInstantiator valueInstantiator) {
        this(javaType, dVar, bVar, valueInstantiator, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Collection<Object> E0(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<Object> collection) throws IOException {
        Object deserializeWithType;
        jsonParser.O1(collection);
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14851j;
        if (dVar.getObjectIdReader() != null) {
            return G0(jsonParser, deserializationContext, collection);
        }
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14852k;
        while (true) {
            JsonToken y12 = jsonParser.y1();
            if (y12 == JsonToken.END_ARRAY) {
                return collection;
            }
            try {
                if (y12 == JsonToken.VALUE_NULL) {
                    if (!this.f14862h) {
                        deserializeWithType = this.f14861g.getNullValue(deserializationContext);
                    }
                } else if (bVar == null) {
                    deserializeWithType = dVar.deserialize(jsonParser, deserializationContext);
                } else {
                    deserializeWithType = dVar.deserializeWithType(jsonParser, deserializationContext, bVar);
                }
                collection.add(deserializeWithType);
            } catch (Exception e4) {
                if (!(deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS))) {
                    g.v0(e4);
                }
                throw JsonMappingException.wrapWithPath(e4, collection, collection.size());
            }
        }
    }

    protected Collection<Object> F0(JsonParser jsonParser, DeserializationContext deserializationContext, String str) throws IOException {
        Class<?> handledType = handledType();
        if (str.isEmpty()) {
            CoercionAction b10 = b(deserializationContext, deserializationContext.findCoercionAction(logicalType(), handledType, CoercionInputShape.EmptyString), handledType, str, "empty String (\"\")");
            if (b10 != null) {
                return (Collection) s(jsonParser, deserializationContext, b10, handledType, "empty String (\"\")");
            }
        } else if (StdDeserializer.C(str)) {
            return (Collection) s(jsonParser, deserializationContext, deserializationContext.findCoercionFromBlankString(logicalType(), handledType, CoercionAction.Fail), handledType, "blank String (all whitespace)");
        }
        return I0(jsonParser, deserializationContext, H0(deserializationContext));
    }

    protected Collection<Object> G0(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<Object> collection) throws IOException {
        Object deserializeWithType;
        if (!jsonParser.p1()) {
            return I0(jsonParser, deserializationContext, collection);
        }
        jsonParser.O1(collection);
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14851j;
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14852k;
        b bVar2 = new b(this.f14860f.getContentType().getRawClass(), collection);
        while (true) {
            JsonToken y12 = jsonParser.y1();
            if (y12 == JsonToken.END_ARRAY) {
                return collection;
            }
            try {
            } catch (UnresolvedForwardReference e4) {
                e4.getRoid().a(bVar2.b(e4));
            } catch (Exception e10) {
                if (!(deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS))) {
                    g.v0(e10);
                }
                throw JsonMappingException.wrapWithPath(e10, collection, collection.size());
            }
            if (y12 == JsonToken.VALUE_NULL) {
                if (!this.f14862h) {
                    deserializeWithType = this.f14861g.getNullValue(deserializationContext);
                }
            } else if (bVar == null) {
                deserializeWithType = dVar.deserialize(jsonParser, deserializationContext);
            } else {
                deserializeWithType = dVar.deserializeWithType(jsonParser, deserializationContext, bVar);
            }
            bVar2.a(deserializeWithType);
        }
    }

    protected Collection<Object> H0(DeserializationContext deserializationContext) throws IOException {
        return (Collection) this.f14853l.createUsingDefault(deserializationContext);
    }

    protected final Collection<Object> I0(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<Object> collection) throws IOException {
        Object deserializeWithType;
        Boolean bool = this.f14863i;
        if (!(bool == Boolean.TRUE || (bool == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)))) {
            return (Collection) deserializationContext.handleUnexpectedToken(this.f14860f, jsonParser);
        }
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14851j;
        com.fasterxml.jackson.databind.jsontype.b bVar = this.f14852k;
        try {
            if (jsonParser.k1(JsonToken.VALUE_NULL)) {
                if (this.f14862h) {
                    return collection;
                }
                deserializeWithType = this.f14861g.getNullValue(deserializationContext);
            } else if (bVar == null) {
                deserializeWithType = dVar.deserialize(jsonParser, deserializationContext);
            } else {
                deserializeWithType = dVar.deserializeWithType(jsonParser, deserializationContext, bVar);
            }
            collection.add(deserializeWithType);
            return collection;
        } catch (Exception e4) {
            if (!deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS)) {
                g.v0(e4);
            }
            throw JsonMappingException.wrapWithPath(e4, Object.class, collection.size());
        }
    }

    protected CollectionDeserializer J0(com.fasterxml.jackson.databind.d<?> dVar, com.fasterxml.jackson.databind.d<?> dVar2, com.fasterxml.jackson.databind.jsontype.b bVar, l lVar, Boolean bool) {
        return new CollectionDeserializer(this.f14860f, dVar2, bVar, this.f14853l, dVar, lVar, bool);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        return bVar.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public com.fasterxml.jackson.databind.d<Object> getContentDeserializer() {
        return this.f14851j;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.deser.ValueInstantiator.a
    public ValueInstantiator getValueInstantiator() {
        return this.f14853l;
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return this.f14851j == null && this.f14852k == null && this.f14854m == null;
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Collection;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CollectionDeserializer(JavaType javaType, com.fasterxml.jackson.databind.d<Object> dVar, com.fasterxml.jackson.databind.jsontype.b bVar, ValueInstantiator valueInstantiator, com.fasterxml.jackson.databind.d<Object> dVar2, l lVar, Boolean bool) {
        super(javaType, lVar, bool);
        this.f14851j = dVar;
        this.f14852k = bVar;
        this.f14853l = valueInstantiator;
        this.f14854m = dVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0093  */
    @Override // com.fasterxml.jackson.databind.deser.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fasterxml.jackson.databind.deser.std.CollectionDeserializer createContextual(com.fasterxml.jackson.databind.DeserializationContext r8, com.fasterxml.jackson.databind.BeanProperty r9) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r7 = this;
            com.fasterxml.jackson.databind.deser.ValueInstantiator r0 = r7.f14853l
            if (r0 == 0) goto L6d
            boolean r0 = r0.canCreateUsingDelegate()
            r1 = 1
            r2 = 0
            r3 = 2
            if (r0 == 0) goto L39
            com.fasterxml.jackson.databind.deser.ValueInstantiator r0 = r7.f14853l
            com.fasterxml.jackson.databind.DeserializationConfig r4 = r8.getConfig()
            com.fasterxml.jackson.databind.JavaType r0 = r0.getDelegateType(r4)
            if (r0 != 0) goto L34
            com.fasterxml.jackson.databind.JavaType r4 = r7.f14860f
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r3[r2] = r4
            com.fasterxml.jackson.databind.deser.ValueInstantiator r2 = r7.f14853l
            java.lang.Class r2 = r2.getClass()
            java.lang.String r2 = r2.getName()
            r3[r1] = r2
            java.lang.String r1 = "Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'"
            java.lang.String r1 = java.lang.String.format(r1, r3)
            r8.reportBadDefinition(r4, r1)
        L34:
            com.fasterxml.jackson.databind.d r0 = r7.u0(r8, r0, r9)
            goto L6e
        L39:
            com.fasterxml.jackson.databind.deser.ValueInstantiator r0 = r7.f14853l
            boolean r0 = r0.canCreateUsingArrayDelegate()
            if (r0 == 0) goto L6d
            com.fasterxml.jackson.databind.deser.ValueInstantiator r0 = r7.f14853l
            com.fasterxml.jackson.databind.DeserializationConfig r4 = r8.getConfig()
            com.fasterxml.jackson.databind.JavaType r0 = r0.getArrayDelegateType(r4)
            if (r0 != 0) goto L68
            com.fasterxml.jackson.databind.JavaType r4 = r7.f14860f
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r3[r2] = r4
            com.fasterxml.jackson.databind.deser.ValueInstantiator r2 = r7.f14853l
            java.lang.Class r2 = r2.getClass()
            java.lang.String r2 = r2.getName()
            r3[r1] = r2
            java.lang.String r1 = "Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'"
            java.lang.String r1 = java.lang.String.format(r1, r3)
            r8.reportBadDefinition(r4, r1)
        L68:
            com.fasterxml.jackson.databind.d r0 = r7.u0(r8, r0, r9)
            goto L6e
        L6d:
            r0 = 0
        L6e:
            r2 = r0
            java.lang.Class<java.util.Collection> r0 = java.util.Collection.class
            com.fasterxml.jackson.annotation.JsonFormat$Feature r1 = com.fasterxml.jackson.annotation.JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY
            java.lang.Boolean r6 = r7.v0(r8, r9, r0, r1)
            com.fasterxml.jackson.databind.d<java.lang.Object> r0 = r7.f14851j
            com.fasterxml.jackson.databind.d r0 = r7.t0(r8, r9, r0)
            com.fasterxml.jackson.databind.JavaType r1 = r7.f14860f
            com.fasterxml.jackson.databind.JavaType r1 = r1.getContentType()
            if (r0 != 0) goto L8a
            com.fasterxml.jackson.databind.d r0 = r8.findContextualValueDeserializer(r1, r9)
            goto L8e
        L8a:
            com.fasterxml.jackson.databind.d r0 = r8.handleSecondaryContextualization(r0, r9, r1)
        L8e:
            r3 = r0
            com.fasterxml.jackson.databind.jsontype.b r0 = r7.f14852k
            if (r0 == 0) goto L97
            com.fasterxml.jackson.databind.jsontype.b r0 = r0.forProperty(r9)
        L97:
            r4 = r0
            com.fasterxml.jackson.databind.deser.l r5 = r7.r0(r8, r9, r3)
            java.lang.Boolean r8 = r7.f14863i
            boolean r8 = java.util.Objects.equals(r6, r8)
            if (r8 == 0) goto Lb6
            com.fasterxml.jackson.databind.deser.l r8 = r7.f14861g
            if (r5 != r8) goto Lb6
            com.fasterxml.jackson.databind.d<java.lang.Object> r8 = r7.f14854m
            if (r2 != r8) goto Lb6
            com.fasterxml.jackson.databind.d<java.lang.Object> r8 = r7.f14851j
            if (r3 != r8) goto Lb6
            com.fasterxml.jackson.databind.jsontype.b r8 = r7.f14852k
            if (r4 == r8) goto Lb5
            goto Lb6
        Lb5:
            return r7
        Lb6:
            r1 = r7
            com.fasterxml.jackson.databind.deser.std.CollectionDeserializer r8 = r1.J0(r2, r3, r4, r5, r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.std.CollectionDeserializer.createContextual(com.fasterxml.jackson.databind.DeserializationContext, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.deser.std.CollectionDeserializer");
    }

    @Override // com.fasterxml.jackson.databind.d
    public Collection<Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        com.fasterxml.jackson.databind.d<Object> dVar = this.f14854m;
        if (dVar != null) {
            return (Collection) this.f14853l.createUsingDelegate(deserializationContext, dVar.deserialize(jsonParser, deserializationContext));
        }
        if (jsonParser.p1()) {
            return E0(jsonParser, deserializationContext, H0(deserializationContext));
        }
        if (jsonParser.k1(JsonToken.VALUE_STRING)) {
            return F0(jsonParser, deserializationContext, jsonParser.S0());
        }
        return I0(jsonParser, deserializationContext, H0(deserializationContext));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CollectionDeserializer(CollectionDeserializer collectionDeserializer) {
        super(collectionDeserializer);
        this.f14851j = collectionDeserializer.f14851j;
        this.f14852k = collectionDeserializer.f14852k;
        this.f14853l = collectionDeserializer.f14853l;
        this.f14854m = collectionDeserializer.f14854m;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Collection<Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<Object> collection) throws IOException {
        if (jsonParser.p1()) {
            return E0(jsonParser, deserializationContext, collection);
        }
        return I0(jsonParser, deserializationContext, collection);
    }
}
