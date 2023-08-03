package com.facebook.imagepipeline.cache;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: CountingLruMap.java */
@s7.d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class i<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final a0<V> f12107a;
    @s7.a("this")

    /* renamed from: b  reason: collision with root package name */
    private final LinkedHashMap<K, V> f12108b = new LinkedHashMap<>();
    @s7.a("this")

    /* renamed from: c  reason: collision with root package name */
    private int f12109c = 0;

    public i(a0<V> valueDescriptor) {
        this.f12107a = valueDescriptor;
    }

    private int i(@r7.h V value) {
        if (value == null) {
            return 0;
        }
        return this.f12107a.a(value);
    }

    public synchronized ArrayList<V> a() {
        ArrayList<V> arrayList;
        arrayList = new ArrayList<>((Collection<? extends V>) this.f12108b.values());
        this.f12108b.clear();
        this.f12109c = 0;
        return arrayList;
    }

    public synchronized boolean b(K key) {
        return this.f12108b.containsKey(key);
    }

    @r7.h
    public synchronized V c(K key) {
        return this.f12108b.get(key);
    }

    public synchronized int d() {
        return this.f12108b.size();
    }

    @r7.h
    public synchronized K e() {
        return this.f12108b.isEmpty() ? null : this.f12108b.keySet().iterator().next();
    }

    @VisibleForTesting
    synchronized ArrayList<K> f() {
        return new ArrayList<>(this.f12108b.keySet());
    }

    public synchronized ArrayList<Map.Entry<K, V>> g(@r7.h com.facebook.common.internal.k<K> predicate) {
        ArrayList<Map.Entry<K, V>> arrayList;
        arrayList = new ArrayList<>(this.f12108b.entrySet().size());
        for (Map.Entry<K, V> entry : this.f12108b.entrySet()) {
            if (predicate == null || predicate.apply(entry.getKey())) {
                arrayList.add(entry);
            }
        }
        return arrayList;
    }

    public synchronized int h() {
        return this.f12109c;
    }

    @VisibleForTesting
    synchronized ArrayList<V> j() {
        return new ArrayList<>((Collection<? extends V>) this.f12108b.values());
    }

    @r7.h
    public synchronized V k(K key, V value) {
        V remove;
        remove = this.f12108b.remove(key);
        this.f12109c -= i(remove);
        this.f12108b.put(key, value);
        this.f12109c += i(value);
        return remove;
    }

    @r7.h
    public synchronized V l(K key) {
        V remove;
        remove = this.f12108b.remove(key);
        this.f12109c -= i(remove);
        return remove;
    }

    public synchronized ArrayList<V> m(@r7.h com.facebook.common.internal.k<K> predicate) {
        ArrayList<V> arrayList;
        arrayList = new ArrayList<>();
        Iterator<Map.Entry<K, V>> it = this.f12108b.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (predicate == null || predicate.apply(next.getKey())) {
                arrayList.add(next.getValue());
                this.f12109c -= i(next.getValue());
                it.remove();
            }
        }
        return arrayList;
    }

    public synchronized void n() {
        if (this.f12108b.isEmpty()) {
            this.f12109c = 0;
        }
    }
}
