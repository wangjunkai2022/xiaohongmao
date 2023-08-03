package dagger.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: SetBuilder.java */
/* loaded from: classes3.dex */
public final class t<T> {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62073b = "Set contributions cannot be null";

    /* renamed from: a  reason: collision with root package name */
    private final List<T> f62074a;

    private t(int i4) {
        this.f62074a = new ArrayList(i4);
    }

    public static <T> t<T> d(int i4) {
        return new t<>(i4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t<T> a(T t9) {
        this.f62074a.add(p.c(t9, f62073b));
        return this;
    }

    public t<T> b(Collection<? extends T> collection) {
        for (T t9 : collection) {
            p.c(t9, f62073b);
        }
        this.f62074a.addAll(collection);
        return this;
    }

    public Set<T> c() {
        if (this.f62074a.isEmpty()) {
            return Collections.emptySet();
        }
        if (this.f62074a.size() == 1) {
            return Collections.singleton(this.f62074a.get(0));
        }
        return Collections.unmodifiableSet(new HashSet(this.f62074a));
    }
}
