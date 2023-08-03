package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.j;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.g;

/* compiled from: ObjectIdWriter.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final JavaType f15693a;

    /* renamed from: b  reason: collision with root package name */
    public final j f15694b;

    /* renamed from: c  reason: collision with root package name */
    public final ObjectIdGenerator<?> f15695c;

    /* renamed from: d  reason: collision with root package name */
    public final g<Object> f15696d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f15697e;

    protected b(JavaType javaType, j jVar, ObjectIdGenerator<?> objectIdGenerator, g<?> gVar, boolean z9) {
        this.f15693a = javaType;
        this.f15694b = jVar;
        this.f15695c = objectIdGenerator;
        this.f15696d = gVar;
        this.f15697e = z9;
    }

    public static b a(JavaType javaType, PropertyName propertyName, ObjectIdGenerator<?> objectIdGenerator, boolean z9) {
        String simpleName = propertyName == null ? null : propertyName.getSimpleName();
        return new b(javaType, simpleName != null ? new SerializedString(simpleName) : null, objectIdGenerator, null, z9);
    }

    public b b(boolean z9) {
        return z9 == this.f15697e ? this : new b(this.f15693a, this.f15694b, this.f15695c, this.f15696d, z9);
    }

    public b c(g<?> gVar) {
        return new b(this.f15693a, this.f15694b, this.f15695c, gVar, this.f15697e);
    }
}
