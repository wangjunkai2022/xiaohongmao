package com.fasterxml.jackson.databind.introspect;

import java.util.function.Function;

/* compiled from: R8$$SyntheticClass */
/* loaded from: classes.dex */
public final /* synthetic */ class r implements Function {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ r f15338a = new r();

    private /* synthetic */ r() {
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((AnnotatedMethod) obj).getFullName();
    }
}
