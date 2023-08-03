package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.DefaultAccessorNamingStrategy;
import com.fasterxml.jackson.databind.introspect.l;
import com.fasterxml.jackson.databind.type.SimpleType;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes.dex */
public class BasicClassIntrospector extends l implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final long f15192a = 2;

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?> f15193b = Object.class;

    /* renamed from: c  reason: collision with root package name */
    private static final Class<?> f15194c = String.class;

    /* renamed from: d  reason: collision with root package name */
    private static final Class<?> f15195d = com.fasterxml.jackson.databind.e.class;

    /* renamed from: e  reason: collision with root package name */
    protected static final j f15196e = j.U(null, SimpleType.constructUnsafe(String.class), d.h(String.class));

    /* renamed from: f  reason: collision with root package name */
    protected static final j f15197f;

    /* renamed from: g  reason: collision with root package name */
    protected static final j f15198g;

    /* renamed from: h  reason: collision with root package name */
    protected static final j f15199h;

    /* renamed from: i  reason: collision with root package name */
    protected static final j f15200i;

    static {
        Class cls = Boolean.TYPE;
        f15197f = j.U(null, SimpleType.constructUnsafe(cls), d.h(cls));
        Class cls2 = Integer.TYPE;
        f15198g = j.U(null, SimpleType.constructUnsafe(cls2), d.h(cls2));
        Class cls3 = Long.TYPE;
        f15199h = j.U(null, SimpleType.constructUnsafe(cls3), d.h(cls3));
        f15200i = j.U(null, SimpleType.constructUnsafe(Object.class), d.h(Object.class));
    }

    protected j a(MapperConfig<?> mapperConfig, JavaType javaType) {
        if (c(javaType)) {
            return j.U(mapperConfig, javaType, d(mapperConfig, javaType, mapperConfig));
        }
        return null;
    }

    protected j b(MapperConfig<?> mapperConfig, JavaType javaType) {
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass.isPrimitive()) {
            if (rawClass == Integer.TYPE) {
                return f15198g;
            }
            if (rawClass == Long.TYPE) {
                return f15199h;
            }
            if (rawClass == Boolean.TYPE) {
                return f15197f;
            }
            return null;
        } else if (com.fasterxml.jackson.databind.util.g.Y(rawClass)) {
            if (rawClass == f15193b) {
                return f15200i;
            }
            if (rawClass == f15194c) {
                return f15196e;
            }
            if (rawClass == Integer.class) {
                return f15198g;
            }
            if (rawClass == Long.class) {
                return f15199h;
            }
            if (rawClass == Boolean.class) {
                return f15197f;
            }
            return null;
        } else if (f15195d.isAssignableFrom(rawClass)) {
            return j.U(mapperConfig, javaType, d.h(rawClass));
        } else {
            return null;
        }
    }

    protected boolean c(JavaType javaType) {
        if (javaType.isContainerType() && !javaType.isArrayType()) {
            Class<?> rawClass = javaType.getRawClass();
            if (com.fasterxml.jackson.databind.util.g.Y(rawClass) && (Collection.class.isAssignableFrom(rawClass) || Map.class.isAssignableFrom(rawClass))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.introspect.l
    public l copy() {
        return new BasicClassIntrospector();
    }

    protected c d(MapperConfig<?> mapperConfig, JavaType javaType, l.a aVar) {
        return d.i(mapperConfig, javaType, aVar);
    }

    protected c e(MapperConfig<?> mapperConfig, JavaType javaType, l.a aVar) {
        return d.m(mapperConfig, javaType, aVar);
    }

    @Override // com.fasterxml.jackson.databind.introspect.l
    public /* bridge */ /* synthetic */ com.fasterxml.jackson.databind.b forClassAnnotations(MapperConfig mapperConfig, JavaType javaType, l.a aVar) {
        return forClassAnnotations((MapperConfig<?>) mapperConfig, javaType, aVar);
    }

    @Override // com.fasterxml.jackson.databind.introspect.l
    public /* bridge */ /* synthetic */ com.fasterxml.jackson.databind.b forDirectClassAnnotations(MapperConfig mapperConfig, JavaType javaType, l.a aVar) {
        return forDirectClassAnnotations((MapperConfig<?>) mapperConfig, javaType, aVar);
    }

    protected q h(MapperConfig<?> mapperConfig, JavaType javaType, l.a aVar, boolean z9) {
        AccessorNamingStrategy forPOJO;
        c d4 = d(mapperConfig, javaType, aVar);
        if (javaType.isRecordType()) {
            forPOJO = mapperConfig.getAccessorNaming().forRecord(mapperConfig, d4);
        } else {
            forPOJO = mapperConfig.getAccessorNaming().forPOJO(mapperConfig, d4);
        }
        return l(mapperConfig, d4, javaType, z9, forPOJO);
    }

    @Deprecated
    protected q i(MapperConfig<?> mapperConfig, JavaType javaType, l.a aVar, boolean z9, String str) {
        c d4 = d(mapperConfig, javaType, aVar);
        return l(mapperConfig, d4, javaType, z9, new DefaultAccessorNamingStrategy.Provider().withSetterPrefix(str).forPOJO(mapperConfig, d4));
    }

    protected q j(MapperConfig<?> mapperConfig, JavaType javaType, l.a aVar, com.fasterxml.jackson.databind.b bVar, boolean z9) {
        c d4 = d(mapperConfig, javaType, aVar);
        return l(mapperConfig, d4, javaType, z9, mapperConfig.getAccessorNaming().forBuilder(mapperConfig, d4, bVar));
    }

    @Deprecated
    protected q k(MapperConfig<?> mapperConfig, JavaType javaType, l.a aVar, boolean z9) {
        return j(mapperConfig, javaType, aVar, null, z9);
    }

    protected q l(MapperConfig<?> mapperConfig, c cVar, JavaType javaType, boolean z9, AccessorNamingStrategy accessorNamingStrategy) {
        return new q(mapperConfig, z9, javaType, cVar, accessorNamingStrategy);
    }

    @Deprecated
    protected q m(MapperConfig<?> mapperConfig, c cVar, JavaType javaType, boolean z9, String str) {
        return new q(mapperConfig, z9, javaType, cVar, str);
    }

    @Override // com.fasterxml.jackson.databind.introspect.l
    public j forClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, l.a aVar) {
        j b10 = b(mapperConfig, javaType);
        return b10 == null ? j.U(mapperConfig, javaType, d(mapperConfig, javaType, aVar)) : b10;
    }

    @Override // com.fasterxml.jackson.databind.introspect.l
    public j forCreation(DeserializationConfig deserializationConfig, JavaType javaType, l.a aVar) {
        j b10 = b(deserializationConfig, javaType);
        if (b10 == null) {
            j a10 = a(deserializationConfig, javaType);
            return a10 == null ? j.T(h(deserializationConfig, javaType, aVar, false)) : a10;
        }
        return b10;
    }

    @Override // com.fasterxml.jackson.databind.introspect.l
    public j forDeserialization(DeserializationConfig deserializationConfig, JavaType javaType, l.a aVar) {
        j b10 = b(deserializationConfig, javaType);
        if (b10 == null) {
            j a10 = a(deserializationConfig, javaType);
            return a10 == null ? j.T(h(deserializationConfig, javaType, aVar, false)) : a10;
        }
        return b10;
    }

    @Override // com.fasterxml.jackson.databind.introspect.l
    public j forDirectClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, l.a aVar) {
        j b10 = b(mapperConfig, javaType);
        return b10 == null ? j.U(mapperConfig, javaType, e(mapperConfig, javaType, aVar)) : b10;
    }

    @Override // com.fasterxml.jackson.databind.introspect.l
    public j forSerialization(SerializationConfig serializationConfig, JavaType javaType, l.a aVar) {
        j b10 = b(serializationConfig, javaType);
        if (b10 == null) {
            j a10 = a(serializationConfig, javaType);
            return a10 == null ? j.V(h(serializationConfig, javaType, aVar, true)) : a10;
        }
        return b10;
    }

    @Override // com.fasterxml.jackson.databind.introspect.l
    public j forDeserializationWithBuilder(DeserializationConfig deserializationConfig, JavaType javaType, l.a aVar, com.fasterxml.jackson.databind.b bVar) {
        return j.T(j(deserializationConfig, javaType, aVar, bVar, false));
    }

    @Override // com.fasterxml.jackson.databind.introspect.l
    @Deprecated
    public j forDeserializationWithBuilder(DeserializationConfig deserializationConfig, JavaType javaType, l.a aVar) {
        return j.T(j(deserializationConfig, javaType, aVar, null, false));
    }
}
