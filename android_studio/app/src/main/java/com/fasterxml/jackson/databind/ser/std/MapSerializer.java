package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DatabindException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsonFormatVisitors.h;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.e;
import com.fasterxml.jackson.databind.ser.impl.c;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import com.fasterxml.jackson.databind.util.b;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

@c2.a
/* loaded from: classes2.dex */
public class MapSerializer extends ContainerSerializer<Map<?, ?>> implements e {

    /* renamed from: s  reason: collision with root package name */
    private static final long f15779s = 1;

    /* renamed from: d  reason: collision with root package name */
    protected final BeanProperty f15781d;

    /* renamed from: e  reason: collision with root package name */
    protected final boolean f15782e;

    /* renamed from: f  reason: collision with root package name */
    protected final JavaType f15783f;

    /* renamed from: g  reason: collision with root package name */
    protected final JavaType f15784g;

    /* renamed from: h  reason: collision with root package name */
    protected g<Object> f15785h;

    /* renamed from: i  reason: collision with root package name */
    protected g<Object> f15786i;

    /* renamed from: j  reason: collision with root package name */
    protected final f f15787j;

    /* renamed from: k  reason: collision with root package name */
    protected c f15788k;

    /* renamed from: l  reason: collision with root package name */
    protected final Set<String> f15789l;

    /* renamed from: m  reason: collision with root package name */
    protected final Set<String> f15790m;

    /* renamed from: n  reason: collision with root package name */
    protected final Object f15791n;

    /* renamed from: o  reason: collision with root package name */
    protected final Object f15792o;

    /* renamed from: p  reason: collision with root package name */
    protected final boolean f15793p;

    /* renamed from: q  reason: collision with root package name */
    protected final IgnorePropertiesUtil.Checker f15794q;

    /* renamed from: r  reason: collision with root package name */
    protected final boolean f15795r;

    /* renamed from: t  reason: collision with root package name */
    protected static final JavaType f15780t = TypeFactory.unknownType();
    public static final Object MARKER_FOR_EMPTY = JsonInclude.Include.NON_EMPTY;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15796a;

