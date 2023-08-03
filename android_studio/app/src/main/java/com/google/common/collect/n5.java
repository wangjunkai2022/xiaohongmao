package com.google.common.collect;

import java.io.Serializable;

/* compiled from: UsingToStringOrdering.java */
@h3.b(serializable = true)
/* loaded from: classes2.dex */
final class n5 extends s3<Object> implements Serializable {

    /* renamed from: c  reason: collision with root package name */
    static final n5 f33754c = new n5();

    /* renamed from: d  reason: collision with root package name */
    private static final long f33755d = 0;

    private n5() {
    }

    private Object J() {
        return f33754c;
    }

    @Override // com.google.common.collect.s3, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return obj.toString().compareTo(obj2.toString());
    }

    public String toString() {
        return "Ordering.usingToString()";
    }
}
