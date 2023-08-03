package com.google.android.exoplayer2.util;

import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: CopyOnWriteMultiset.java */
/* loaded from: classes2.dex */
public final class i<E> implements Iterable<E> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f27554a = new Object();
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: b  reason: collision with root package name */
    private final Map<E, Integer> f27555b = new HashMap();
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: c  reason: collision with root package name */
    private Set<E> f27556c = Collections.emptySet();
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: d  reason: collision with root package name */
    private List<E> f27557d = Collections.emptyList();

    public void a(E e4) {
        synchronized (this.f27554a) {
            ArrayList arrayList = new ArrayList(this.f27557d);
            arrayList.add(e4);
            this.f27557d = Collections.unmodifiableList(arrayList);
            Integer num = this.f27555b.get(e4);
            if (num == null) {
                HashSet hashSet = new HashSet(this.f27556c);
                hashSet.add(e4);
                this.f27556c = Collections.unmodifiableSet(hashSet);
            }
            this.f27555b.put(e4, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
        }
    }

    public void b(E e4) {
        synchronized (this.f27554a) {
            Integer num = this.f27555b.get(e4);
            if (num == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.f27557d);
            arrayList.remove(e4);
            this.f27557d = Collections.unmodifiableList(arrayList);
            if (num.intValue() == 1) {
                this.f27555b.remove(e4);
                HashSet hashSet = new HashSet(this.f27556c);
                hashSet.remove(e4);
                this.f27556c = Collections.unmodifiableSet(hashSet);
            } else {
                this.f27555b.put(e4, Integer.valueOf(num.intValue() - 1));
            }
        }
    }

    public int count(E e4) {
        int intValue;
        synchronized (this.f27554a) {
            intValue = this.f27555b.containsKey(e4) ? this.f27555b.get(e4).intValue() : 0;
        }
        return intValue;
    }

    public Set<E> elementSet() {
        Set<E> set;
        synchronized (this.f27554a) {
            set = this.f27556c;
        }
        return set;
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        Iterator<E> it;
        synchronized (this.f27554a) {
            it = this.f27557d.iterator();
        }
        return it;
    }
}
