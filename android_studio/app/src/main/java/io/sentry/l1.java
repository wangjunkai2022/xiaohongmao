package io.sentry;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.net.InetAddress;
import java.net.URI;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicIntegerArray;
import m8.a;

/* compiled from: JsonReflectionObjectSerializer.java */
@a.c
/* loaded from: classes4.dex */
public final class l1 {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Object> f83376a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private final int f83377b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l1(int i4) {
        this.f83377b = i4;
    }

    @m8.g
    private List<Object> a(@m8.g Collection<?> collection, @m8.g o0 o0Var) throws Exception {
        ArrayList arrayList = new ArrayList();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(d(it.next(), o0Var));
        }
        return arrayList;
    }

    @m8.g
    private List<Object> b(@m8.g Object[] objArr, @m8.g o0 o0Var) throws Exception {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            arrayList.add(d(obj, o0Var));
        }
        return arrayList;
    }

    @m8.g
    private Map<String, Object> c(@m8.g Map<?, ?> map, @m8.g o0 o0Var) throws Exception {
        HashMap hashMap = new HashMap();
        for (Object obj : map.keySet()) {
            Object obj2 = map.get(obj);
            if (obj2 != null) {
                hashMap.put(obj.toString(), d(obj2, o0Var));
            } else {
                hashMap.put(obj.toString(), null);
            }
        }
        return hashMap;
    }

    @m8.h
    public Object d(@m8.h Object obj, @m8.g o0 o0Var) throws Exception {
        Object obj2;
        Object obj3 = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Character) {
            return obj.toString();
        }
        if ((obj instanceof Number) || (obj instanceof Boolean) || (obj instanceof String)) {
            return obj;
        }
        if (obj instanceof Locale) {
            return obj.toString();
        }
        if (obj instanceof AtomicIntegerArray) {
            return io.sentry.util.j.a((AtomicIntegerArray) obj);
        }
        if (obj instanceof AtomicBoolean) {
            return Boolean.valueOf(((AtomicBoolean) obj).get());
        }
        if (obj instanceof URI) {
            return obj.toString();
        }
        if (obj instanceof InetAddress) {
            return obj.toString();
        }
        if (obj instanceof UUID) {
            return obj.toString();
        }
        if (obj instanceof Currency) {
            return obj.toString();
        }
        if (obj instanceof Calendar) {
            return io.sentry.util.j.c((Calendar) obj);
        }
        if (obj.getClass().isEnum()) {
            return obj.toString();
        }
        if (this.f83376a.contains(obj)) {
            o0Var.c(SentryLevel.INFO, "Cyclic reference detected. Calling toString() on object.", new Object[0]);
            return obj.toString();
        }
        this.f83376a.add(obj);
        try {
            if (this.f83376a.size() > this.f83377b) {
                this.f83376a.remove(obj);
                o0Var.c(SentryLevel.INFO, "Max depth exceeded. Calling toString() on object.", new Object[0]);
                return obj.toString();
            }
            try {
            } catch (Exception e4) {
                o0Var.b(SentryLevel.INFO, "Not serializing object due to throwing sub-path.", e4);
            }
            if (obj.getClass().isArray()) {
                obj2 = b((Object[]) obj, o0Var);
            } else if (obj instanceof Collection) {
                obj2 = a((Collection) obj, o0Var);
            } else if (obj instanceof Map) {
                obj2 = c((Map) obj, o0Var);
            } else {
                Map<String, Object> e10 = e(obj, o0Var);
                if (!e10.isEmpty()) {
                    obj3 = e10;
                    return obj3;
                }
                obj2 = obj.toString();
            }
            obj3 = obj2;
            return obj3;
        } finally {
            this.f83376a.remove(obj);
        }
    }

    @m8.g
    public Map<String, Object> e(@m8.g Object obj, @m8.g o0 o0Var) throws Exception {
        Field[] declaredFields = obj.getClass().getDeclaredFields();
        HashMap hashMap = new HashMap();
        for (Field field : declaredFields) {
            if (!Modifier.isTransient(field.getModifiers()) && !Modifier.isStatic(field.getModifiers())) {
                String name = field.getName();
                try {
                    field.setAccessible(true);
                    hashMap.put(name, d(field.get(obj), o0Var));
                    field.setAccessible(false);
                } catch (Exception unused) {
                    o0Var.c(SentryLevel.INFO, "Cannot access field " + name + ".", new Object[0]);
                }
            }
        }
        return hashMap;
    }
}
