package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* compiled from: AnnotatedMethodMap.java */
/* loaded from: classes.dex */
public final class h implements Iterable<AnnotatedMethod> {

    /* renamed from: a  reason: collision with root package name */
    protected Map<n, AnnotatedMethod> f15292a;

    public h() {
    }

    public AnnotatedMethod a(String str, Class<?>[] clsArr) {
        Map<n, AnnotatedMethod> map = this.f15292a;
        if (map == null) {
            return null;
        }
        return map.get(new n(str, clsArr));
    }

    public AnnotatedMethod b(Method method) {
        Map<n, AnnotatedMethod> map = this.f15292a;
        if (map == null) {
            return null;
        }
        return map.get(new n(method));
    }

    @Override // java.lang.Iterable
    public Iterator<AnnotatedMethod> iterator() {
        Map<n, AnnotatedMethod> map = this.f15292a;
        if (map == null) {
            return Collections.emptyIterator();
        }
        return map.values().iterator();
    }

    public int size() {
        Map<n, AnnotatedMethod> map = this.f15292a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public h(Map<n, AnnotatedMethod> map) {
        this.f15292a = map;
    }
}
