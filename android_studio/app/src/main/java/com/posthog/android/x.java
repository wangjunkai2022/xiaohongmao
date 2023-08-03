package com.posthog.android;

import android.content.Context;
import android.content.SharedPreferences;
import com.posthog.android.internal.Utils;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* compiled from: ValueMap.java */
/* loaded from: classes3.dex */
public class x implements Map<String, Object> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f47669a;

    /* compiled from: ValueMap.java */
    /* loaded from: classes3.dex */
    static class a<T extends x> {

        /* renamed from: a  reason: collision with root package name */
        private final SharedPreferences f47670a;

        /* renamed from: b  reason: collision with root package name */
        private final b f47671b;

        /* renamed from: c  reason: collision with root package name */
        private final String f47672c;

        /* renamed from: d  reason: collision with root package name */
        private final Class<T> f47673d;

        /* renamed from: e  reason: collision with root package name */
        private T f47674e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Context context, b bVar, String str, String str2, Class<T> cls) {
            this.f47671b = bVar;
            this.f47670a = Utils.m(context, str2);
            this.f47672c = str;
            this.f47673d = cls;
        }

        T a(Map<String, Object> map) {
            return (T) x.b(map, this.f47673d);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b() {
            this.f47670a.edit().remove(this.f47672c).apply();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public T c() {
            if (this.f47674e == null) {
                String string = this.f47670a.getString(this.f47672c, null);
                if (Utils.w(string)) {
                    return null;
                }
                try {
                    this.f47674e = a(this.f47671b.c(string));
                } catch (IOException unused) {
                    return null;
                }
            }
            return this.f47674e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean d() {
            return this.f47670a.contains(this.f47672c);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void e(T t9) {
            this.f47674e = t9;
            this.f47670a.edit().putString(this.f47672c, this.f47671b.i(t9)).apply();
        }
    }

    public x() {
        this.f47669a = new LinkedHashMap();
    }

    private <T extends x> T a(Object obj, Class<T> cls) {
        if (obj == null) {
            return null;
        }
        if (cls.isAssignableFrom(obj.getClass())) {
            return (T) obj;
        }
        if (obj instanceof Map) {
            return (T) b((Map) obj, cls);
        }
        return null;
    }

    static <T extends x> T b(Map map, Class<T> cls) {
        try {
            Constructor<T> declaredConstructor = cls.getDeclaredConstructor(Map.class);
            declaredConstructor.setAccessible(true);
            return declaredConstructor.newInstance(map);
        } catch (Exception e4) {
            throw new AssertionError("Could not create instance of " + cls.getCanonicalName() + ".\n" + e4);
        }
    }

    public boolean c(String str, boolean z9) {
        Object obj = get(str);
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return obj instanceof String ? Boolean.valueOf((String) obj).booleanValue() : z9;
    }

    @Override // java.util.Map
    public void clear() {
        this.f47669a.clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.f47669a.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.f47669a.containsValue(obj);
    }

    public char d(String str, char c10) {
        Object obj = get(str);
        if (obj instanceof Character) {
            return ((Character) obj).charValue();
        }
        if (obj != null && (obj instanceof String)) {
            String str2 = (String) obj;
            if (str2.length() == 1) {
                return str2.charAt(0);
            }
        }
        return c10;
    }

    public double e(String str, double d4) {
        Object obj = get(str);
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf((String) obj).doubleValue();
            } catch (NumberFormatException unused) {
            }
        }
        return d4;
    }

    @Override // java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return this.f47669a.entrySet();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return obj == this || this.f47669a.equals(obj);
    }

    public <T extends Enum<T>> T f(Class<T> cls, String str) {
        if (cls != null) {
            Object obj = get(str);
            if (cls.isInstance(obj)) {
                return (T) obj;
            }
            if (obj instanceof String) {
                return (T) Enum.valueOf(cls, (String) obj);
            }
            return null;
        }
        throw new IllegalArgumentException("enumType may not be null");
    }

    public float g(String str, float f10) {
        return Utils.f(get(str), f10);
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        return this.f47669a.get(obj);
    }

    public int h(String str, int i4) {
        Object obj = get(str);
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).intValue();
        }
        if (obj instanceof String) {
            try {
                return Integer.valueOf((String) obj).intValue();
            } catch (NumberFormatException unused) {
            }
        }
        return i4;
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.f47669a.hashCode();
    }

    public <T extends x> List<T> i(Object obj, Class<T> cls) {
        Object obj2 = get(obj);
        if (obj2 instanceof List) {
            List<Object> list = (List) obj2;
            try {
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : list) {
                    x a10 = a(obj3, cls);
                    if (a10 != null) {
                        arrayList.add(a10);
                    }
                }
                return arrayList;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f47669a.isEmpty();
    }

    public long j(String str, long j4) {
        Object obj = get(str);
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf((String) obj).longValue();
            } catch (NumberFormatException unused) {
            }
        }
        return j4;
    }

    public String k(String str) {
        Object obj = get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj != null) {
            return String.valueOf(obj);
        }
        return null;
    }

    @Override // java.util.Map
    public Set<String> keySet() {
        return this.f47669a.keySet();
    }

    public x l(Object obj) {
        Object obj2 = get(obj);
        if (obj2 instanceof x) {
            return (x) obj2;
        }
        if (obj2 instanceof Map) {
            return new x((Map) obj2);
        }
        return null;
    }

    public <T extends x> T m(String str, Class<T> cls) {
        return (T) a(get(str), cls);
    }

    @Override // java.util.Map
    /* renamed from: n */
    public Object put(String str, Object obj) {
        return this.f47669a.put(str, obj);
    }

    public x o(String str, Object obj) {
        this.f47669a.put(str, obj);
        return this;
    }

    public JSONObject p() {
        return Utils.I(this.f47669a);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends Object> map) {
        this.f47669a.putAll(map);
    }

    public Map<String, String> q() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Object> entry : entrySet()) {
            hashMap.put(entry.getKey(), String.valueOf(entry.getValue()));
        }
        return hashMap;
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        return this.f47669a.remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return this.f47669a.size();
    }

    public String toString() {
        return this.f47669a.toString();
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        return this.f47669a.values();
    }

    public x(int i4) {
        this.f47669a = new LinkedHashMap(i4);
    }

    public x(Map<String, Object> map) {
        if (map != null) {
            this.f47669a = map;
            return;
        }
        throw new IllegalArgumentException("Map must not be null.");
    }
}
