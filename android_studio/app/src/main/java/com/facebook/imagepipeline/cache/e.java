package com.facebook.imagepipeline.cache;

import com.facebook.infer.annotation.Nullsafe;
import java.util.LinkedHashSet;

/* compiled from: BoundedLinkedHashSet.java */
@s7.d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class e<E> {

    /* renamed from: a  reason: collision with root package name */
    private int f12075a;

    /* renamed from: b  reason: collision with root package name */
    private LinkedHashSet<E> f12076b;

    public e(final int maxSize) {
        this.f12076b = new LinkedHashSet<>(maxSize);
        this.f12075a = maxSize;
    }

    public synchronized boolean a(E key) {
        if (this.f12076b.size() == this.f12075a) {
            LinkedHashSet<E> linkedHashSet = this.f12076b;
            linkedHashSet.remove(linkedHashSet.iterator().next());
        }
        this.f12076b.remove(key);
        return this.f12076b.add(key);
    }

    public synchronized boolean b(E o9) {
        return this.f12076b.contains(o9);
    }
}
