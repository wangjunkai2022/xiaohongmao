package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.m;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.g;
import com.fasterxml.jackson.databind.util.o;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@c2.a
/* loaded from: classes.dex */
public class UntypedObjectDeserializer extends StdDeserializer<Object> implements m, com.fasterxml.jackson.databind.deser.c {

    /* renamed from: m  reason: collision with root package name */
    private static final long f15047m = 1;

    /* renamed from: n  reason: collision with root package name */
    protected static final Object[] f15048n = new Object[0];

    /* renamed from: f  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Object> f15049f;

    /* renamed from: g  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Object> f15050g;

    /* renamed from: h  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Object> f15051h;

    /* renamed from: i  reason: collision with root package name */
    protected com.fasterxml.jackson.databind.d<Object> f15052i;

    /* renamed from: j  reason: collision with root package name */
    protected JavaType f15053j;

    /* renamed from: k  reason: collision with root package name */
    protected JavaType f15054k;

    /* renamed from: l  reason: collision with root package name */
    protected final boolean f15055l;

    @c2.a
    /* loaded from: classes.dex */
    public static class Vanilla extends StdDeserializer<Object> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f15056g = 1;

        /* renamed from: h  reason: collision with root package name */
        private static final int f15057h = 1000;
        public static final Vanilla std = new Vanilla();

        /* renamed from: f  reason: collision with root package name */
        protected final boolean f15058f;

        public Vanilla() {
            this(false);
        }

        private void D0(Map<String, Object> map, String str, Object obj, Object obj2) {
            if (obj instanceof List) {
                ((List) obj).add(obj2);
                map.put(str, obj);
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(obj);
            arrayList.add(obj2);
            map.put(str, arrayList);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private Object E0(JsonParser jsonParser, DeserializationContext deserializationContext, int i4) throws IOException {
            switch (jsonParser.X()) {
                case 1:
                    if (jsonParser.y1() == JsonToken.END_OBJECT) {
                        return new LinkedHashMap(2);
                    }
                    break;
                case 2:
                    return new LinkedHashMap(2);
                case 3:
                    if (jsonParser.y1() == JsonToken.END_ARRAY) {
                        if (deserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                            return UntypedObjectDeserializer.f15048n;
                        }
                        return new ArrayList(2);
                    } else if (i4 <= 1000) {
                        if (deserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                            return I0(jsonParser, deserializationContext, i4);
                        }
                        return G0(jsonParser, deserializationContext, i4);
                    } else {
                        throw new JsonParseException(jsonParser, "JSON is too deeply nested.");
                    }
                case 4:
                default:
                    return deserializationContext.handleUnexpectedToken(Object.class, jsonParser);
                case 5:
                    break;
                case 6:
                    return jsonParser.S0();
                case 7:
                    if (deserializationContext.hasSomeOfFeatures(StdDeserializer.f14986d)) {
                        return m(jsonParser, deserializationContext);
                    }
                    return jsonParser.K0();
                case 8:
                    if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                        return jsonParser.y0();
                    }
                    return jsonParser.K0();
                case 9:
                    return Boolean.TRUE;
                case 10:
                    return Boolean.FALSE;
                case 11:
                    return null;
                case 12:
                    return jsonParser.A0();
            }
            if (i4 <= 1000) {
                return K0(jsonParser, deserializationContext, i4);
            }
            throw new JsonParseException(jsonParser, "JSON is too deeply nested.");
        }

        public static Vanilla instance(boolean z9) {
            if (z9) {
                return new Vanilla(true);
            }
            return std;
        }

        protected Object C0(JsonParser jsonParser, DeserializationContext deserializationContext, Map<String, Object> map, String str, Object obj, Object obj2, String str2) throws IOException {
            boolean isEnabled = deserializationContext.isEnabled(StreamReadCapability.DUPLICATE_PROPERTIES);
            if (isEnabled) {
                D0(map, str, obj, obj2);
            }
            while (str2 != null) {
                jsonParser.y1();
                Object deserialize = deserialize(jsonParser, deserializationContext);
                Object put = map.put(str2, deserialize);
                if (put != null && isEnabled) {
                    D0(map, str2, put, deserialize);
                }
                str2 = jsonParser.t1();
            }
            return map;
        }

        @Deprecated
        protected Object F0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return G0(jsonParser, deserializationContext, 0);
        }

