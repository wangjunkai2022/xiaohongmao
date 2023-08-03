package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.introspect.a;

/* compiled from: AnnotatedAndMetadata.java */
/* loaded from: classes.dex */
public class b<A extends a, M> {

    /* renamed from: a  reason: collision with root package name */
    public final A f15245a;

    /* renamed from: b  reason: collision with root package name */
    public final M f15246b;

    public b(A a10, M m9) {
        this.f15245a = a10;
        this.f15246b = m9;
    }

    public static <A extends a, M> b<A, M> a(A a10, M m9) {
        return new b<>(a10, m9);
    }
}
