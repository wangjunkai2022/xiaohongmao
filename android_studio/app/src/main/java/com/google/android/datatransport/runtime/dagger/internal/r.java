package com.google.android.datatransport.runtime.dagger.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: SetBuilder.java */
/* loaded from: classes2.dex */
public final class r<T> {

    /* renamed from: b  reason: collision with root package name */
    private static final String f20428b = "Set contributions cannot be null";

    /* renamed from: a  reason: collision with root package name */
    private final List<T> f20429a;

    private r(int i4) {
        this.f20429a = new ArrayList(i4);
    }

    public static <T> r<T> d(int i4) {
        return new r<>(i4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public r<T> a(T t9) {
        this.f20429a.add(p.c(t9, f20428b));
        return this;
    }

    public r<T> b(Collection<? extends T> collection) {
        for (T t9 : collection) {
            p.c(t9, f20428b);
        }
        this.f20429a.addAll(collection);
        return this;
    }

    public Set<T> c() {
        int size = this.f20429a.size();
        if (size != 0) {
            if (size != 1) {
                return Collections.unmodifiableSet(new HashSet(this.f20429a));
            }
            return Collections.singleton(this.f20429a.get(0));
        }
        return Collections.emptySet();
    }
}
