package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class BeanPropertyMap implements Iterable<SettableBeanProperty>, Serializable {

    /* renamed from: j  reason: collision with root package name */
    private static final long f14688j = 2;

    /* renamed from: a  reason: collision with root package name */
    protected final boolean f14689a;

    /* renamed from: b  reason: collision with root package name */
    private int f14690b;

    /* renamed from: c  reason: collision with root package name */
    private int f14691c;

    /* renamed from: d  reason: collision with root package name */
    private int f14692d;

    /* renamed from: e  reason: collision with root package name */
    private Object[] f14693e;

    /* renamed from: f  reason: collision with root package name */
    private final SettableBeanProperty[] f14694f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, List<PropertyName>> f14695g;

    /* renamed from: h  reason: collision with root package name */
    private final Map<String, String> f14696h;

    /* renamed from: i  reason: collision with root package name */
    private final Locale f14697i;

    public BeanPropertyMap(boolean z9, Collection<SettableBeanProperty> collection, Map<String, List<PropertyName>> map, Locale locale) {
        this.f14689a = z9;
        this.f14694f = (SettableBeanProperty[]) collection.toArray(new SettableBeanProperty[collection.size()]);
        this.f14695g = map;
        this.f14697i = locale;
        this.f14696h = a(map, z9, locale);
        n(collection);
    }

    private Map<String, String> a(Map<String, List<PropertyName>> map, boolean z9, Locale locale) {
        if (map != null && !map.isEmpty()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, List<PropertyName>> entry : map.entrySet()) {
                String key = entry.getKey();
                if (z9) {
                    key = key.toLowerCase(locale);
                }
                for (PropertyName propertyName : entry.getValue()) {
                    String simpleName = propertyName.getSimpleName();
                    if (z9) {
                        simpleName = simpleName.toLowerCase(locale);
                    }
                    hashMap.put(simpleName, key);
                }
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    private final SettableBeanProperty b(String str, int i4, Object obj) {
        if (obj == null) {
            return e(this.f14696h.get(str));
        }
        int i10 = this.f14690b + 1;
        int i11 = ((i4 >> 1) + i10) << 1;
        Object obj2 = this.f14693e[i11];
        if (str.equals(obj2)) {
            return (SettableBeanProperty) this.f14693e[i11 + 1];
        }
        if (obj2 != null) {
            int i12 = (i10 + (i10 >> 1)) << 1;
            int i13 = this.f14692d + i12;
            while (i12 < i13) {
                Object obj3 = this.f14693e[i12];
                if (obj3 == str || str.equals(obj3)) {
                    return (SettableBeanProperty) this.f14693e[i12 + 1];
                }
                i12 += 2;
            }
        }
        return e(this.f14696h.get(str));
    }

    private SettableBeanProperty c(String str, int i4, Object obj) {
        int i10 = this.f14690b + 1;
        int i11 = ((i4 >> 1) + i10) << 1;
        Object obj2 = this.f14693e[i11];
        if (str.equals(obj2)) {
            return (SettableBeanProperty) this.f14693e[i11 + 1];
        }
        if (obj2 != null) {
            int i12 = (i10 + (i10 >> 1)) << 1;
            int i13 = this.f14692d + i12;
            while (i12 < i13) {
                Object obj3 = this.f14693e[i12];
                if (obj3 == str || str.equals(obj3)) {
                    return (SettableBeanProperty) this.f14693e[i12 + 1];
                }
                i12 += 2;
            }
            return null;
        }
        return null;
    }

    public static BeanPropertyMap construct(MapperConfig<?> mapperConfig, Collection<SettableBeanProperty> collection, Map<String, List<PropertyName>> map, boolean z9) {
        return new BeanPropertyMap(z9, collection, map, mapperConfig.getLocale());
    }

    private final int d(SettableBeanProperty settableBeanProperty) {
        int length = this.f14694f.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (this.f14694f[i4] == settableBeanProperty) {
                return i4;
            }
        }
        throw new IllegalStateException("Illegal state: property '" + settableBeanProperty.getName() + "' missing from _propsInOrder");
    }

    private SettableBeanProperty e(String str) {
        if (str == null) {
            return null;
        }
        int h4 = h(str);
        int i4 = h4 << 1;
        Object obj = this.f14693e[i4];
        if (str.equals(obj)) {
            return (SettableBeanProperty) this.f14693e[i4 + 1];
        }
        if (obj == null) {
            return null;
        }
        return c(str, h4, obj);
    }

    private final int h(String str) {
        return str.hashCode() & this.f14690b;
    }

    private List<SettableBeanProperty> j() {
        ArrayList arrayList = new ArrayList(this.f14691c);
        int length = this.f14693e.length;
        for (int i4 = 1; i4 < length; i4 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this.f14693e[i4];
            if (settableBeanProperty != null) {
                arrayList.add(settableBeanProperty);
            }
        }
        return arrayList;
    }

    private static final int l(int i4) {
        if (i4 <= 5) {
            return 8;
        }
        if (i4 <= 12) {
            return 16;
        }
        int i10 = 32;
        while (i10 < i4 + (i4 >> 2)) {
            i10 += i10;
        }
        return i10;
    }

    public BeanPropertyMap assignIndexes() {
        int length = this.f14693e.length;
        int i4 = 0;
        for (int i10 = 1; i10 < length; i10 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this.f14693e[i10];
            if (settableBeanProperty != null) {
                settableBeanProperty.assignIndex(i4);
                i4++;
            }
        }
        return this;
    }

    public SettableBeanProperty find(int i4) {
        int length = this.f14693e.length;
        for (int i10 = 1; i10 < length; i10 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this.f14693e[i10];
            if (settableBeanProperty != null && i4 == settableBeanProperty.getPropertyIndex()) {
                return settableBeanProperty;
            }
        }
        return null;
    }

    public boolean findDeserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        SettableBeanProperty find = find(str);
        if (find == null) {
            return false;
        }
        try {
            find.deserializeAndSet(jsonParser, deserializationContext, obj);
            return true;
        } catch (Exception e4) {
            o(e4, obj, str, deserializationContext);
            return true;
        }
    }

    public SettableBeanProperty[] getPropertiesInInsertionOrder() {
        return this.f14694f;
    }

    public boolean hasAliases() {
        return !this.f14695g.isEmpty();
    }

    public boolean isCaseInsensitive() {
        return this.f14689a;
    }

    @Override // java.lang.Iterable
    public Iterator<SettableBeanProperty> iterator() {
        return j().iterator();
    }

    protected SettableBeanProperty k(SettableBeanProperty settableBeanProperty, NameTransformer nameTransformer) {
        com.fasterxml.jackson.databind.d<Object> unwrappingDeserializer;
        if (settableBeanProperty == null) {
            return settableBeanProperty;
        }
        SettableBeanProperty withSimpleName = settableBeanProperty.withSimpleName(nameTransformer.transform(settableBeanProperty.getName()));
        com.fasterxml.jackson.databind.d<Object> valueDeserializer = withSimpleName.getValueDeserializer();
        return (valueDeserializer == null || (unwrappingDeserializer = valueDeserializer.unwrappingDeserializer(nameTransformer)) == valueDeserializer) ? withSimpleName : withSimpleName.withValueDeserializer(unwrappingDeserializer);
    }

    protected final String m(SettableBeanProperty settableBeanProperty) {
        boolean z9 = this.f14689a;
        String name = settableBeanProperty.getName();
        return z9 ? name.toLowerCase(this.f14697i) : name;
    }

    protected void n(Collection<SettableBeanProperty> collection) {
        int size = collection.size();
        this.f14691c = size;
        int l10 = l(size);
        this.f14690b = l10 - 1;
        int i4 = (l10 >> 1) + l10;
        Object[] objArr = new Object[i4 * 2];
        int i10 = 0;
        for (SettableBeanProperty settableBeanProperty : collection) {
            if (settableBeanProperty != null) {
                String m9 = m(settableBeanProperty);
                int h4 = h(m9);
                int i11 = h4 << 1;
                if (objArr[i11] != null) {
                    i11 = ((h4 >> 1) + l10) << 1;
                    if (objArr[i11] != null) {
                        i11 = (i4 << 1) + i10;
                        i10 += 2;
                        if (i11 >= objArr.length) {
                            objArr = Arrays.copyOf(objArr, objArr.length + 4);
                        }
                    }
                }
                objArr[i11] = m9;
                objArr[i11 + 1] = settableBeanProperty;
            }
        }
        this.f14693e = objArr;
        this.f14692d = i10;
    }

    protected void o(Throwable th, Object obj, String str, DeserializationContext deserializationContext) throws IOException {
        while ((th instanceof InvocationTargetException) && th.getCause() != null) {
            th = th.getCause();
        }
        com.fasterxml.jackson.databind.util.g.t0(th);
        boolean z9 = deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
        if (th instanceof IOException) {
            if (!z9 || !(th instanceof JacksonException)) {
                throw ((IOException) th);
            }
        } else if (!z9) {
            com.fasterxml.jackson.databind.util.g.v0(th);
        }
        throw JsonMappingException.wrapWithPath(th, obj, str);
    }

    public void remove(SettableBeanProperty settableBeanProperty) {
        ArrayList arrayList = new ArrayList(this.f14691c);
        String m9 = m(settableBeanProperty);
        int length = this.f14693e.length;
        boolean z9 = false;
        for (int i4 = 1; i4 < length; i4 += 2) {
            Object[] objArr = this.f14693e;
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) objArr[i4];
            if (settableBeanProperty2 != null) {
                if (!z9 && (z9 = m9.equals(objArr[i4 - 1]))) {
                    this.f14694f[d(settableBeanProperty2)] = null;
                } else {
                    arrayList.add(settableBeanProperty2);
                }
            }
        }
        if (z9) {
            n(arrayList);
            return;
        }
        throw new NoSuchElementException("No entry '" + settableBeanProperty.getName() + "' found, can't remove");
    }

    public BeanPropertyMap renameAll(NameTransformer nameTransformer) {
        if (nameTransformer == null || nameTransformer == NameTransformer.NOP) {
            return this;
        }
        int length = this.f14694f.length;
        ArrayList arrayList = new ArrayList(length);
        for (int i4 = 0; i4 < length; i4++) {
            SettableBeanProperty settableBeanProperty = this.f14694f[i4];
            if (settableBeanProperty == null) {
                arrayList.add(settableBeanProperty);
            } else {
                arrayList.add(k(settableBeanProperty, nameTransformer));
            }
        }
        return new BeanPropertyMap(this.f14689a, arrayList, this.f14695g, this.f14697i);
    }

    public void replace(SettableBeanProperty settableBeanProperty, SettableBeanProperty settableBeanProperty2) {
        int length = this.f14693e.length;
        for (int i4 = 1; i4 < length; i4 += 2) {
            Object[] objArr = this.f14693e;
            if (objArr[i4] == settableBeanProperty) {
                objArr[i4] = settableBeanProperty2;
                this.f14694f[d(settableBeanProperty)] = settableBeanProperty2;
                return;
            }
        }
        throw new NoSuchElementException("No entry '" + settableBeanProperty.getName() + "' found, can't replace");
    }

    public int size() {
        return this.f14691c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Properties=[");
        Iterator<SettableBeanProperty> it = iterator();
        int i4 = 0;
        while (it.hasNext()) {
            SettableBeanProperty next = it.next();
            int i10 = i4 + 1;
            if (i4 > 0) {
                sb.append(", ");
            }
            sb.append(next.getName());
            sb.append('(');
            sb.append(next.getType());
            sb.append(')');
            i4 = i10;
        }
        sb.append(']');
        if (!this.f14695g.isEmpty()) {
            sb.append("(aliases: ");
            sb.append(this.f14695g);
            sb.append(")");
        }
        return sb.toString();
    }

    public BeanPropertyMap withCaseInsensitivity(boolean z9) {
        return this.f14689a == z9 ? this : new BeanPropertyMap(this, z9);
    }

    public BeanPropertyMap withProperty(SettableBeanProperty settableBeanProperty) {
        String m9 = m(settableBeanProperty);
        int length = this.f14693e.length;
        for (int i4 = 1; i4 < length; i4 += 2) {
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) this.f14693e[i4];
            if (settableBeanProperty2 != null && settableBeanProperty2.getName().equals(m9)) {
                return new BeanPropertyMap(this, settableBeanProperty, i4, d(settableBeanProperty2));
            }
        }
        return new BeanPropertyMap(this, settableBeanProperty, m9, h(m9));
    }

    public BeanPropertyMap withoutProperties(Collection<String> collection) {
        return withoutProperties(collection, null);
    }

    public BeanPropertyMap withoutProperties(Collection<String> collection, Collection<String> collection2) {
        if ((collection == null || collection.isEmpty()) && collection2 == null) {
            return this;
        }
        int length = this.f14694f.length;
        ArrayList arrayList = new ArrayList(length);
        for (int i4 = 0; i4 < length; i4++) {
            SettableBeanProperty settableBeanProperty = this.f14694f[i4];
            if (settableBeanProperty != null && !IgnorePropertiesUtil.c(settableBeanProperty.getName(), collection, collection2)) {
                arrayList.add(settableBeanProperty);
            }
        }
        return new BeanPropertyMap(this.f14689a, arrayList, this.f14695g, this.f14697i);
    }

    @Deprecated
    public static BeanPropertyMap construct(MapperConfig<?> mapperConfig, Collection<SettableBeanProperty> collection, Map<String, List<PropertyName>> map) {
        return new BeanPropertyMap(mapperConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES), collection, map, mapperConfig.getLocale());
    }

    public SettableBeanProperty find(String str) {
        if (str != null) {
            if (this.f14689a) {
                str = str.toLowerCase(this.f14697i);
            }
            int hashCode = str.hashCode() & this.f14690b;
            int i4 = hashCode << 1;
            Object obj = this.f14693e[i4];
            if (obj != str && !str.equals(obj)) {
                return b(str, hashCode, obj);
            }
            return (SettableBeanProperty) this.f14693e[i4 + 1];
        }
        throw new IllegalArgumentException("Cannot pass null property name");
    }

    @Deprecated
    public static BeanPropertyMap construct(Collection<SettableBeanProperty> collection, boolean z9, Map<String, List<PropertyName>> map) {
        return new BeanPropertyMap(z9, collection, map);
    }

    @Deprecated
    public BeanPropertyMap(boolean z9, Collection<SettableBeanProperty> collection, Map<String, List<PropertyName>> map) {
        this(z9, collection, map, Locale.getDefault());
    }

    private BeanPropertyMap(BeanPropertyMap beanPropertyMap, SettableBeanProperty settableBeanProperty, int i4, int i10) {
        this.f14689a = beanPropertyMap.f14689a;
        this.f14697i = beanPropertyMap.f14697i;
        this.f14690b = beanPropertyMap.f14690b;
        this.f14691c = beanPropertyMap.f14691c;
        this.f14692d = beanPropertyMap.f14692d;
        this.f14695g = beanPropertyMap.f14695g;
        this.f14696h = beanPropertyMap.f14696h;
        Object[] objArr = beanPropertyMap.f14693e;
        this.f14693e = Arrays.copyOf(objArr, objArr.length);
        SettableBeanProperty[] settableBeanPropertyArr = beanPropertyMap.f14694f;
        SettableBeanProperty[] settableBeanPropertyArr2 = (SettableBeanProperty[]) Arrays.copyOf(settableBeanPropertyArr, settableBeanPropertyArr.length);
        this.f14694f = settableBeanPropertyArr2;
        this.f14693e[i4] = settableBeanProperty;
        settableBeanPropertyArr2[i10] = settableBeanProperty;
    }

    private BeanPropertyMap(BeanPropertyMap beanPropertyMap, SettableBeanProperty settableBeanProperty, String str, int i4) {
        this.f14689a = beanPropertyMap.f14689a;
        this.f14697i = beanPropertyMap.f14697i;
        this.f14690b = beanPropertyMap.f14690b;
        this.f14691c = beanPropertyMap.f14691c;
        this.f14692d = beanPropertyMap.f14692d;
        this.f14695g = beanPropertyMap.f14695g;
        this.f14696h = beanPropertyMap.f14696h;
        Object[] objArr = beanPropertyMap.f14693e;
        this.f14693e = Arrays.copyOf(objArr, objArr.length);
        SettableBeanProperty[] settableBeanPropertyArr = beanPropertyMap.f14694f;
        int length = settableBeanPropertyArr.length;
        SettableBeanProperty[] settableBeanPropertyArr2 = (SettableBeanProperty[]) Arrays.copyOf(settableBeanPropertyArr, length + 1);
        this.f14694f = settableBeanPropertyArr2;
        settableBeanPropertyArr2[length] = settableBeanProperty;
        int i10 = this.f14690b + 1;
        int i11 = i4 << 1;
        Object[] objArr2 = this.f14693e;
        if (objArr2[i11] != null) {
            i11 = ((i4 >> 1) + i10) << 1;
            if (objArr2[i11] != null) {
                int i12 = this.f14692d;
                i11 = ((i10 + (i10 >> 1)) << 1) + i12;
                this.f14692d = i12 + 2;
                if (i11 >= objArr2.length) {
                    this.f14693e = Arrays.copyOf(objArr2, objArr2.length + 4);
                }
            }
        }
        Object[] objArr3 = this.f14693e;
        objArr3[i11] = str;
        objArr3[i11 + 1] = settableBeanProperty;
    }

    protected BeanPropertyMap(BeanPropertyMap beanPropertyMap, boolean z9) {
        this.f14689a = z9;
        this.f14697i = beanPropertyMap.f14697i;
        this.f14695g = beanPropertyMap.f14695g;
        this.f14696h = beanPropertyMap.f14696h;
        SettableBeanProperty[] settableBeanPropertyArr = beanPropertyMap.f14694f;
        SettableBeanProperty[] settableBeanPropertyArr2 = (SettableBeanProperty[]) Arrays.copyOf(settableBeanPropertyArr, settableBeanPropertyArr.length);
        this.f14694f = settableBeanPropertyArr2;
        n(Arrays.asList(settableBeanPropertyArr2));
    }
}
