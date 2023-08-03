package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.g;
import java.nio.file.Path;

/* compiled from: Java7HandlersImpl.java */
/* loaded from: classes.dex */
public class b extends a {

    /* renamed from: b  reason: collision with root package name */
    private final Class<?> f15127b = Path.class;

    @Override // com.fasterxml.jackson.databind.ext.a
    public Class<?> a() {
        return this.f15127b;
    }

    @Override // com.fasterxml.jackson.databind.ext.a
    public com.fasterxml.jackson.databind.d<?> b(Class<?> cls) {
        if (cls == this.f15127b) {
            return new NioPathDeserializer();
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.ext.a
    public g<?> c(Class<?> cls) {
        if (this.f15127b.isAssignableFrom(cls)) {
            return new NioPathSerializer();
        }
        return null;
    }
}
