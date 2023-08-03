package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumMap;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes2.dex */
public final class EnumValues implements Serializable {

    /* renamed from: e  reason: collision with root package name */
    private static final long f15950e = 1;

    /* renamed from: a  reason: collision with root package name */
    private final Class<Enum<?>> f15951a;

    /* renamed from: b  reason: collision with root package name */
    private final Enum<?>[] f15952b;

    /* renamed from: c  reason: collision with root package name */
    private final com.fasterxml.jackson.core.j[] f15953c;

    /* renamed from: d  reason: collision with root package name */
    private transient EnumMap<?, com.fasterxml.jackson.core.j> f15954d;

    private EnumValues(Class<Enum<?>> cls, com.fasterxml.jackson.core.j[] jVarArr) {
        this.f15951a = cls;
        this.f15952b = cls.getEnumConstants();
        this.f15953c = jVarArr;
    }

    public static EnumValues construct(SerializationConfig serializationConfig, Class<Enum<?>> cls) {
        if (serializationConfig.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
            return constructFromToString(serializationConfig, cls);
        }
        return constructFromName(serializationConfig, cls);
    }

    public static EnumValues constructFromName(MapperConfig<?> mapperConfig, Class<Enum<?>> cls) {
        Class<? extends Enum<?>> t9 = g.t(cls);
        Enum<?>[] enumArr = (Enum[]) t9.getEnumConstants();
        if (enumArr != null) {
            String[] findEnumValues = mapperConfig.getAnnotationIntrospector().findEnumValues(t9, enumArr, new String[enumArr.length]);
            com.fasterxml.jackson.core.j[] jVarArr = new com.fasterxml.jackson.core.j[enumArr.length];
            int length = enumArr.length;
            for (int i4 = 0; i4 < length; i4++) {
                Enum<?> r52 = enumArr[i4];
                String str = findEnumValues[i4];
                if (str == null) {
                    str = r52.name();
                }
                jVarArr[r52.ordinal()] = mapperConfig.compileString(str);
            }
            return construct(cls, jVarArr);
        }
        throw new IllegalArgumentException("Cannot determine enum constants for Class " + cls.getName());
    }

    public static EnumValues constructFromToString(MapperConfig<?> mapperConfig, Class<Enum<?>> cls) {
        Enum[] enumArr = (Enum[]) g.t(cls).getEnumConstants();
        if (enumArr != null) {
            ArrayList arrayList = new ArrayList(enumArr.length);
            for (Enum r42 : enumArr) {
                arrayList.add(r42.toString());
            }
            return construct(mapperConfig, cls, arrayList);
        }
        throw new IllegalArgumentException("Cannot determine enum constants for Class " + cls.getName());
    }

    public List<Enum<?>> enums() {
        return Arrays.asList(this.f15952b);
    }

    public Class<Enum<?>> getEnumClass() {
        return this.f15951a;
    }

    public EnumMap<?, com.fasterxml.jackson.core.j> internalMap() {
        Enum<?>[] enumArr;
        EnumMap<?, com.fasterxml.jackson.core.j> enumMap = this.f15954d;
        if (enumMap == null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Enum<?> r42 : this.f15952b) {
                linkedHashMap.put(r42, this.f15953c[r42.ordinal()]);
            }
            return new EnumMap<>(linkedHashMap);
        }
        return enumMap;
    }

    public com.fasterxml.jackson.core.j serializedValueFor(Enum<?> r22) {
        return this.f15953c[r22.ordinal()];
    }

    public Collection<com.fasterxml.jackson.core.j> values() {
        return Arrays.asList(this.f15953c);
    }

    public static EnumValues construct(MapperConfig<?> mapperConfig, Class<Enum<?>> cls, List<String> list) {
        int size = list.size();
        com.fasterxml.jackson.core.j[] jVarArr = new com.fasterxml.jackson.core.j[size];
        for (int i4 = 0; i4 < size; i4++) {
            jVarArr[i4] = mapperConfig.compileString(list.get(i4));
        }
        return construct(cls, jVarArr);
    }

    public static EnumValues construct(Class<Enum<?>> cls, com.fasterxml.jackson.core.j[] jVarArr) {
        return new EnumValues(cls, jVarArr);
    }
}
