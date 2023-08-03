package io.sentry.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import m8.a;

/* compiled from: CollectionUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class a {

    /* compiled from: CollectionUtils.java */
    /* renamed from: io.sentry.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0716a<T, R> {
        R a(T t9);
    }

    /* compiled from: CollectionUtils.java */
    /* loaded from: classes4.dex */
    public interface b<T> {
        boolean test(T t9);
    }

    private a() {
    }

    @m8.g
    public static <T> List<T> a(@m8.g List<T> list, @m8.g b<T> bVar) {
        ArrayList arrayList = new ArrayList(list.size());
        for (T t9 : list) {
            if (bVar.test(t9)) {
                arrayList.add(t9);
            }
        }
        return arrayList;
    }

    @m8.g
    public static <K, V> Map<K, V> b(@m8.g Map<K, V> map, @m8.g b<Map.Entry<K, V>> bVar) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<K, V> entry : map.entrySet()) {
            if (bVar.test(entry)) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return hashMap;
    }

    @m8.g
    public static <T, R> List<R> c(@m8.g List<T> list, @m8.g InterfaceC0716a<T, R> interfaceC0716a) {
        ArrayList arrayList = new ArrayList(list.size());
        for (T t9 : list) {
            arrayList.add(interfaceC0716a.a(t9));
        }
        return arrayList;
    }

    @m8.h
    public static <T> List<T> d(@m8.h List<T> list) {
        if (list != null) {
            return new ArrayList(list);
        }
        return null;
    }

    @m8.h
    public static <K, V> Map<K, V> e(@m8.h Map<K, V> map) {
        if (map != null) {
            return new ConcurrentHashMap(map);
        }
        return null;
    }

    @m8.h
    public static <K, V> Map<K, V> f(@m8.h Map<K, V> map) {
        if (map != null) {
            return new HashMap(map);
        }
        return null;
    }

    public static int g(@m8.g Iterable<?> iterable) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        int i4 = 0;
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            it.next();
            i4++;
        }
        return i4;
    }
}
