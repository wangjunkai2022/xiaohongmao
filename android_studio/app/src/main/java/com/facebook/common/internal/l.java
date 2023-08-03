package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: Sets.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public final class l {
    private l() {
    }

    public static <E> CopyOnWriteArraySet<E> a() {
        return new CopyOnWriteArraySet<>();
    }

    public static <E> HashSet<E> b() {
        return new HashSet<>();
    }

    public static <E> HashSet<E> c(Iterable<? extends E> elements) {
        return elements instanceof Collection ? new HashSet<>((Collection) elements) : d(elements.iterator());
    }

    public static <E> HashSet<E> d(Iterator<? extends E> elements) {
        HashSet<E> b10 = b();
        while (elements.hasNext()) {
            b10.add(elements.next());
        }
        return b10;
    }

    public static <E> HashSet<E> e(E... elements) {
        HashSet<E> f10 = f(elements.length);
        Collections.addAll(f10, elements);
        return f10;
    }

    public static <E> HashSet<E> f(int capacity) {
        return new HashSet<>(capacity);
    }

    public static <E> Set<E> g() {
        return i(new IdentityHashMap());
    }

    public static <E> LinkedHashSet<E> h() {
        return new LinkedHashSet<>();
    }

    public static <E> Set<E> i(Map<E, Boolean> map) {
        return Collections.newSetFromMap(map);
    }
}
