package com.googlecode.mp4parser.authoring.builder;

import java.util.Map;

/* compiled from: StaticFragmentIntersectionFinderImpl.java */
/* loaded from: classes2.dex */
public class f implements c {

    /* renamed from: a  reason: collision with root package name */
    Map<com.googlecode.mp4parser.authoring.h, long[]> f36023a;

    public f(Map<com.googlecode.mp4parser.authoring.h, long[]> map) {
        this.f36023a = map;
    }

    @Override // com.googlecode.mp4parser.authoring.builder.c
    public long[] a(com.googlecode.mp4parser.authoring.h hVar) {
        return this.f36023a.get(hVar);
    }
}
