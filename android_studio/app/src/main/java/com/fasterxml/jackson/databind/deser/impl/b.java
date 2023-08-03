package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.std.StdValueInstantiator;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.ksyun.media.streamer.logstats.StatsConstant;
import java.lang.reflect.Member;
import java.util.HashMap;

/* compiled from: CreatorCollector.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: j  reason: collision with root package name */
    protected static final int f14755j = 0;

    /* renamed from: k  reason: collision with root package name */
    protected static final int f14756k = 1;

    /* renamed from: l  reason: collision with root package name */
    protected static final int f14757l = 2;

    /* renamed from: m  reason: collision with root package name */
    protected static final int f14758m = 3;

    /* renamed from: n  reason: collision with root package name */
    protected static final int f14759n = 4;

    /* renamed from: o  reason: collision with root package name */
    protected static final int f14760o = 5;

    /* renamed from: p  reason: collision with root package name */
    protected static final int f14761p = 6;

    /* renamed from: q  reason: collision with root package name */
    protected static final int f14762q = 7;

    /* renamed from: r  reason: collision with root package name */
    protected static final int f14763r = 8;

    /* renamed from: s  reason: collision with root package name */
    protected static final int f14764s = 9;

    /* renamed from: t  reason: collision with root package name */
    protected static final int f14765t = 10;

    /* renamed from: u  reason: collision with root package name */
    protected static final String[] f14766u = {StatsConstant.BW_EST_STRATEGY_NORMAL, "from-String", "from-int", "from-long", "from-big-integer", "from-double", "from-big-decimal", "from-boolean", "delegate", "property-based", "array-delegate"};

    /* renamed from: a  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.b f14767a;

    /* renamed from: b  reason: collision with root package name */
    protected final boolean f14768b;

    /* renamed from: c  reason: collision with root package name */
    protected final boolean f14769c;

    /* renamed from: d  reason: collision with root package name */
    protected final AnnotatedWithParams[] f14770d = new AnnotatedWithParams[11];

    /* renamed from: e  reason: collision with root package name */
    protected int f14771e = 0;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f14772f = false;

    /* renamed from: g  reason: collision with root package name */
    protected SettableBeanProperty[] f14773g;

    /* renamed from: h  reason: collision with root package name */
    protected SettableBeanProperty[] f14774h;

    /* renamed from: i  reason: collision with root package name */
    protected SettableBeanProperty[] f14775i;

    public b(com.fasterxml.jackson.databind.b bVar, MapperConfig<?> mapperConfig) {
        this.f14767a = bVar;
        this.f14768b = mapperConfig.canOverrideAccessModifiers();
        this.f14769c = mapperConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS);
    }

    private JavaType a(DeserializationContext deserializationContext, AnnotatedWithParams annotatedWithParams, SettableBeanProperty[] settableBeanPropertyArr) throws JsonMappingException {
        if (!this.f14772f || annotatedWithParams == null) {
            return null;
        }
        int i4 = 0;
        if (settableBeanPropertyArr != null) {
            int length = settableBeanPropertyArr.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (settableBeanPropertyArr[i10] == null) {
                    i4 = i10;
                    break;
                } else {
                    i10++;
                }
            }
        }
        DeserializationConfig config = deserializationContext.getConfig();
        JavaType parameterType = annotatedWithParams.getParameterType(i4);
        AnnotationIntrospector annotationIntrospector = config.getAnnotationIntrospector();
        if (annotationIntrospector != null) {
            AnnotatedParameter parameter = annotatedWithParams.getParameter(i4);
            Object findDeserializer = annotationIntrospector.findDeserializer(parameter);
            if (findDeserializer != null) {
                return parameterType.withValueHandler(deserializationContext.deserializerInstance(parameter, findDeserializer));
            }
            return annotationIntrospector.refineDeserializationType(config, parameter, parameterType);
        }
        return parameterType;
    }

    private <T extends AnnotatedMember> T b(T t9) {
        if (t9 != null && this.f14768b) {
            com.fasterxml.jackson.databind.util.g.i((Member) t9.getAnnotated(), this.f14769c);
        }
        return t9;
    }

    protected boolean c(AnnotatedWithParams annotatedWithParams) {
        return com.fasterxml.jackson.databind.util.g.X(annotatedWithParams.getDeclaringClass()) && "valueOf".equals(annotatedWithParams.getName());
    }

    protected void d(int i4, boolean z9, AnnotatedWithParams annotatedWithParams, AnnotatedWithParams annotatedWithParams2) {
        Object[] objArr = new Object[4];
        objArr[0] = f14766u[i4];
        objArr[1] = z9 ? "explicitly marked" : "implicitly discovered";
        objArr[2] = annotatedWithParams;
        objArr[3] = annotatedWithParams2;
        throw new IllegalArgumentException(String.format("Conflicting %s creators: already had %s creator %s, encountered another: %s", objArr));
    }

    public void e(AnnotatedWithParams annotatedWithParams, boolean z9) {
        s(annotatedWithParams, 6, z9);
    }

    public void f(AnnotatedWithParams annotatedWithParams, boolean z9) {
        s(annotatedWithParams, 4, z9);
    }

    public void g(AnnotatedWithParams annotatedWithParams, boolean z9) {
        s(annotatedWithParams, 7, z9);
    }

    public void h(AnnotatedWithParams annotatedWithParams, boolean z9, SettableBeanProperty[] settableBeanPropertyArr, int i4) {
        if (annotatedWithParams.getParameterType(i4).isCollectionLikeType()) {
            if (s(annotatedWithParams, 10, z9)) {
                this.f14774h = settableBeanPropertyArr;
            }
        } else if (s(annotatedWithParams, 8, z9)) {
            this.f14773g = settableBeanPropertyArr;
        }
    }

    public void i(AnnotatedWithParams annotatedWithParams, boolean z9) {
        s(annotatedWithParams, 5, z9);
    }

    public void j(AnnotatedWithParams annotatedWithParams, boolean z9) {
        s(annotatedWithParams, 2, z9);
    }

    public void k(AnnotatedWithParams annotatedWithParams, boolean z9) {
        s(annotatedWithParams, 3, z9);
    }

    public void l(AnnotatedWithParams annotatedWithParams, boolean z9, SettableBeanProperty[] settableBeanPropertyArr) {
        Integer num;
        if (s(annotatedWithParams, 9, z9)) {
            if (settableBeanPropertyArr.length > 1) {
                HashMap hashMap = new HashMap();
                int length = settableBeanPropertyArr.length;
                for (int i4 = 0; i4 < length; i4++) {
                    String name = settableBeanPropertyArr[i4].getName();
                    if ((!name.isEmpty() || settableBeanPropertyArr[i4].getInjectableValueId() == null) && (num = (Integer) hashMap.put(name, Integer.valueOf(i4))) != null) {
                        throw new IllegalArgumentException(String.format("Duplicate creator property \"%s\" (index %s vs %d) for type %s ", name, num, Integer.valueOf(i4), com.fasterxml.jackson.databind.util.g.j0(this.f14767a.y())));
                    }
                }
            }
            this.f14775i = settableBeanPropertyArr;
        }
    }

    public void m(AnnotatedWithParams annotatedWithParams, boolean z9) {
        s(annotatedWithParams, 1, z9);
    }

    public ValueInstantiator n(DeserializationContext deserializationContext) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        JavaType a10 = a(deserializationContext, this.f14770d[8], this.f14773g);
        JavaType a11 = a(deserializationContext, this.f14770d[10], this.f14774h);
        StdValueInstantiator stdValueInstantiator = new StdValueInstantiator(config, this.f14767a.H());
        AnnotatedWithParams[] annotatedWithParamsArr = this.f14770d;
        stdValueInstantiator.configureFromObjectSettings(annotatedWithParamsArr[0], annotatedWithParamsArr[8], a10, this.f14773g, annotatedWithParamsArr[9], this.f14775i);
        stdValueInstantiator.configureFromArraySettings(this.f14770d[10], a11, this.f14774h);
        stdValueInstantiator.configureFromStringCreator(this.f14770d[1]);
        stdValueInstantiator.configureFromIntCreator(this.f14770d[2]);
        stdValueInstantiator.configureFromLongCreator(this.f14770d[3]);
        stdValueInstantiator.configureFromBigIntegerCreator(this.f14770d[4]);
        stdValueInstantiator.configureFromDoubleCreator(this.f14770d[5]);
        stdValueInstantiator.configureFromBigDecimalCreator(this.f14770d[6]);
        stdValueInstantiator.configureFromBooleanCreator(this.f14770d[7]);
        return stdValueInstantiator;
    }

    public boolean o() {
        return this.f14770d[0] != null;
    }

    public boolean p() {
        return this.f14770d[8] != null;
    }

    public boolean q() {
        return this.f14770d[9] != null;
    }

    public void r(AnnotatedWithParams annotatedWithParams) {
        this.f14770d[0] = (AnnotatedWithParams) b(annotatedWithParams);
    }

    protected boolean s(AnnotatedWithParams annotatedWithParams, int i4, boolean z9) {
        boolean z10;
        int i10 = 1 << i4;
        this.f14772f = true;
        AnnotatedWithParams annotatedWithParams2 = this.f14770d[i4];
        if (annotatedWithParams2 != null) {
            if ((this.f14771e & i10) == 0) {
                z10 = !z9;
            } else if (!z9) {
                return false;
            } else {
                z10 = true;
            }
            if (z10 && annotatedWithParams2.getClass() == annotatedWithParams.getClass()) {
                Class<?> rawParameterType = annotatedWithParams2.getRawParameterType(0);
                Class<?> rawParameterType2 = annotatedWithParams.getRawParameterType(0);
                if (rawParameterType == rawParameterType2) {
                    if (c(annotatedWithParams)) {
                        return false;
                    }
                    if (!c(annotatedWithParams2)) {
                        d(i4, z9, annotatedWithParams2, annotatedWithParams);
                    }
                } else if (rawParameterType2.isAssignableFrom(rawParameterType)) {
                    return false;
                } else {
                    if (!rawParameterType.isAssignableFrom(rawParameterType2)) {
                        if (rawParameterType.isPrimitive() != rawParameterType2.isPrimitive()) {
                            if (rawParameterType.isPrimitive()) {
                                return false;
                            }
                        } else {
                            d(i4, z9, annotatedWithParams2, annotatedWithParams);
                        }
                    }
                }
            }
        }
        if (z9) {
            this.f14771e |= i10;
        }
        this.f14770d[i4] = (AnnotatedWithParams) b(annotatedWithParams);
        return true;
    }
}
