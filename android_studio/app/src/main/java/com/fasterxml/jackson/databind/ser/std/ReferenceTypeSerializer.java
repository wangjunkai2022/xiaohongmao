package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.RuntimeJsonMappingException;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.g;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.e;
import com.fasterxml.jackson.databind.ser.impl.c;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.b;
import com.fasterxml.jackson.databind.util.d;
import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class ReferenceTypeSerializer<T> extends StdSerializer<T> implements e {
    public static final Object MARKER_FOR_EMPTY = JsonInclude.Include.NON_EMPTY;

    /* renamed from: l  reason: collision with root package name */
    private static final long f15813l = 1;

    /* renamed from: d  reason: collision with root package name */
    protected final JavaType f15814d;

    /* renamed from: e  reason: collision with root package name */
    protected final BeanProperty f15815e;

    /* renamed from: f  reason: collision with root package name */
    protected final f f15816f;

    /* renamed from: g  reason: collision with root package name */
    protected final g<Object> f15817g;

    /* renamed from: h  reason: collision with root package name */
    protected final NameTransformer f15818h;

    /* renamed from: i  reason: collision with root package name */
    protected transient c f15819i;

    /* renamed from: j  reason: collision with root package name */
    protected final Object f15820j;

    /* renamed from: k  reason: collision with root package name */
    protected final boolean f15821k;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15822a;

        static {
            int[] iArr = new int[JsonInclude.Include.values().length];
            f15822a = iArr;
            try {
                iArr[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15822a[JsonInclude.Include.NON_ABSENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15822a[JsonInclude.Include.NON_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15822a[JsonInclude.Include.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15822a[JsonInclude.Include.NON_NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15822a[JsonInclude.Include.ALWAYS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ReferenceTypeSerializer(ReferenceType referenceType, boolean z9, f fVar, g<Object> gVar) {
        super(referenceType);
        this.f15814d = referenceType.getReferencedType();
        this.f15815e = null;
        this.f15816f = fVar;
        this.f15817g = gVar;
        this.f15818h = null;
        this.f15820j = null;
        this.f15821k = false;
        this.f15819i = c.c();
    }

    private final g<Object> v(l lVar, Class<?> cls) throws JsonMappingException {
        g<Object> findPrimaryPropertySerializer;
        g<Object> m9 = this.f15819i.m(cls);
        if (m9 == null) {
            if (this.f15814d.hasGenericTypes()) {
                findPrimaryPropertySerializer = lVar.findPrimaryPropertySerializer(lVar.constructSpecializedType(this.f15814d, cls), this.f15815e);
            } else {
                findPrimaryPropertySerializer = lVar.findPrimaryPropertySerializer(cls, this.f15815e);
            }
            NameTransformer nameTransformer = this.f15818h;
            if (nameTransformer != null) {
                findPrimaryPropertySerializer = findPrimaryPropertySerializer.unwrappingSerializer(nameTransformer);
            }
            g<Object> gVar = findPrimaryPropertySerializer;
            this.f15819i = this.f15819i.l(cls, gVar);
            return gVar;
        }
        return m9;
    }

    private final g<Object> w(l lVar, JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return lVar.findPrimaryPropertySerializer(javaType, beanProperty);
    }

    protected boolean A(l lVar, BeanProperty beanProperty, JavaType javaType) {
        if (javaType.isJavaLangObject()) {
            return false;
        }
        if (javaType.isFinal() || javaType.useStaticType()) {
            return true;
        }
        AnnotationIntrospector annotationIntrospector = lVar.getAnnotationIntrospector();
        if (annotationIntrospector != null && beanProperty != null && beanProperty.getMember() != null) {
            JsonSerialize.Typing findSerializationTyping = annotationIntrospector.findSerializationTyping(beanProperty.getMember());
            if (findSerializationTyping == JsonSerialize.Typing.STATIC) {
                return true;
            }
            if (findSerializationTyping == JsonSerialize.Typing.DYNAMIC) {
                return false;
            }
        }
        return lVar.isEnabled(MapperFeature.USE_STATIC_TYPING);
    }

    protected abstract ReferenceTypeSerializer<T> B(BeanProperty beanProperty, f fVar, g<?> gVar, NameTransformer nameTransformer);

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
        g<Object> gVar = this.f15817g;
        if (gVar == null) {
            gVar = w(fVar.a(), this.f15814d, this.f15815e);
            NameTransformer nameTransformer = this.f15818h;
            if (nameTransformer != null) {
                gVar = gVar.unwrappingSerializer(nameTransformer);
            }
        }
        gVar.acceptJsonFormatVisitor(fVar, this.f15814d);
    }

    @Override // com.fasterxml.jackson.databind.ser.e
    public g<?> createContextual(l lVar, BeanProperty beanProperty) throws JsonMappingException {
        JsonInclude.Value findPropertyInclusion;
        JsonInclude.Include contentInclusion;
        f fVar = this.f15816f;
        if (fVar != null) {
            fVar = fVar.b(beanProperty);
        }
        g<?> e4 = e(lVar, beanProperty);
        if (e4 == null) {
            e4 = this.f15817g;
            if (e4 == null) {
                if (A(lVar, beanProperty, this.f15814d)) {
                    e4 = w(lVar, this.f15814d, beanProperty);
                }
            } else {
                e4 = lVar.handlePrimaryContextualization(e4, beanProperty);
            }
        }
        ReferenceTypeSerializer<T> B = (this.f15815e == beanProperty && this.f15816f == fVar && this.f15817g == e4) ? this : B(beanProperty, fVar, e4, this.f15818h);
        if (beanProperty == null || (findPropertyInclusion = beanProperty.findPropertyInclusion(lVar.getConfig(), handledType())) == null || (contentInclusion = findPropertyInclusion.getContentInclusion()) == JsonInclude.Include.USE_DEFAULTS) {
            return B;
        }
        int i4 = a.f15822a[contentInclusion.ordinal()];
        Object obj = null;
        boolean z9 = true;
        if (i4 == 1) {
            obj = d.b(this.f15814d);
            if (obj != null && obj.getClass().isArray()) {
                obj = b.b(obj);
            }
        } else if (i4 != 2) {
            if (i4 == 3) {
                obj = MARKER_FOR_EMPTY;
            } else if (i4 == 4) {
                obj = lVar.includeFilterInstance(null, findPropertyInclusion.getContentFilter());
                if (obj != null) {
                    z9 = lVar.includeFilterSuppressNulls(obj);
                }
            } else if (i4 != 5) {
                z9 = false;
            }
        } else if (this.f15814d.isReferenceType()) {
            obj = MARKER_FOR_EMPTY;
        }
        return (this.f15820j == obj && this.f15821k == z9) ? B : B.withContentInclusion(obj, z9);
    }

    public JavaType getReferredType() {
        return this.f15814d;
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, T t9) {
        if (z(t9)) {
            Object x9 = x(t9);
            if (x9 == null) {
                return this.f15821k;
            }
            if (this.f15820j == null) {
                return false;
            }
            g<Object> gVar = this.f15817g;
            if (gVar == null) {
                try {
                    gVar = v(lVar, x9.getClass());
                } catch (JsonMappingException e4) {
                    throw new RuntimeJsonMappingException(e4);
                }
            }
            Object obj = this.f15820j;
            if (obj == MARKER_FOR_EMPTY) {
                return gVar.isEmpty(lVar, x9);
            }
            return obj.equals(x9);
        }
        return true;
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isUnwrappingSerializer() {
        return this.f15818h != null;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(T t9, JsonGenerator jsonGenerator, l lVar) throws IOException {
        Object y9 = y(t9);
        if (y9 == null) {
            if (this.f15818h == null) {
                lVar.defaultSerializeNull(jsonGenerator);
                return;
            }
            return;
        }
        g<Object> gVar = this.f15817g;
        if (gVar == null) {
            gVar = v(lVar, y9.getClass());
        }
        f fVar = this.f15816f;
        if (fVar != null) {
            gVar.serializeWithType(y9, jsonGenerator, lVar, fVar);
        } else {
            gVar.serialize(y9, jsonGenerator, lVar);
        }
    }

    @Override // com.fasterxml.jackson.databind.g
    public void serializeWithType(T t9, JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
        Object y9 = y(t9);
        if (y9 == null) {
            if (this.f15818h == null) {
                lVar.defaultSerializeNull(jsonGenerator);
                return;
            }
            return;
        }
        g<Object> gVar = this.f15817g;
        if (gVar == null) {
            gVar = v(lVar, y9.getClass());
        }
        gVar.serializeWithType(y9, jsonGenerator, lVar, fVar);
    }

    @Override // com.fasterxml.jackson.databind.g
    public g<T> unwrappingSerializer(NameTransformer nameTransformer) {
        g<?> gVar = this.f15817g;
        if (gVar == null || (gVar = gVar.unwrappingSerializer(nameTransformer)) != this.f15817g) {
            NameTransformer nameTransformer2 = this.f15818h;
            if (nameTransformer2 != null) {
                nameTransformer = NameTransformer.chainedTransformer(nameTransformer, nameTransformer2);
            }
            return (this.f15817g == gVar && this.f15818h == nameTransformer) ? this : B(this.f15815e, this.f15816f, gVar, nameTransformer);
        }
        return this;
    }

    public abstract ReferenceTypeSerializer<T> withContentInclusion(Object obj, boolean z9);

    protected abstract Object x(T t9);

    protected abstract Object y(T t9);

    protected abstract boolean z(T t9);

    /* JADX INFO: Access modifiers changed from: protected */
    public ReferenceTypeSerializer(ReferenceTypeSerializer<?> referenceTypeSerializer, BeanProperty beanProperty, f fVar, g<?> gVar, NameTransformer nameTransformer, Object obj, boolean z9) {
        super(referenceTypeSerializer);
        this.f15814d = referenceTypeSerializer.f15814d;
        this.f15819i = c.c();
        this.f15815e = beanProperty;
        this.f15816f = fVar;
        this.f15817g = gVar;
        this.f15818h = nameTransformer;
        this.f15820j = obj;
        this.f15821k = z9;
    }
}
