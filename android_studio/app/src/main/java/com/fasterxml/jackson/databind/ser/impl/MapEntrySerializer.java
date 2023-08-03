package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.impl.c;
import java.io.IOException;
import java.util.Map;

@c2.a
/* loaded from: classes.dex */
public class MapEntrySerializer extends ContainerSerializer<Map.Entry<?, ?>> implements com.fasterxml.jackson.databind.ser.e {
    public static final Object MARKER_FOR_EMPTY = JsonInclude.Include.NON_EMPTY;

    /* renamed from: d  reason: collision with root package name */
    protected final BeanProperty f15652d;

    /* renamed from: e  reason: collision with root package name */
    protected final boolean f15653e;

    /* renamed from: f  reason: collision with root package name */
    protected final JavaType f15654f;

    /* renamed from: g  reason: collision with root package name */
    protected final JavaType f15655g;

    /* renamed from: h  reason: collision with root package name */
    protected final JavaType f15656h;

    /* renamed from: i  reason: collision with root package name */
    protected g<Object> f15657i;

    /* renamed from: j  reason: collision with root package name */
    protected g<Object> f15658j;

    /* renamed from: k  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.jsontype.f f15659k;

    /* renamed from: l  reason: collision with root package name */
    protected c f15660l;

    /* renamed from: m  reason: collision with root package name */
    protected final Object f15661m;

    /* renamed from: n  reason: collision with root package name */
    protected final boolean f15662n;

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15663a;

