package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class NopAnnotationIntrospector extends AnnotationIntrospector implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final long f15227a = 1;
    public static final NopAnnotationIntrospector instance = new a();

    /* loaded from: classes.dex */
    static class a extends NopAnnotationIntrospector {

        /* renamed from: b  reason: collision with root package name */
        private static final long f15228b = 1;

        a() {
        }

        @Override // com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector, com.fasterxml.jackson.databind.AnnotationIntrospector, com.fasterxml.jackson.core.n
        public Version version() {
            return com.fasterxml.jackson.databind.cfg.e.f14557a;
        }
    }

    @Override // com.fasterxml.jackson.databind.AnnotationIntrospector, com.fasterxml.jackson.core.n
    public Version version() {
        return Version.unknownVersion();
    }
}