        protected Object G0(JsonParser jsonParser, DeserializationContext deserializationContext, int i4) throws IOException {
            int i10 = i4 + 1;
            Object E0 = E0(jsonParser, deserializationContext, i10);
            JsonToken y12 = jsonParser.y1();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            int i11 = 2;
            if (y12 == jsonToken) {
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(E0);
                return arrayList;
            }
            Object E02 = E0(jsonParser, deserializationContext, i10);
            if (jsonParser.y1() == jsonToken) {
                ArrayList arrayList2 = new ArrayList(2);
                arrayList2.add(E0);
                arrayList2.add(E02);
                return arrayList2;
            }
            o leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
            Object[] i12 = leaseObjectBuffer.i();
            i12[0] = E0;
            i12[1] = E02;
            int i13 = 2;
            while (true) {
                Object E03 = E0(jsonParser, deserializationContext, i10);
                i11++;
                if (i13 >= i12.length) {
                    i12 = leaseObjectBuffer.c(i12);
                    i13 = 0;
                }
                int i14 = i13 + 1;
                i12[i13] = E03;
                if (jsonParser.y1() == JsonToken.END_ARRAY) {
                    ArrayList arrayList3 = new ArrayList(i11);
                    leaseObjectBuffer.e(i12, i14, arrayList3);
                    return arrayList3;
                }
                i13 = i14;
            }
        }

