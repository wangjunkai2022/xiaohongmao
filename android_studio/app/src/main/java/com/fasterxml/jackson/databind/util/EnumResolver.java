package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class EnumResolver implements Serializable {

    /* renamed from: g  reason: collision with root package name */
    private static final long f15943g = 1;

    /* renamed from: a  reason: collision with root package name */
    protected final Class<Enum<?>> f15944a;

    /* renamed from: b  reason: collision with root package name */
    protected final Enum<?>[] f15945b;

    /* renamed from: c  reason: collision with root package name */
    protected final HashMap<String, Enum<?>> f15946c;

    /* renamed from: d  reason: collision with root package name */
    protected final Enum<?> f15947d;

    /* renamed from: e  reason: collision with root package name */
    protected final boolean f15948e;

    /* renamed from: f  reason: collision with root package name */
    protected final boolean f15949f;

    protected EnumResolver(Class<Enum<?>> cls, Enum<?>[] enumArr, HashMap<String, Enum<?>> hashMap, Enum<?> r42, boolean z9, boolean z10) {
        this.f15944a = cls;
        this.f15945b = enumArr;
        this.f15946c = hashMap;
        this.f15947d = r42;
        this.f15948e = z9;
        this.f15949f = z10;
    }

    protected static EnumResolver a(Class<?> cls, AnnotationIntrospector annotationIntrospector, boolean z9) {
        Class<Enum<?>> d4 = d(cls);
        Enum<?>[] e4 = e(cls);
        String[] findEnumValues = annotationIntrospector.findEnumValues(d4, e4, new String[e4.length]);
        String[][] strArr = new String[findEnumValues.length];
        annotationIntrospector.findEnumAliases(d4, e4, strArr);
        HashMap hashMap = new HashMap();
        int length = e4.length;
        for (int i4 = 0; i4 < length; i4++) {
            Enum<?> r72 = e4[i4];
            String str = findEnumValues[i4];
            if (str == null) {
                str = r72.name();
            }
            hashMap.put(str, r72);
            String[] strArr2 = strArr[i4];
            if (strArr2 != null) {
                for (String str2 : strArr2) {
                    if (!hashMap.containsKey(str2)) {
                        hashMap.put(str2, r72);
                    }
                }
            }
        }
        return new EnumResolver(d4, e4, hashMap, h(annotationIntrospector, d4), z9, false);
    }

    protected static EnumResolver b(Class<?> cls, AnnotatedMember annotatedMember, AnnotationIntrospector annotationIntrospector, boolean z9) {
        Class<Enum<?>> d4 = d(cls);
        Enum<?>[] e4 = e(cls);
        HashMap hashMap = new HashMap();
        int length = e4.length;
        while (true) {
            length--;
            if (length >= 0) {
                Enum<?> r02 = e4[length];
                try {
                    Object value = annotatedMember.getValue(r02);
                    if (value != null) {
                        hashMap.put(value.toString(), r02);
                    }
                } catch (Exception e10) {
                    throw new IllegalArgumentException("Failed to access @JsonValue of Enum value " + r02 + ": " + e10.getMessage());
                }
            } else {
                return new EnumResolver(d4, e4, hashMap, h(annotationIntrospector, d4), z9, j(annotatedMember.getRawType()));
            }
        }
    }

    protected static EnumResolver c(Class<?> cls, AnnotationIntrospector annotationIntrospector, boolean z9) {
        Class<Enum<?>> d4 = d(cls);
        Enum<?>[] e4 = e(cls);
        HashMap hashMap = new HashMap();
        String[][] strArr = new String[e4.length];
        if (annotationIntrospector != null) {
            annotationIntrospector.findEnumAliases(d4, e4, strArr);
        }
        int length = e4.length;
        while (true) {
            length--;
            if (length >= 0) {
                Enum<?> r42 = e4[length];
                hashMap.put(r42.toString(), r42);
                String[] strArr2 = strArr[length];
                if (strArr2 != null) {
                    for (String str : strArr2) {
                        if (!hashMap.containsKey(str)) {
                            hashMap.put(str, r42);
                        }
                    }
                }
            } else {
                return new EnumResolver(d4, e4, hashMap, h(annotationIntrospector, d4), z9, false);
            }
        }
    }

    public static EnumResolver constructFor(DeserializationConfig deserializationConfig, Class<?> cls) {
        return a(cls, deserializationConfig.getAnnotationIntrospector(), deserializationConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_ENUMS));
    }

    @Deprecated
    public static EnumResolver constructUnsafe(Class<?> cls, AnnotationIntrospector annotationIntrospector) {
        return a(cls, annotationIntrospector, false);
    }

    @Deprecated
    public static EnumResolver constructUnsafeUsingMethod(Class<?> cls, AnnotatedMember annotatedMember, AnnotationIntrospector annotationIntrospector) {
        return b(cls, annotatedMember, annotationIntrospector, false);
    }

    @Deprecated
    public static EnumResolver constructUnsafeUsingToString(Class<?> cls, AnnotationIntrospector annotationIntrospector) {
        return c(cls, annotationIntrospector, false);
    }

    public static EnumResolver constructUsingMethod(DeserializationConfig deserializationConfig, Class<?> cls, AnnotatedMember annotatedMember) {
        return b(cls, annotatedMember, deserializationConfig.getAnnotationIntrospector(), deserializationConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_ENUMS));
    }

    public static EnumResolver constructUsingToString(DeserializationConfig deserializationConfig, Class<?> cls) {
        return c(cls, deserializationConfig.getAnnotationIntrospector(), deserializationConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_ENUMS));
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected static Class<Enum<?>> d(Class<?> cls) {
        return cls;
    }

    protected static Enum<?>[] e(Class<?> cls) {
        Enum<?>[] enumConstants = d(cls).getEnumConstants();
        if (enumConstants != null) {
            return enumConstants;
        }
        throw new IllegalArgumentException("No enum constants for class " + cls.getName());
    }

    protected static Enum<?> h(AnnotationIntrospector annotationIntrospector, Class<?> cls) {
        if (annotationIntrospector != null) {
            return annotationIntrospector.findDefaultEnumValue(d(cls));
        }
        return null;
    }

    protected static boolean j(Class<?> cls) {
        if (cls.isPrimitive()) {
            cls = g.A0(cls);
        }
        return cls == Long.class || cls == Integer.class || cls == Short.class || cls == Byte.class;
    }

    public CompactStringObjectMap constructLookup() {
        return CompactStringObjectMap.construct(this.f15946c);
    }

    public Enum<?> findEnum(String str) {
        Enum<?> r02 = this.f15946c.get(str);
        return (r02 == null && this.f15948e) ? i(str) : r02;
    }

    public Enum<?> getDefaultValue() {
        return this.f15947d;
    }

    public Enum<?> getEnum(int i4) {
        if (i4 >= 0) {
            Enum<?>[] enumArr = this.f15945b;
            if (i4 >= enumArr.length) {
                return null;
            }
            return enumArr[i4];
        }
        return null;
    }

    public Class<Enum<?>> getEnumClass() {
        return this.f15944a;
    }

    public Collection<String> getEnumIds() {
        return this.f15946c.keySet();
    }

    public List<Enum<?>> getEnums() {
        ArrayList arrayList = new ArrayList(this.f15945b.length);
        for (Enum<?> r42 : this.f15945b) {
            arrayList.add(r42);
        }
        return arrayList;
    }

    public Enum<?>[] getRawEnums() {
        return this.f15945b;
    }

    protected Enum<?> i(String str) {
        for (Map.Entry<String, Enum<?>> entry : this.f15946c.entrySet()) {
            if (str.equalsIgnoreCase(entry.getKey())) {
                return entry.getValue();
            }
        }
        return null;
    }

    public boolean isFromIntValue() {
        return this.f15949f;
    }

    public int lastValidIndex() {
        return this.f15945b.length - 1;
    }

    @Deprecated
    public static EnumResolver constructFor(Class<Enum<?>> cls, AnnotationIntrospector annotationIntrospector) {
        return a(cls, annotationIntrospector, false);
    }

    @Deprecated
    public static EnumResolver constructUsingMethod(Class<Enum<?>> cls, AnnotatedMember annotatedMember, AnnotationIntrospector annotationIntrospector) {
        return b(cls, annotatedMember, annotationIntrospector, false);
    }

    @Deprecated
    public static EnumResolver constructUsingToString(Class<Enum<?>> cls, AnnotationIntrospector annotationIntrospector) {
        return c(cls, annotationIntrospector, false);
    }

    @Deprecated
    public static EnumResolver constructUsingToString(Class<Enum<?>> cls) {
        return c(cls, null, false);
    }

    @Deprecated
    protected EnumResolver(Class<Enum<?>> cls, Enum<?>[] enumArr, HashMap<String, Enum<?>> hashMap, Enum<?> r11, boolean z9) {
        this(cls, enumArr, hashMap, r11, z9, false);
    }

    @Deprecated
    protected EnumResolver(Class<Enum<?>> cls, Enum<?>[] enumArr, HashMap<String, Enum<?>> hashMap, Enum<?> r11) {
        this(cls, enumArr, hashMap, r11, false, false);
    }
}
