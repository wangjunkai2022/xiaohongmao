package com.google.common.graph;

import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractGraph.java */
@h3.a
/* loaded from: classes2.dex */
public abstract class c<N> extends a<N> implements w<N> {
    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ Set c() {
        return super.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ boolean d(Object obj, Object obj2) {
        return super.d(obj, obj2);
    }

    @Override // com.google.common.graph.w
    public final boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof w) {
            w wVar = (w) obj;
            return e() == wVar.e() && m().equals(wVar.m()) && c().equals(wVar.c());
        }
        return false;
    }

    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ boolean f(r rVar) {
        return super.f(rVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ int g(Object obj) {
        return super.g(obj);
    }

    @Override // com.google.common.graph.w
    public final int hashCode() {
        return c().hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ int i(Object obj) {
        return super.i(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ Set l(Object obj) {
        return super.l(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ int n(Object obj) {
        return super.n(obj);
    }

    public String toString() {
        return "isDirected: " + e() + ", allowsSelfLoops: " + j() + ", nodes: " + m() + ", edges: " + c();
    }
}
