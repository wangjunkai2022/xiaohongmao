package com.fasterxml.jackson.databind.deser.std;

import java.util.function.Predicate;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ d f15072a = new d();

    private /* synthetic */ d() {
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        boolean e4;
        e4 = StdKeyDeserializers.e((com.fasterxml.jackson.databind.introspect.b) obj);
        return e4;
    }
}
