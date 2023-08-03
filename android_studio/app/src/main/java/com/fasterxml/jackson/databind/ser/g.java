package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.util.NameTransformer;

/* compiled from: PropertyBuilder.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: g  reason: collision with root package name */
    private static final Object f15637g = Boolean.FALSE;

    /* renamed from: a  reason: collision with root package name */
    protected final SerializationConfig f15638a;

    /* renamed from: b  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.b f15639b;

    /* renamed from: c  reason: collision with root package name */
    protected final AnnotationIntrospector f15640c;

    /* renamed from: d  reason: collision with root package name */
    protected Object f15641d;

    /* renamed from: e  reason: collision with root package name */
    protected final JsonInclude.Value f15642e;

    /* renamed from: f  reason: collision with root package name */
    protected final boolean f15643f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PropertyBuilder.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15644a;

        static {
            int[] iArr = new int[JsonInclude.Include.values().length];
            f15644a = iArr;
            try {
                iArr[JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15644a[JsonInclude.Include.NON_ABSENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15644a[JsonInclude.Include.NON_EMPTY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15644a[JsonInclude.Include.CUSTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15644a[JsonInclude.Include.NON_NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15644a[JsonInclude.Include.ALWAYS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public g(SerializationConfig serializationConfig, com.fasterxml.jackson.databind.b bVar) {
        this.f15638a = serializationConfig;
        this.f15639b = bVar;
        JsonInclude.Value merge = JsonInclude.Value.merge(bVar.v(JsonInclude.Value.empty()), serializationConfig.getDefaultPropertyInclusion(bVar.y(), JsonInclude.Value.empty()));
        this.f15642e = JsonInclude.Value.merge(serializationConfig.getDefaultPropertyInclusion(), merge);
        this.f15643f = merge.getValueInclusion() == JsonInclude.Include.NON_DEFAULT;
        this.f15640c = serializationConfig.getAnnotationIntrospector();
    }

    protected BeanPropertyWriter a(com.fasterxml.jackson.databind.introspect.k kVar, AnnotatedMember annotatedMember, com.fasterxml.jackson.databind.util.a aVar, JavaType javaType, com.fasterxml.jackson.databind.g<?> gVar, com.fasterxml.jackson.databind.jsontype.f fVar, JavaType javaType2, boolean z9, Object obj, Class<?>[] clsArr) throws JsonMappingException {
        return new BeanPropertyWriter(kVar, annotatedMember, aVar, javaType, gVar, fVar, javaType2, z9, obj, clsArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r3 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected java.lang.Object b(java.lang.Exception r3, java.lang.String r4, java.lang.Object r5) {
        /*
            r2 = this;
        L0:
            java.lang.Throwable r0 = r3.getCause()
            if (r0 == 0) goto Lb
            java.lang.Throwable r3 = r3.getCause()
            goto L0
        Lb:
            com.fasterxml.jackson.databind.util.g.t0(r3)
            com.fasterxml.jackson.databind.util.g.v0(r3)
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Failed to get property '"
            r0.append(r1)
            r0.append(r4)
            java.lang.String r4 = "' of default "
            r0.append(r4)
            java.lang.Class r4 = r5.getClass()
            java.lang.String r4 = r4.getName()
            r0.append(r4)
            java.lang.String r4 = " instance"
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.g.b(java.lang.Exception, java.lang.String, java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanPropertyWriter c(com.fasterxml.jackson.databind.l lVar, com.fasterxml.jackson.databind.introspect.k kVar, JavaType javaType, com.fasterxml.jackson.databind.g<?> gVar, com.fasterxml.jackson.databind.jsontype.f fVar, com.fasterxml.jackson.databind.jsontype.f fVar2, AnnotatedMember annotatedMember, boolean z9) throws JsonMappingException {
        JavaType javaType2;
        Object b10;
        Object f10;
        Object obj;
        boolean z10;
        try {
            JavaType d4 = d(annotatedMember, z9, javaType);
            if (fVar2 != null) {
                if (d4 == null) {
                    d4 = javaType;
                }
                if (d4.getContentType() == null) {
                    com.fasterxml.jackson.databind.b bVar = this.f15639b;
                    lVar.reportBadPropertyDefinition(bVar, kVar, "serialization type " + d4 + " has no content", new Object[0]);
                }
                JavaType withContentTypeHandler = d4.withContentTypeHandler(fVar2);
                withContentTypeHandler.getContentType();
                javaType2 = withContentTypeHandler;
            } else {
                javaType2 = d4;
            }
            Object obj2 = null;
            JavaType javaType3 = javaType2 == null ? javaType : javaType2;
            AnnotatedMember h4 = kVar.h();
            if (h4 == null) {
                return (BeanPropertyWriter) lVar.reportBadPropertyDefinition(this.f15639b, kVar, "could not determine property type", new Object[0]);
            }
            JsonInclude.Value withOverrides = this.f15638a.getDefaultInclusion(javaType3.getRawClass(), h4.getRawType(), this.f15642e).withOverrides(kVar.c());
            JsonInclude.Include valueInclusion = withOverrides.getValueInclusion();
            if (valueInclusion == JsonInclude.Include.USE_DEFAULTS) {
                valueInclusion = JsonInclude.Include.ALWAYS;
            }
            int i4 = a.f15644a[valueInclusion.ordinal()];
            if (i4 != 1) {
                if (i4 == 2) {
                    if (javaType3.isReferenceType()) {
                        b10 = BeanPropertyWriter.MARKER_FOR_EMPTY;
                    }
                    obj = obj2;
                    z10 = true;
                } else if (i4 != 3) {
                    if (i4 != 4) {
                        r1 = i4 == 5;
                        SerializationFeature serializationFeature = SerializationFeature.WRITE_EMPTY_JSON_ARRAYS;
                        if (javaType3.isContainerType() && !this.f15638a.isEnabled(serializationFeature)) {
                            b10 = BeanPropertyWriter.MARKER_FOR_EMPTY;
                        }
                        z10 = r1;
                        obj = obj2;
                    } else {
                        b10 = lVar.includeFilterInstance(kVar, withOverrides.getValueFilter());
                        if (b10 != null) {
                            r1 = lVar.includeFilterSuppressNulls(b10);
                        }
                    }
                    obj = b10;
                    z10 = r1;
                } else {
                    b10 = BeanPropertyWriter.MARKER_FOR_EMPTY;
                }
                obj = b10;
                z10 = true;
            } else {
                if (this.f15643f && (f10 = f()) != null) {
                    if (lVar.isEnabled(MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                        annotatedMember.fixAccess(this.f15638a.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                    }
                    try {
                        obj2 = annotatedMember.getValue(f10);
                    } catch (Exception e4) {
                        b(e4, kVar.getName(), f10);
                    }
                } else {
                    obj2 = com.fasterxml.jackson.databind.util.d.b(javaType3);
                    r1 = true;
                }
                if (obj2 != null) {
                    if (obj2.getClass().isArray()) {
                        b10 = com.fasterxml.jackson.databind.util.b.b(obj2);
                        obj = b10;
                        z10 = r1;
                    }
                    z10 = r1;
                    obj = obj2;
                }
                obj = obj2;
                z10 = true;
            }
            Class<?>[] g4 = kVar.g();
            if (g4 == null) {
                g4 = this.f15639b.j();
            }
            BeanPropertyWriter a10 = a(kVar, annotatedMember, this.f15639b.z(), javaType, gVar, fVar, javaType2, z10, obj, g4);
            Object findNullSerializer = this.f15640c.findNullSerializer(annotatedMember);
            if (findNullSerializer != null) {
                a10.assignNullSerializer(lVar.serializerInstance(annotatedMember, findNullSerializer));
            }
            NameTransformer findUnwrappingNameTransformer = this.f15640c.findUnwrappingNameTransformer(annotatedMember);
            return findUnwrappingNameTransformer != null ? a10.unwrappingWriter(findUnwrappingNameTransformer) : a10;
        } catch (JsonMappingException e10) {
            if (kVar == null) {
                return (BeanPropertyWriter) lVar.reportBadDefinition(javaType, com.fasterxml.jackson.databind.util.g.q(e10));
            }
            return (BeanPropertyWriter) lVar.reportBadPropertyDefinition(this.f15639b, kVar, com.fasterxml.jackson.databind.util.g.q(e10), new Object[0]);
        }
    }

    protected JavaType d(com.fasterxml.jackson.databind.introspect.a aVar, boolean z9, JavaType javaType) throws JsonMappingException {
        JavaType refineSerializationType = this.f15640c.refineSerializationType(this.f15638a, aVar, javaType);
        if (refineSerializationType != javaType) {
            Class<?> rawClass = refineSerializationType.getRawClass();
            Class<?> rawClass2 = javaType.getRawClass();
            if (!rawClass.isAssignableFrom(rawClass2) && !rawClass2.isAssignableFrom(rawClass)) {
                throw new IllegalArgumentException("Illegal concrete-type annotation for method '" + aVar.getName() + "': class " + rawClass.getName() + " not a super-type of (declared) class " + rawClass2.getName());
            }
            javaType = refineSerializationType;
            z9 = true;
        }
        JsonSerialize.Typing findSerializationTyping = this.f15640c.findSerializationTyping(aVar);
        if (findSerializationTyping != null && findSerializationTyping != JsonSerialize.Typing.DEFAULT_TYPING) {
            z9 = findSerializationTyping == JsonSerialize.Typing.STATIC;
        }
        if (z9) {
            return javaType.withStaticTyping();
        }
        return null;
    }

    public com.fasterxml.jackson.databind.util.a e() {
        return this.f15639b.z();
    }

    protected Object f() {
        Object obj = this.f15641d;
        if (obj == null) {
            obj = this.f15639b.J(this.f15638a.canOverrideAccessModifiers());
            if (obj == null) {
                obj = f15637g;
            }
            this.f15641d = obj;
        }
        if (obj == f15637g) {
            return null;
        }
        return this.f15641d;
    }

    @Deprecated
    protected Object g(JavaType javaType) {
        return com.fasterxml.jackson.databind.util.d.b(javaType);
    }

    @Deprecated
    protected Object h(String str, AnnotatedMember annotatedMember, JavaType javaType) {
        Object f10 = f();
        if (f10 == null) {
            return g(javaType);
        }
        try {
            return annotatedMember.getValue(f10);
        } catch (Exception e4) {
            return b(e4, str, f10);
        }
    }
}