        static {
            int[] iArr = new int[JsonInclude.Include.values().length];
            f15796a = iArr;
            try {
                iArr[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15796a[JsonInclude.Include.NON_ABSENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15796a[JsonInclude.Include.NON_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15796a[JsonInclude.Include.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15796a[JsonInclude.Include.NON_NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15796a[JsonInclude.Include.ALWAYS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    protected MapSerializer(Set<String> set, Set<String> set2, JavaType javaType, JavaType javaType2, boolean z9, f fVar, g<?> gVar, g<?> gVar2) {
        super(Map.class, false);
        set = (set == null || set.isEmpty()) ? null : set;
        this.f15789l = set;
        this.f15790m = set2;
        this.f15783f = javaType;
        this.f15784g = javaType2;
        this.f15782e = z9;
        this.f15787j = fVar;
        this.f15785h = gVar;
        this.f15786i = gVar2;
        this.f15788k = c.c();
        this.f15781d = null;
        this.f15791n = null;
        this.f15795r = false;
        this.f15792o = null;
        this.f15793p = false;
        this.f15794q = IgnorePropertiesUtil.a(set, set2);
    }

    private final g<Object> A(l lVar, Object obj) throws JsonMappingException {
        Class<?> cls = obj.getClass();
        g<Object> m9 = this.f15788k.m(cls);
        if (m9 != null) {
            return m9;
        }
        if (this.f15784g.hasGenericTypes()) {
            return y(this.f15788k, lVar.constructSpecializedType(this.f15784g, cls), lVar);
        }
        return z(this.f15788k, cls, lVar);
    }

    public static MapSerializer construct(Set<String> set, Set<String> set2, JavaType javaType, boolean z9, f fVar, g<Object> gVar, g<Object> gVar2, Object obj) {
        JavaType contentType;
        JavaType javaType2;
        JavaType javaType3;
        boolean z10;
        if (javaType == null) {
            javaType3 = f15780t;
            javaType2 = javaType3;
        } else {
            JavaType keyType = javaType.getKeyType();
            if (javaType.hasRawClass(Properties.class)) {
                contentType = TypeFactory.unknownType();
            } else {
                contentType = javaType.getContentType();
            }
            javaType2 = contentType;
            javaType3 = keyType;
        }
        boolean z11 = false;
        if (!z9) {
            if (javaType2 != null && javaType2.isFinal()) {
                z11 = true;
            }
            z10 = z11;
        } else {
            z10 = javaType2.getRawClass() == Object.class ? false : z9;
        }
        MapSerializer mapSerializer = new MapSerializer(set, set2, javaType3, javaType2, z10, fVar, gVar, gVar2);
        return obj != null ? mapSerializer.withFilterId(obj) : mapSerializer;
    }

    protected boolean B(Map<?, ?> map) {
        return (map instanceof HashMap) && map.containsKey(null);
    }

    protected Map<?, ?> C(Map<?, ?> map, JsonGenerator jsonGenerator, l lVar) throws IOException {
        if (map instanceof SortedMap) {
            return map;
        }
        if (B(map)) {
            TreeMap treeMap = new TreeMap();
            for (Map.Entry<?, ?> entry : map.entrySet()) {
                Object key = entry.getKey();
                if (key == null) {
                    D(jsonGenerator, lVar, entry.getValue());
                } else {
                    treeMap.put(key, entry.getValue());
                }
            }
            return treeMap;
        }
        return new TreeMap(map);
    }

    protected void D(JsonGenerator jsonGenerator, l lVar, Object obj) throws IOException {
        g<Object> gVar;
        g<Object> findNullKeySerializer = lVar.findNullKeySerializer(this.f15783f, this.f15781d);
        if (obj == null) {
            if (this.f15793p) {
                return;
            }
            gVar = lVar.getDefaultNullValueSerializer();
        } else {
            gVar = this.f15786i;
            if (gVar == null) {
                gVar = A(lVar, obj);
            }
            Object obj2 = this.f15792o;
            if (obj2 == MARKER_FOR_EMPTY) {
                if (gVar.isEmpty(lVar, obj)) {
                    return;
                }
            } else if (obj2 != null && obj2.equals(obj)) {
                return;
            }
        }
        try {
            findNullKeySerializer.serialize(null, jsonGenerator, lVar);
            gVar.serialize(obj, jsonGenerator, lVar);
        } catch (Exception e4) {
            wrapAndThrow(lVar, e4, obj, "");
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
        h g4 = fVar.g(javaType);
        if (g4 != null) {
            g4.h(this.f15785h, this.f15783f);
            g<Object> gVar = this.f15786i;
            if (gVar == null) {
                gVar = y(this.f15788k, this.f15784g, fVar.a());
            }
            g4.f(gVar, this.f15784g);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x0126, code lost:
        if (r0 != 5) goto L74;
     */
    @Override // com.fasterxml.jackson.databind.ser.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fasterxml.jackson.databind.g<?> createContextual(com.fasterxml.jackson.databind.l r14, com.fasterxml.jackson.databind.BeanProperty r15) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            Method dump skipped, instructions count: 356
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.MapSerializer.createContextual(com.fasterxml.jackson.databind.l, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.g");
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public g<?> getContentSerializer() {
        return this.f15786i;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JavaType getContentType() {
        return this.f15784g;
    }

    public g<?> getKeySerializer() {
        return this.f15785h;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, d2.c
    public com.fasterxml.jackson.databind.e getSchema(l lVar, Type type) {
        return d("object", true);
    }

    public void serializeFields(Map<?, ?> map, JsonGenerator jsonGenerator, l lVar) throws IOException {
        Object obj = null;
        if (this.f15787j != null) {
            serializeTypedFields(map, jsonGenerator, lVar, null);
            return;
        }
        g<Object> gVar = this.f15785h;
        try {
            Object obj2 = null;
            for (Map.Entry<?, ?> entry : map.entrySet()) {
                try {
                    Object value = entry.getValue();
                    obj2 = entry.getKey();
                    if (obj2 == null) {
                        lVar.findNullKeySerializer(this.f15783f, this.f15781d).serialize(null, jsonGenerator, lVar);
                    } else {
                        IgnorePropertiesUtil.Checker checker = this.f15794q;
                        if (checker == null || !checker.shouldIgnore(obj2)) {
                            gVar.serialize(obj2, jsonGenerator, lVar);
                        }
                    }
                    if (value == null) {
                        lVar.defaultSerializeNull(jsonGenerator);
                    } else {
                        g<Object> gVar2 = this.f15786i;
                        if (gVar2 == null) {
                            gVar2 = A(lVar, value);
                        }
                        gVar2.serialize(value, jsonGenerator, lVar);
                    }
                } catch (Exception e4) {
                    e = e4;
                    obj = obj2;
                    wrapAndThrow(lVar, e, map, String.valueOf(obj));
                    return;
                }
            }
        } catch (Exception e10) {
            e = e10;
        }
    }

    public void serializeFieldsUsing(Map<?, ?> map, JsonGenerator jsonGenerator, l lVar, g<Object> gVar) throws IOException {
        g<Object> gVar2 = this.f15785h;
        f fVar = this.f15787j;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            IgnorePropertiesUtil.Checker checker = this.f15794q;
            if (checker == null || !checker.shouldIgnore(key)) {
                if (key == null) {
                    lVar.findNullKeySerializer(this.f15783f, this.f15781d).serialize(null, jsonGenerator, lVar);
                } else {
                    gVar2.serialize(key, jsonGenerator, lVar);
                }
                Object value = entry.getValue();
                if (value == null) {
                    lVar.defaultSerializeNull(jsonGenerator);
                } else if (fVar == null) {
                    try {
                        gVar.serialize(value, jsonGenerator, lVar);
                    } catch (Exception e4) {
                        wrapAndThrow(lVar, e4, map, String.valueOf(key));
                    }
                } else {
                    gVar.serializeWithType(value, jsonGenerator, lVar, fVar);
                }
            }
        }
    }

    public void serializeFilteredAnyProperties(l lVar, JsonGenerator jsonGenerator, Object obj, Map<?, ?> map, com.fasterxml.jackson.databind.ser.h hVar, Object obj2) throws IOException {
        g<Object> gVar;
        g<Object> defaultNullValueSerializer;
        MapProperty mapProperty = new MapProperty(this.f15787j, this.f15781d);
        boolean z9 = MARKER_FOR_EMPTY == obj2;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            IgnorePropertiesUtil.Checker checker = this.f15794q;
            if (checker == null || !checker.shouldIgnore(key)) {
                if (key == null) {
                    gVar = lVar.findNullKeySerializer(this.f15783f, this.f15781d);
                } else {
                    gVar = this.f15785h;
                }
                Object value = entry.getValue();
                if (value == null) {
                    if (!this.f15793p) {
                        defaultNullValueSerializer = lVar.getDefaultNullValueSerializer();
                    }
                } else {
                    defaultNullValueSerializer = this.f15786i;
                    if (defaultNullValueSerializer == null) {
                        defaultNullValueSerializer = A(lVar, value);
                    }
                    if (z9) {
                        if (defaultNullValueSerializer.isEmpty(lVar, value)) {
                        }
                    } else if (obj2 != null && obj2.equals(value)) {
                    }
                }
                mapProperty.reset(key, value, gVar, defaultNullValueSerializer);
                try {
                    hVar.serializeAsField(obj, jsonGenerator, lVar, mapProperty);
                } catch (Exception e4) {
                    wrapAndThrow(lVar, e4, map, String.valueOf(key));
                }
            }
        }
    }

    public void serializeFilteredFields(Map<?, ?> map, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.ser.h hVar, Object obj) throws IOException {
        g<Object> gVar;
        g<Object> defaultNullValueSerializer;
        MapProperty mapProperty = new MapProperty(this.f15787j, this.f15781d);
        boolean z9 = MARKER_FOR_EMPTY == obj;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            IgnorePropertiesUtil.Checker checker = this.f15794q;
            if (checker == null || !checker.shouldIgnore(key)) {
                if (key == null) {
                    gVar = lVar.findNullKeySerializer(this.f15783f, this.f15781d);
                } else {
                    gVar = this.f15785h;
                }
                Object value = entry.getValue();
                if (value == null) {
                    if (!this.f15793p) {
                        defaultNullValueSerializer = lVar.getDefaultNullValueSerializer();
                    }
                } else {
                    defaultNullValueSerializer = this.f15786i;
                    if (defaultNullValueSerializer == null) {
                        defaultNullValueSerializer = A(lVar, value);
                    }
                    if (z9) {
                        if (defaultNullValueSerializer.isEmpty(lVar, value)) {
                        }
                    } else if (obj != null && obj.equals(value)) {
                    }
                }
                mapProperty.reset(key, value, gVar, defaultNullValueSerializer);
                try {
                    hVar.serializeAsField(map, jsonGenerator, lVar, mapProperty);
                } catch (Exception e4) {
                    wrapAndThrow(lVar, e4, map, String.valueOf(key));
                }
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:12|(2:52|53)(2:14|(1:19)(2:50|32))|20|(3:44|45|(2:49|32)(2:47|48))(4:22|23|(1:25)|(3:40|41|(2:43|32))(2:27|(2:31|32)))|33|34|36|32|10) */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0070, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0071, code lost:
        wrapAndThrow(r10, r2, r8, java.lang.String.valueOf(r3));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void serializeOptionalFields(java.util.Map<?, ?> r8, com.fasterxml.jackson.core.JsonGenerator r9, com.fasterxml.jackson.databind.l r10, java.lang.Object r11) throws java.io.IOException {
        /*
            r7 = this;
            com.fasterxml.jackson.databind.jsontype.f r0 = r7.f15787j
            if (r0 == 0) goto L8
            r7.serializeTypedFields(r8, r9, r10, r11)
            return
        L8:
            java.lang.Object r0 = com.fasterxml.jackson.databind.ser.std.MapSerializer.MARKER_FOR_EMPTY
            if (r0 != r11) goto Le
            r0 = 1
            goto Lf
        Le:
            r0 = 0
        Lf:
            java.util.Set r1 = r8.entrySet()
            java.util.Iterator r1 = r1.iterator()
        L17:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L79
            java.lang.Object r2 = r1.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r3 = r2.getKey()
            if (r3 != 0) goto L32
            com.fasterxml.jackson.databind.JavaType r4 = r7.f15783f
            com.fasterxml.jackson.databind.BeanProperty r5 = r7.f15781d
            com.fasterxml.jackson.databind.g r4 = r10.findNullKeySerializer(r4, r5)
            goto L3f
        L32:
            com.fasterxml.jackson.databind.util.IgnorePropertiesUtil$Checker r4 = r7.f15794q
            if (r4 == 0) goto L3d
            boolean r4 = r4.shouldIgnore(r3)
            if (r4 == 0) goto L3d
            goto L17
        L3d:
            com.fasterxml.jackson.databind.g<java.lang.Object> r4 = r7.f15785h
        L3f:
            java.lang.Object r2 = r2.getValue()
            if (r2 != 0) goto L4f
            boolean r5 = r7.f15793p
            if (r5 == 0) goto L4a
            goto L17
        L4a:
            com.fasterxml.jackson.databind.g r5 = r10.getDefaultNullValueSerializer()
            goto L69
        L4f:
            com.fasterxml.jackson.databind.g<java.lang.Object> r5 = r7.f15786i
            if (r5 != 0) goto L57
            com.fasterxml.jackson.databind.g r5 = r7.A(r10, r2)
        L57:
            if (r0 == 0) goto L60
            boolean r6 = r5.isEmpty(r10, r2)
            if (r6 == 0) goto L69
            goto L17
        L60:
            if (r11 == 0) goto L69
            boolean r6 = r11.equals(r2)
            if (r6 == 0) goto L69
            goto L17
        L69:
            r4.serialize(r3, r9, r10)     // Catch: java.lang.Exception -> L70
            r5.serialize(r2, r9, r10)     // Catch: java.lang.Exception -> L70
            goto L17
        L70:
            r2 = move-exception
            java.lang.String r3 = java.lang.String.valueOf(r3)
            r7.wrapAndThrow(r10, r2, r8, r3)
            goto L17
        L79:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.MapSerializer.serializeOptionalFields(java.util.Map, com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.databind.l, java.lang.Object):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:7|(2:51|52)(2:9|(1:14)(2:49|32))|15|(3:43|44|(2:48|32)(2:46|47))(4:17|18|(1:20)|(3:38|39|(2:42|32)(1:41))(2:22|(2:36|32)))|27|28|29|31|32|5) */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006a, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006b, code lost:
        wrapAndThrow(r10, r2, r8, java.lang.String.valueOf(r3));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void serializeTypedFields(java.util.Map<?, ?> r8, com.fasterxml.jackson.core.JsonGenerator r9, com.fasterxml.jackson.databind.l r10, java.lang.Object r11) throws java.io.IOException {
        /*
            r7 = this;
            java.lang.Object r0 = com.fasterxml.jackson.databind.ser.std.MapSerializer.MARKER_FOR_EMPTY
            if (r0 != r11) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            java.util.Set r1 = r8.entrySet()
            java.util.Iterator r1 = r1.iterator()
        Lf:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L73
            java.lang.Object r2 = r1.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r3 = r2.getKey()
            if (r3 != 0) goto L2a
            com.fasterxml.jackson.databind.JavaType r4 = r7.f15783f
            com.fasterxml.jackson.databind.BeanProperty r5 = r7.f15781d
            com.fasterxml.jackson.databind.g r4 = r10.findNullKeySerializer(r4, r5)
            goto L37
        L2a:
            com.fasterxml.jackson.databind.util.IgnorePropertiesUtil$Checker r4 = r7.f15794q
            if (r4 == 0) goto L35
            boolean r4 = r4.shouldIgnore(r3)
            if (r4 == 0) goto L35
            goto Lf
        L35:
            com.fasterxml.jackson.databind.g<java.lang.Object> r4 = r7.f15785h
        L37:
            java.lang.Object r2 = r2.getValue()
            if (r2 != 0) goto L47
            boolean r5 = r7.f15793p
            if (r5 == 0) goto L42
            goto Lf
        L42:
            com.fasterxml.jackson.databind.g r5 = r10.getDefaultNullValueSerializer()
            goto L61
        L47:
            com.fasterxml.jackson.databind.g<java.lang.Object> r5 = r7.f15786i
            if (r5 != 0) goto L4f
            com.fasterxml.jackson.databind.g r5 = r7.A(r10, r2)
        L4f:
            if (r0 == 0) goto L58
            boolean r6 = r5.isEmpty(r10, r2)
            if (r6 == 0) goto L61
            goto Lf
        L58:
            if (r11 == 0) goto L61
            boolean r6 = r11.equals(r2)
            if (r6 == 0) goto L61
            goto Lf
        L61:
            r4.serialize(r3, r9, r10)
            com.fasterxml.jackson.databind.jsontype.f r4 = r7.f15787j     // Catch: java.lang.Exception -> L6a
            r5.serializeWithType(r2, r9, r10, r4)     // Catch: java.lang.Exception -> L6a
            goto Lf
        L6a:
            r2 = move-exception
            java.lang.String r3 = java.lang.String.valueOf(r3)
            r7.wrapAndThrow(r10, r2, r8, r3)
            goto Lf
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.MapSerializer.serializeTypedFields(java.util.Map, com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.databind.l, java.lang.Object):void");
    }

    public void serializeWithoutTypeInfo(Map<?, ?> map, JsonGenerator jsonGenerator, l lVar) throws IOException {
        com.fasterxml.jackson.databind.ser.h m9;
        if (map.isEmpty()) {
            return;
        }
        if (this.f15795r || lVar.isEnabled(SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS)) {
            map = C(map, jsonGenerator, lVar);
        }
        Map<?, ?> map2 = map;
        Object obj = this.f15791n;
        if (obj != null && (m9 = m(lVar, obj, map2)) != null) {
            serializeFilteredFields(map2, jsonGenerator, lVar, m9, this.f15792o);
            return;
        }
        Object obj2 = this.f15792o;
        if (obj2 == null && !this.f15793p) {
            g<Object> gVar = this.f15786i;
            if (gVar != null) {
                serializeFieldsUsing(map2, jsonGenerator, lVar, gVar);
                return;
            } else {
                serializeFields(map2, jsonGenerator, lVar);
                return;
            }
        }
        serializeOptionalFields(map2, jsonGenerator, lVar, obj2);
    }

    @Deprecated
    protected void w() {
        x("N/A");
    }

    public MapSerializer withContentInclusion(Object obj, boolean z9) {
        if (obj == this.f15792o && z9 == this.f15793p) {
            return this;
        }
        x("withContentInclusion");
        return new MapSerializer(this, this.f15787j, obj, z9);
    }

    public MapSerializer withResolved(BeanProperty beanProperty, g<?> gVar, g<?> gVar2, Set<String> set, Set<String> set2, boolean z9) {
        x("withResolved");
        MapSerializer mapSerializer = new MapSerializer(this, beanProperty, gVar, gVar2, set, set2);
        return z9 != mapSerializer.f15795r ? new MapSerializer(mapSerializer, this.f15791n, z9) : mapSerializer;
    }

    protected void x(String str) {
        com.fasterxml.jackson.databind.util.g.z0(MapSerializer.class, this, str);
    }

    protected final g<Object> y(c cVar, JavaType javaType, l lVar) throws JsonMappingException {
        c.d j4 = cVar.j(javaType, lVar, this.f15781d);
        c cVar2 = j4.f15708b;
        if (cVar != cVar2) {
            this.f15788k = cVar2;
        }
        return j4.f15707a;
    }

    protected final g<Object> z(c cVar, Class<?> cls, l lVar) throws JsonMappingException {
        c.d k10 = cVar.k(cls, lVar, this.f15781d);
        c cVar2 = k10.f15708b;
        if (cVar != cVar2) {
            this.f15788k = cVar2;
        }
        return k10.f15707a;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public MapSerializer _withValueTypeSerializer(f fVar) {
        if (this.f15787j == fVar) {
            return this;
        }
        x("_withValueTypeSerializer");
        return new MapSerializer(this, fVar, this.f15792o, this.f15793p);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public boolean hasSingleElement(Map<?, ?> map) {
        return map.size() == 1;
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, Map<?, ?> map) {
        g<Object> A;
        if (map.isEmpty()) {
            return true;
        }
        Object obj = this.f15792o;
        if (obj != null || this.f15793p) {
            g<Object> gVar = this.f15786i;
            boolean z9 = MARKER_FOR_EMPTY == obj;
            if (gVar != null) {
                for (Object obj2 : map.values()) {
                    if (obj2 == null) {
                        if (!this.f15793p) {
                            return false;
                        }
                    } else if (z9) {
                        if (!gVar.isEmpty(lVar, obj2)) {
                            return false;
                        }
                    } else if (obj == null || !obj.equals(map)) {
                        return false;
                    }
                }
                return true;
            }
            for (Object obj3 : map.values()) {
                if (obj3 == null) {
                    if (!this.f15793p) {
                        return false;
                    }
                } else {
                    try {
                        A = A(lVar, obj3);
                    } catch (DatabindException unused) {
                    }
                    if (z9) {
                        if (!A.isEmpty(lVar, obj3)) {
                            return false;
                        }
                    } else {
                        if (obj != null && obj.equals(map)) {
                        }
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Map<?, ?> map, JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.L1(map);
        serializeWithoutTypeInfo(map, jsonGenerator, lVar);
        jsonGenerator.S0();
    }

    @Override // com.fasterxml.jackson.databind.g
    public void serializeWithType(Map<?, ?> map, JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
        jsonGenerator.w0(map);
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(map, JsonToken.START_OBJECT));
        serializeWithoutTypeInfo(map, jsonGenerator, lVar);
        fVar.v(jsonGenerator, o9);
    }

    @Override // com.fasterxml.jackson.databind.g
    public MapSerializer withFilterId(Object obj) {
        if (this.f15791n == obj) {
            return this;
        }
        x("withFilterId");
        return new MapSerializer(this, obj, this.f15795r);
    }

    @Deprecated
    public MapSerializer withContentInclusion(Object obj) {
        return new MapSerializer(this, this.f15787j, obj, this.f15793p);
    }

    public MapSerializer withResolved(BeanProperty beanProperty, g<?> gVar, g<?> gVar2, Set<String> set, boolean z9) {
        return withResolved(beanProperty, gVar, gVar2, set, null, z9);
    }

    public static MapSerializer construct(Set<String> set, JavaType javaType, boolean z9, f fVar, g<Object> gVar, g<Object> gVar2, Object obj) {
        return construct(set, null, javaType, z9, fVar, gVar, gVar2, obj);
    }

    @Deprecated
    public static MapSerializer construct(String[] strArr, JavaType javaType, boolean z9, f fVar, g<Object> gVar, g<Object> gVar2, Object obj) {
        return construct(b.a(strArr), javaType, z9, fVar, gVar, gVar2, obj);
    }

    @Deprecated
    protected MapSerializer(Set<String> set, JavaType javaType, JavaType javaType2, boolean z9, f fVar, g<?> gVar, g<?> gVar2) {
        this(set, null, javaType, javaType2, z9, fVar, gVar, gVar2);
    }

    protected MapSerializer(MapSerializer mapSerializer, BeanProperty beanProperty, g<?> gVar, g<?> gVar2, Set<String> set, Set<String> set2) {
        super(Map.class, false);
        set = (set == null || set.isEmpty()) ? null : null;
        this.f15789l = set;
        this.f15790m = set2;
        this.f15783f = mapSerializer.f15783f;
        this.f15784g = mapSerializer.f15784g;
        this.f15782e = mapSerializer.f15782e;
        this.f15787j = mapSerializer.f15787j;
        this.f15785h = gVar;
        this.f15786i = gVar2;
        this.f15788k = c.c();
        this.f15781d = beanProperty;
        this.f15791n = mapSerializer.f15791n;
        this.f15795r = mapSerializer.f15795r;
        this.f15792o = mapSerializer.f15792o;
        this.f15793p = mapSerializer.f15793p;
        this.f15794q = IgnorePropertiesUtil.a(set, set2);
    }

    @Deprecated
    protected MapSerializer(MapSerializer mapSerializer, BeanProperty beanProperty, g<?> gVar, g<?> gVar2, Set<String> set) {
        this(mapSerializer, beanProperty, gVar, gVar2, set, null);
    }

    protected MapSerializer(MapSerializer mapSerializer, f fVar, Object obj, boolean z9) {
        super(Map.class, false);
        this.f15789l = mapSerializer.f15789l;
        this.f15790m = mapSerializer.f15790m;
        this.f15783f = mapSerializer.f15783f;
        this.f15784g = mapSerializer.f15784g;
        this.f15782e = mapSerializer.f15782e;
        this.f15787j = fVar;
        this.f15785h = mapSerializer.f15785h;
        this.f15786i = mapSerializer.f15786i;
        this.f15788k = mapSerializer.f15788k;
        this.f15781d = mapSerializer.f15781d;
        this.f15791n = mapSerializer.f15791n;
        this.f15795r = mapSerializer.f15795r;
        this.f15792o = obj;
        this.f15793p = z9;
        this.f15794q = mapSerializer.f15794q;
    }

    protected MapSerializer(MapSerializer mapSerializer, Object obj, boolean z9) {
        super(Map.class, false);
        this.f15789l = mapSerializer.f15789l;
        this.f15790m = mapSerializer.f15790m;
        this.f15783f = mapSerializer.f15783f;
        this.f15784g = mapSerializer.f15784g;
        this.f15782e = mapSerializer.f15782e;
        this.f15787j = mapSerializer.f15787j;
        this.f15785h = mapSerializer.f15785h;
        this.f15786i = mapSerializer.f15786i;
        this.f15788k = c.c();
        this.f15781d = mapSerializer.f15781d;
        this.f15791n = obj;
        this.f15795r = z9;
        this.f15792o = mapSerializer.f15792o;
        this.f15793p = mapSerializer.f15793p;
        this.f15794q = mapSerializer.f15794q;
    }

    @Deprecated
    protected MapSerializer(MapSerializer mapSerializer, f fVar, Object obj) {
        this(mapSerializer, fVar, obj, false);
    }
}