        static {
            int[] iArr = new int[JsonInclude.Include.values().length];
            f15663a = iArr;
            try {
                iArr[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15663a[JsonInclude.Include.NON_ABSENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15663a[JsonInclude.Include.NON_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15663a[JsonInclude.Include.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15663a[JsonInclude.Include.NON_NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15663a[JsonInclude.Include.ALWAYS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public MapEntrySerializer(JavaType javaType, JavaType javaType2, JavaType javaType3, boolean z9, com.fasterxml.jackson.databind.jsontype.f fVar, BeanProperty beanProperty) {
        super(javaType);
        this.f15654f = javaType;
        this.f15655g = javaType2;
        this.f15656h = javaType3;
        this.f15653e = z9;
        this.f15659k = fVar;
        this.f15652d = beanProperty;
        this.f15660l = c.c();
        this.f15661m = null;
        this.f15662n = false;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public ContainerSerializer<?> _withValueTypeSerializer(com.fasterxml.jackson.databind.jsontype.f fVar) {
        return new MapEntrySerializer(this, this.f15652d, fVar, this.f15657i, this.f15658j, this.f15661m, this.f15662n);
    }

    @Override // com.fasterxml.jackson.databind.ser.e
    public g<?> createContextual(l lVar, BeanProperty beanProperty) throws JsonMappingException {
        g<Object> gVar;
        g<?> gVar2;
        g<?> handleSecondaryContextualization;
        Object obj;
        boolean z9;
        JsonInclude.Value findPropertyInclusion;
        JsonInclude.Include contentInclusion;
        AnnotationIntrospector annotationIntrospector = lVar.getAnnotationIntrospector();
        Object obj2 = null;
        AnnotatedMember member = beanProperty == null ? null : beanProperty.getMember();
        if (member == null || annotationIntrospector == null) {
            gVar = null;
            gVar2 = null;
        } else {
            Object findKeySerializer = annotationIntrospector.findKeySerializer(member);
            gVar2 = findKeySerializer != null ? lVar.serializerInstance(member, findKeySerializer) : null;
            Object findContentSerializer = annotationIntrospector.findContentSerializer(member);
            gVar = findContentSerializer != null ? lVar.serializerInstance(member, findContentSerializer) : null;
        }
        if (gVar == null) {
            gVar = this.f15658j;
        }
        g<?> h4 = h(lVar, beanProperty, gVar);
        if (h4 == null && this.f15653e && !this.f15656h.isJavaLangObject()) {
            h4 = lVar.findContentValueSerializer(this.f15656h, beanProperty);
        }
        g<?> gVar3 = h4;
        if (gVar2 == null) {
            gVar2 = this.f15657i;
        }
        if (gVar2 == null) {
            handleSecondaryContextualization = lVar.findKeySerializer(this.f15655g, beanProperty);
        } else {
            handleSecondaryContextualization = lVar.handleSecondaryContextualization(gVar2, beanProperty);
        }
        g<?> gVar4 = handleSecondaryContextualization;
        Object obj3 = this.f15661m;
        boolean z10 = this.f15662n;
        if (beanProperty == null || (findPropertyInclusion = beanProperty.findPropertyInclusion(lVar.getConfig(), null)) == null || (contentInclusion = findPropertyInclusion.getContentInclusion()) == JsonInclude.Include.USE_DEFAULTS) {
            obj = obj3;
            z9 = z10;
        } else {
            int i4 = a.f15663a[contentInclusion.ordinal()];
            if (i4 == 1) {
                obj2 = com.fasterxml.jackson.databind.util.d.b(this.f15656h);
                if (obj2 != null && obj2.getClass().isArray()) {
                    obj2 = com.fasterxml.jackson.databind.util.b.b(obj2);
                }
            } else if (i4 != 2) {
                if (i4 == 3) {
                    obj2 = MARKER_FOR_EMPTY;
                } else if (i4 == 4) {
                    obj2 = lVar.includeFilterInstance(null, findPropertyInclusion.getContentFilter());
                    if (obj2 != null) {
                        z9 = lVar.includeFilterSuppressNulls(obj2);
                        obj = obj2;
                    }
                } else if (i4 != 5) {
                    obj = null;
                    z9 = false;
                }
            } else if (this.f15656h.isReferenceType()) {
                obj2 = MARKER_FOR_EMPTY;
            }
            obj = obj2;
            z9 = true;
        }
        return withResolved(beanProperty, gVar4, gVar3, obj, z9);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public g<?> getContentSerializer() {
        return this.f15658j;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JavaType getContentType() {
        return this.f15656h;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public boolean hasSingleElement(Map.Entry<?, ?> entry) {
        return true;
    }

    protected final g<Object> w(c cVar, JavaType javaType, l lVar) throws JsonMappingException {
        c.d j4 = cVar.j(javaType, lVar, this.f15652d);
        c cVar2 = j4.f15708b;
        if (cVar != cVar2) {
            this.f15660l = cVar2;
        }
        return j4.f15707a;
    }

    public MapEntrySerializer withContentInclusion(Object obj, boolean z9) {
        return (this.f15661m == obj && this.f15662n == z9) ? this : new MapEntrySerializer(this, this.f15652d, this.f15659k, this.f15657i, this.f15658j, obj, z9);
    }

    public MapEntrySerializer withResolved(BeanProperty beanProperty, g<?> gVar, g<?> gVar2, Object obj, boolean z9) {
        return new MapEntrySerializer(this, beanProperty, this.f15659k, gVar, gVar2, obj, z9);
    }

    protected final g<Object> x(c cVar, Class<?> cls, l lVar) throws JsonMappingException {
        c.d k10 = cVar.k(cls, lVar, this.f15652d);
        c cVar2 = k10.f15708b;
        if (cVar != cVar2) {
            this.f15660l = cVar2;
        }
        return k10.f15707a;
    }

    protected void y(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, l lVar) throws IOException {
        g<Object> gVar;
        g<Object> gVar2;
        com.fasterxml.jackson.databind.jsontype.f fVar = this.f15659k;
        Object key = entry.getKey();
        if (key == null) {
            gVar = lVar.findNullKeySerializer(this.f15655g, this.f15652d);
        } else {
            gVar = this.f15657i;
        }
        Object value = entry.getValue();
        if (value == null) {
            if (this.f15662n) {
                return;
            }
            gVar2 = lVar.getDefaultNullValueSerializer();
        } else {
            gVar2 = this.f15658j;
            if (gVar2 == null) {
                Class<?> cls = value.getClass();
                g<Object> m9 = this.f15660l.m(cls);
                if (m9 != null) {
                    gVar2 = m9;
                } else if (this.f15656h.hasGenericTypes()) {
                    gVar2 = w(this.f15660l, lVar.constructSpecializedType(this.f15656h, cls), lVar);
                } else {
                    gVar2 = x(this.f15660l, cls, lVar);
                }
            }
            Object obj = this.f15661m;
            if (obj != null && ((obj == MARKER_FOR_EMPTY && gVar2.isEmpty(lVar, value)) || this.f15661m.equals(value))) {
                return;
            }
        }
        gVar.serialize(key, jsonGenerator, lVar);
        try {
            if (fVar == null) {
                gVar2.serialize(value, jsonGenerator, lVar);
            } else {
                gVar2.serializeWithType(value, jsonGenerator, lVar, fVar);
            }
        } catch (Exception e4) {
            wrapAndThrow(lVar, e4, entry, "" + key);
        }
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, Map.Entry<?, ?> entry) {
        Object value = entry.getValue();
        if (value == null) {
            return this.f15662n;
        }
        if (this.f15661m == null) {
            return false;
        }
        g<Object> gVar = this.f15658j;
        if (gVar == null) {
            Class<?> cls = value.getClass();
            g<Object> m9 = this.f15660l.m(cls);
            if (m9 == null) {
                try {
                    gVar = x(this.f15660l, cls, lVar);
                } catch (JsonMappingException unused) {
                    return false;
                }
            } else {
                gVar = m9;
            }
        }
        Object obj = this.f15661m;
        if (obj == MARKER_FOR_EMPTY) {
            return gVar.isEmpty(lVar, value);
        }
        return obj.equals(value);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.L1(entry);
        y(entry, jsonGenerator, lVar);
        jsonGenerator.S0();
    }

    @Override // com.fasterxml.jackson.databind.g
    public void serializeWithType(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        jsonGenerator.w0(entry);
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(entry, JsonToken.START_OBJECT));
        y(entry, jsonGenerator, lVar);
        fVar.v(jsonGenerator, o9);
    }

    @Deprecated
    protected MapEntrySerializer(MapEntrySerializer mapEntrySerializer, BeanProperty beanProperty, com.fasterxml.jackson.databind.jsontype.f fVar, g<?> gVar, g<?> gVar2) {
        this(mapEntrySerializer, beanProperty, fVar, gVar, gVar2, mapEntrySerializer.f15661m, mapEntrySerializer.f15662n);
    }

    protected MapEntrySerializer(MapEntrySerializer mapEntrySerializer, BeanProperty beanProperty, com.fasterxml.jackson.databind.jsontype.f fVar, g<?> gVar, g<?> gVar2, Object obj, boolean z9) {
        super(Map.class, false);
        this.f15654f = mapEntrySerializer.f15654f;
        this.f15655g = mapEntrySerializer.f15655g;
        this.f15656h = mapEntrySerializer.f15656h;
        this.f15653e = mapEntrySerializer.f15653e;
        this.f15659k = mapEntrySerializer.f15659k;
        this.f15657i = gVar;
        this.f15658j = gVar2;
        this.f15660l = c.c();
        this.f15652d = mapEntrySerializer.f15652d;
        this.f15661m = obj;
        this.f15662n = z9;
    }
}
