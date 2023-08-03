package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.util.g;

/* compiled from: Java7Support.java */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private static final c f15128a;

    static {
        c cVar;
        try {
            cVar = (c) g.n(d.class, false);
        } catch (Throwable unused) {
            cVar = null;
        }
        f15128a = cVar;
    }

    public static c d() {
        return f15128a;
    }

    public abstract PropertyName a(AnnotatedParameter annotatedParameter);

    public abstract Boolean b(com.fasterxml.jackson.databind.introspect.a aVar);

    public abstract Boolean c(com.fasterxml.jackson.databind.introspect.a aVar);
}