        @Deprecated
        protected Object[] H0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return I0(jsonParser, deserializationContext, 0);
        }

        protected Object[] I0(JsonParser jsonParser, DeserializationContext deserializationContext, int i4) throws IOException {
            int i10 = i4 + 1;
            o leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
            Object[] i11 = leaseObjectBuffer.i();
            int i12 = 0;
            while (true) {
                Object E0 = E0(jsonParser, deserializationContext, i10);
                if (i12 >= i11.length) {
                    i11 = leaseObjectBuffer.c(i11);
                    i12 = 0;
                }
                int i13 = i12 + 1;
                i11[i12] = E0;
                if (jsonParser.y1() == JsonToken.END_ARRAY) {
                    return leaseObjectBuffer.f(i11, i13);
                }
                i12 = i13;
            }
        }

        @Deprecated
        protected Object J0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return K0(jsonParser, deserializationContext, 0);
        }

        protected Object K0(JsonParser jsonParser, DeserializationContext deserializationContext, int i4) throws IOException {
            int i10 = i4 + 1;
            String M = jsonParser.M();
            jsonParser.y1();
            Object E0 = E0(jsonParser, deserializationContext, i10);
            String t12 = jsonParser.t1();
            if (t12 == null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(2);
                linkedHashMap.put(M, E0);
                return linkedHashMap;
            }
            jsonParser.y1();
            Object E02 = E0(jsonParser, deserializationContext, i10);
            String t13 = jsonParser.t1();
            if (t13 == null) {
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(4);
                linkedHashMap2.put(M, E0);
                return linkedHashMap2.put(t12, E02) != null ? C0(jsonParser, deserializationContext, linkedHashMap2, M, E0, E02, t13) : linkedHashMap2;
            }
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            linkedHashMap3.put(M, E0);
            if (linkedHashMap3.put(t12, E02) != null) {
                return C0(jsonParser, deserializationContext, linkedHashMap3, M, E0, E02, t13);
            }
            String str = t13;
            do {
                jsonParser.y1();
                Object E03 = E0(jsonParser, deserializationContext, i10);
                Object put = linkedHashMap3.put(str, E03);
                if (put != null) {
                    return C0(jsonParser, deserializationContext, linkedHashMap3, str, put, E03, jsonParser.t1());
                }
                str = jsonParser.t1();
            } while (str != null);
            return linkedHashMap3;
        }

        @Override // com.fasterxml.jackson.databind.d
        public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return E0(jsonParser, deserializationContext, 0);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
        public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
            int X = jsonParser.X();
            if (X != 1 && X != 3) {
                switch (X) {
                    case 5:
                        break;
                    case 6:
                        return jsonParser.S0();
                    case 7:
                        if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
                            return jsonParser.n0();
                        }
                        return jsonParser.K0();
                    case 8:
                        if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                            return jsonParser.y0();
                        }
                        return jsonParser.K0();
                    case 9:
                        return Boolean.TRUE;
                    case 10:
                        return Boolean.FALSE;
                    case 11:
                        return null;
                    case 12:
                        return jsonParser.A0();
                    default:
                        return deserializationContext.handleUnexpectedToken(Object.class, jsonParser);
                }
            }
            return bVar.deserializeTypedFromAny(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.d
        public LogicalType logicalType() {
            return LogicalType.Untyped;
        }

        @Override // com.fasterxml.jackson.databind.d
        public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
            if (this.f15058f) {
                return Boolean.FALSE;
            }
            return null;
        }

        protected Vanilla(boolean z9) {
            super(Object.class);
            this.f15058f = z9;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x001a, code lost:
            if (r0 != 5) goto L29;
         */
        @Override // com.fasterxml.jackson.databind.d
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object deserialize(com.fasterxml.jackson.core.JsonParser r5, com.fasterxml.jackson.databind.DeserializationContext r6, java.lang.Object r7) throws java.io.IOException {
            /*
                r4 = this;
                boolean r0 = r4.f15058f
                if (r0 == 0) goto L9
                java.lang.Object r5 = r4.deserialize(r5, r6)
                return r5
            L9:
                int r0 = r5.X()
                r1 = 1
                if (r0 == r1) goto L3d
                r1 = 2
                if (r0 == r1) goto L3c
                r1 = 3
                if (r0 == r1) goto L1d
                r1 = 4
                if (r0 == r1) goto L3c
                r1 = 5
                if (r0 == r1) goto L46
                goto L6f
            L1d:
                com.fasterxml.jackson.core.JsonToken r0 = r5.y1()
                com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.END_ARRAY
                if (r0 != r1) goto L26
                return r7
            L26:
                boolean r0 = r7 instanceof java.util.Collection
                if (r0 == 0) goto L6f
                r0 = r7
                java.util.Collection r0 = (java.util.Collection) r0
            L2d:
                java.lang.Object r1 = r4.deserialize(r5, r6)
                r0.add(r1)
                com.fasterxml.jackson.core.JsonToken r1 = r5.y1()
                com.fasterxml.jackson.core.JsonToken r2 = com.fasterxml.jackson.core.JsonToken.END_ARRAY
                if (r1 != r2) goto L2d
            L3c:
                return r7
            L3d:
                com.fasterxml.jackson.core.JsonToken r0 = r5.y1()
                com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.END_OBJECT
                if (r0 != r1) goto L46
                return r7
            L46:
                boolean r0 = r7 instanceof java.util.Map
                if (r0 == 0) goto L6f
                r0 = r7
                java.util.Map r0 = (java.util.Map) r0
                java.lang.String r1 = r5.M()
            L51:
                r5.y1()
                java.lang.Object r2 = r0.get(r1)
                if (r2 == 0) goto L5f
                java.lang.Object r3 = r4.deserialize(r5, r6, r2)
                goto L63
            L5f:
                java.lang.Object r3 = r4.deserialize(r5, r6)
            L63:
                if (r3 == r2) goto L68
                r0.put(r1, r3)
            L68:
                java.lang.String r1 = r5.t1()
                if (r1 != 0) goto L51
                return r7
            L6f:
                java.lang.Object r5 = r4.deserialize(r5, r6)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.std.UntypedObjectDeserializer.Vanilla.deserialize(com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.databind.DeserializationContext, java.lang.Object):java.lang.Object");
        }
    }

    @Deprecated
    public UntypedObjectDeserializer() {
        this((JavaType) null, (JavaType) null);
    }

    private void F0(Map<String, Object> map, String str, Object obj, Object obj2) {
        if (obj instanceof List) {
            ((List) obj).add(obj2);
            map.put(str, obj);
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(obj);
        arrayList.add(obj2);
        map.put(str, arrayList);
    }

    protected com.fasterxml.jackson.databind.d<Object> C0(com.fasterxml.jackson.databind.d<Object> dVar) {
        if (g.a0(dVar)) {
            return null;
        }
        return dVar;
    }

    protected com.fasterxml.jackson.databind.d<Object> D0(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        return deserializationContext.findNonContextualValueDeserializer(javaType);
    }

    protected Object E0(JsonParser jsonParser, DeserializationContext deserializationContext, Map<String, Object> map, String str, Object obj, Object obj2, String str2) throws IOException {
        boolean isEnabled = deserializationContext.isEnabled(StreamReadCapability.DUPLICATE_PROPERTIES);
        if (isEnabled) {
            F0(map, str, obj, obj2);
        }
        while (str2 != null) {
            jsonParser.y1();
            Object deserialize = deserialize(jsonParser, deserializationContext);
            Object put = map.put(str2, deserialize);
            if (put != null && isEnabled) {
                F0(map, str, put, deserialize);
            }
            str2 = jsonParser.t1();
        }
        return map;
    }

    protected Object G0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken y12 = jsonParser.y1();
        JsonToken jsonToken = JsonToken.END_ARRAY;
        int i4 = 2;
        if (y12 == jsonToken) {
            return new ArrayList(2);
        }
        Object deserialize = deserialize(jsonParser, deserializationContext);
        if (jsonParser.y1() == jsonToken) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(deserialize);
            return arrayList;
        }
        Object deserialize2 = deserialize(jsonParser, deserializationContext);
        if (jsonParser.y1() == jsonToken) {
            ArrayList arrayList2 = new ArrayList(2);
            arrayList2.add(deserialize);
            arrayList2.add(deserialize2);
            return arrayList2;
        }
        o leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] i10 = leaseObjectBuffer.i();
        i10[0] = deserialize;
        i10[1] = deserialize2;
        int i11 = 2;
        while (true) {
            Object deserialize3 = deserialize(jsonParser, deserializationContext);
            i4++;
            if (i11 >= i10.length) {
                i10 = leaseObjectBuffer.c(i10);
                i11 = 0;
            }
            int i12 = i11 + 1;
            i10[i11] = deserialize3;
            if (jsonParser.y1() == JsonToken.END_ARRAY) {
                ArrayList arrayList3 = new ArrayList(i4);
                leaseObjectBuffer.e(i10, i12, arrayList3);
                return arrayList3;
            }
            i11 = i12;
        }
    }

    protected Object H0(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<Object> collection) throws IOException {
        while (jsonParser.y1() != JsonToken.END_ARRAY) {
            collection.add(deserialize(jsonParser, deserializationContext));
        }
        return collection;
    }

    protected Object[] I0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.y1() == JsonToken.END_ARRAY) {
            return f15048n;
        }
        o leaseObjectBuffer = deserializationContext.leaseObjectBuffer();
        Object[] i4 = leaseObjectBuffer.i();
        int i10 = 0;
        while (true) {
            Object deserialize = deserialize(jsonParser, deserializationContext);
            if (i10 >= i4.length) {
                i4 = leaseObjectBuffer.c(i4);
                i10 = 0;
            }
            int i11 = i10 + 1;
            i4[i10] = deserialize;
            if (jsonParser.y1() == JsonToken.END_ARRAY) {
                return leaseObjectBuffer.f(i4, i11);
            }
            i10 = i11;
        }
    }

    protected Object J0(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String str;
        JsonToken W = jsonParser.W();
        if (W == JsonToken.START_OBJECT) {
            str = jsonParser.t1();
        } else if (W == JsonToken.FIELD_NAME) {
            str = jsonParser.M();
        } else if (W != JsonToken.END_OBJECT) {
            return deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
        } else {
            str = null;
        }
        String str2 = str;
        if (str2 == null) {
            return new LinkedHashMap(2);
        }
        jsonParser.y1();
        Object deserialize = deserialize(jsonParser, deserializationContext);
        String t12 = jsonParser.t1();
        if (t12 == null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(2);
            linkedHashMap.put(str2, deserialize);
            return linkedHashMap;
        }
        jsonParser.y1();
        Object deserialize2 = deserialize(jsonParser, deserializationContext);
        String t13 = jsonParser.t1();
        if (t13 == null) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(4);
            linkedHashMap2.put(str2, deserialize);
            return linkedHashMap2.put(t12, deserialize2) != null ? E0(jsonParser, deserializationContext, linkedHashMap2, str2, deserialize, deserialize2, t13) : linkedHashMap2;
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put(str2, deserialize);
        if (linkedHashMap3.put(t12, deserialize2) != null) {
            return E0(jsonParser, deserializationContext, linkedHashMap3, str2, deserialize, deserialize2, t13);
        }
        do {
            jsonParser.y1();
            Object deserialize3 = deserialize(jsonParser, deserializationContext);
            Object put = linkedHashMap3.put(t13, deserialize3);
            if (put != null) {
                return E0(jsonParser, deserializationContext, linkedHashMap3, t13, put, deserialize3, jsonParser.t1());
            }
            t13 = jsonParser.t1();
        } while (t13 != null);
        return linkedHashMap3;
    }

    protected Object K0(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        Object deserialize;
        JsonToken W = jsonParser.W();
        if (W == JsonToken.START_OBJECT) {
            W = jsonParser.y1();
        }
        if (W == JsonToken.END_OBJECT) {
            return map;
        }
        String M = jsonParser.M();
        do {
            jsonParser.y1();
            Object obj = map.get(M);
            if (obj != null) {
                deserialize = deserialize(jsonParser, deserializationContext, obj);
            } else {
                deserialize = deserialize(jsonParser, deserializationContext);
            }
            if (deserialize != obj) {
                map.put(M, deserialize);
            }
            M = jsonParser.t1();
        } while (M != null);
        return map;
    }

    @Override // com.fasterxml.jackson.databind.deser.c
    public com.fasterxml.jackson.databind.d<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        boolean z9 = beanProperty == null && Boolean.FALSE.equals(deserializationContext.getConfig().getDefaultMergeable(Object.class));
        if (this.f15051h == null && this.f15052i == null && this.f15049f == null && this.f15050g == null && getClass() == UntypedObjectDeserializer.class) {
            return Vanilla.instance(z9);
        }
        return z9 != this.f15055l ? new UntypedObjectDeserializer(this, z9) : this;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        switch (jsonParser.X()) {
            case 1:
            case 2:
            case 5:
                com.fasterxml.jackson.databind.d<Object> dVar = this.f15049f;
                if (dVar != null) {
                    return dVar.deserialize(jsonParser, deserializationContext);
                }
                return J0(jsonParser, deserializationContext);
            case 3:
                if (deserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                    return I0(jsonParser, deserializationContext);
                }
                com.fasterxml.jackson.databind.d<Object> dVar2 = this.f15050g;
                if (dVar2 != null) {
                    return dVar2.deserialize(jsonParser, deserializationContext);
                }
                return G0(jsonParser, deserializationContext);
            case 4:
            default:
                return deserializationContext.handleUnexpectedToken(Object.class, jsonParser);
            case 6:
                com.fasterxml.jackson.databind.d<Object> dVar3 = this.f15051h;
                if (dVar3 != null) {
                    return dVar3.deserialize(jsonParser, deserializationContext);
                }
                return jsonParser.S0();
            case 7:
                com.fasterxml.jackson.databind.d<Object> dVar4 = this.f15052i;
                if (dVar4 != null) {
                    return dVar4.deserialize(jsonParser, deserializationContext);
                }
                if (deserializationContext.hasSomeOfFeatures(StdDeserializer.f14986d)) {
                    return m(jsonParser, deserializationContext);
                }
                return jsonParser.K0();
            case 8:
                com.fasterxml.jackson.databind.d<Object> dVar5 = this.f15052i;
                if (dVar5 != null) {
                    return dVar5.deserialize(jsonParser, deserializationContext);
                }
                if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                    return jsonParser.y0();
                }
                return jsonParser.K0();
            case 9:
                return Boolean.TRUE;
            case 10:
                return Boolean.FALSE;
            case 11:
                return null;
            case 12:
                return jsonParser.A0();
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.d
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, com.fasterxml.jackson.databind.jsontype.b bVar) throws IOException {
        int X = jsonParser.X();
        if (X != 1 && X != 3) {
            switch (X) {
                case 5:
                    break;
                case 6:
                    com.fasterxml.jackson.databind.d<Object> dVar = this.f15051h;
                    if (dVar != null) {
                        return dVar.deserialize(jsonParser, deserializationContext);
                    }
                    return jsonParser.S0();
                case 7:
                    com.fasterxml.jackson.databind.d<Object> dVar2 = this.f15052i;
                    if (dVar2 != null) {
                        return dVar2.deserialize(jsonParser, deserializationContext);
                    }
                    if (deserializationContext.hasSomeOfFeatures(StdDeserializer.f14986d)) {
                        return m(jsonParser, deserializationContext);
                    }
                    return jsonParser.K0();
                case 8:
                    com.fasterxml.jackson.databind.d<Object> dVar3 = this.f15052i;
                    if (dVar3 != null) {
                        return dVar3.deserialize(jsonParser, deserializationContext);
                    }
                    if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                        return jsonParser.y0();
                    }
                    return jsonParser.K0();
                case 9:
                    return Boolean.TRUE;
                case 10:
                    return Boolean.FALSE;
                case 11:
                    return null;
                case 12:
                    return jsonParser.A0();
                default:
                    return deserializationContext.handleUnexpectedToken(Object.class, jsonParser);
            }
        }
        return bVar.deserializeTypedFromAny(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.d
    public boolean isCachable() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.d
    public LogicalType logicalType() {
        return LogicalType.Untyped;
    }

    @Override // com.fasterxml.jackson.databind.deser.m
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        JavaType constructType = deserializationContext.constructType(Object.class);
        JavaType constructType2 = deserializationContext.constructType(String.class);
        TypeFactory typeFactory = deserializationContext.getTypeFactory();
        JavaType javaType = this.f15053j;
        if (javaType == null) {
            this.f15050g = C0(D0(deserializationContext, typeFactory.constructCollectionType(List.class, constructType)));
        } else {
            this.f15050g = D0(deserializationContext, javaType);
        }
        JavaType javaType2 = this.f15054k;
        if (javaType2 == null) {
            this.f15049f = C0(D0(deserializationContext, typeFactory.constructMapType(Map.class, constructType2, constructType)));
        } else {
            this.f15049f = D0(deserializationContext, javaType2);
        }
        this.f15051h = C0(D0(deserializationContext, constructType2));
        this.f15052i = C0(D0(deserializationContext, typeFactory.constructType(Number.class)));
        JavaType unknownType = TypeFactory.unknownType();
        this.f15049f = deserializationContext.handleSecondaryContextualization(this.f15049f, null, unknownType);
        this.f15050g = deserializationContext.handleSecondaryContextualization(this.f15050g, null, unknownType);
        this.f15051h = deserializationContext.handleSecondaryContextualization(this.f15051h, null, unknownType);
        this.f15052i = deserializationContext.handleSecondaryContextualization(this.f15052i, null, unknownType);
    }

    @Override // com.fasterxml.jackson.databind.d
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return null;
    }

    public UntypedObjectDeserializer(JavaType javaType, JavaType javaType2) {
        super(Object.class);
        this.f15053j = javaType;
        this.f15054k = javaType2;
        this.f15055l = false;
    }

    public UntypedObjectDeserializer(UntypedObjectDeserializer untypedObjectDeserializer, com.fasterxml.jackson.databind.d<?> dVar, com.fasterxml.jackson.databind.d<?> dVar2, com.fasterxml.jackson.databind.d<?> dVar3, com.fasterxml.jackson.databind.d<?> dVar4) {
        super(Object.class);
        this.f15049f = dVar;
        this.f15050g = dVar2;
        this.f15051h = dVar3;
        this.f15052i = dVar4;
        this.f15053j = untypedObjectDeserializer.f15053j;
        this.f15054k = untypedObjectDeserializer.f15054k;
        this.f15055l = untypedObjectDeserializer.f15055l;
    }

    protected UntypedObjectDeserializer(UntypedObjectDeserializer untypedObjectDeserializer, boolean z9) {
        super(Object.class);
        this.f15049f = untypedObjectDeserializer.f15049f;
        this.f15050g = untypedObjectDeserializer.f15050g;
        this.f15051h = untypedObjectDeserializer.f15051h;
        this.f15052i = untypedObjectDeserializer.f15052i;
        this.f15053j = untypedObjectDeserializer.f15053j;
        this.f15054k = untypedObjectDeserializer.f15054k;
        this.f15055l = z9;
    }

    @Override // com.fasterxml.jackson.databind.d
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        if (this.f15055l) {
            return deserialize(jsonParser, deserializationContext);
        }
        switch (jsonParser.X()) {
            case 1:
            case 2:
            case 5:
                com.fasterxml.jackson.databind.d<Object> dVar = this.f15049f;
                if (dVar != null) {
                    return dVar.deserialize(jsonParser, deserializationContext, obj);
                }
                if (obj instanceof Map) {
                    return K0(jsonParser, deserializationContext, (Map) obj);
                }
                return J0(jsonParser, deserializationContext);
            case 3:
                com.fasterxml.jackson.databind.d<Object> dVar2 = this.f15050g;
                if (dVar2 != null) {
                    return dVar2.deserialize(jsonParser, deserializationContext, obj);
                }
                if (obj instanceof Collection) {
                    return H0(jsonParser, deserializationContext, (Collection) obj);
                }
                if (deserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                    return I0(jsonParser, deserializationContext);
                }
                return G0(jsonParser, deserializationContext);
            case 4:
            default:
                return deserialize(jsonParser, deserializationContext);
            case 6:
                com.fasterxml.jackson.databind.d<Object> dVar3 = this.f15051h;
                if (dVar3 != null) {
                    return dVar3.deserialize(jsonParser, deserializationContext, obj);
                }
                return jsonParser.S0();
            case 7:
                com.fasterxml.jackson.databind.d<Object> dVar4 = this.f15052i;
                if (dVar4 != null) {
                    return dVar4.deserialize(jsonParser, deserializationContext, obj);
                }
                if (deserializationContext.hasSomeOfFeatures(StdDeserializer.f14986d)) {
                    return m(jsonParser, deserializationContext);
                }
                return jsonParser.K0();
            case 8:
                com.fasterxml.jackson.databind.d<Object> dVar5 = this.f15052i;
                if (dVar5 != null) {
                    return dVar5.deserialize(jsonParser, deserializationContext, obj);
                }
                if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
                    return jsonParser.y0();
                }
                return jsonParser.K0();
            case 9:
                return Boolean.TRUE;
            case 10:
                return Boolean.FALSE;
            case 11:
                return null;
            case 12:
                return jsonParser.A0();
        }
    }
}
