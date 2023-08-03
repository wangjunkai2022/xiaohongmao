package com.google.common.graph;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.f3;
import com.google.errorprone.annotations.Immutable;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableValueGraph.java */
@Immutable(containerOf = {"N", ExifInterface.GPS_MEASUREMENT_INTERRUPTED})
@h3.a
/* loaded from: classes2.dex */
public final class d0<N, V> extends m<N, V> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableValueGraph.java */
    /* loaded from: classes2.dex */
    public static class a implements com.google.common.base.q<N, V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ t0 f34102a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f34103b;

        a(t0 t0Var, Object obj) {
            this.f34102a = t0Var;
            this.f34103b = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.base.q
        public V apply(N n9) {
            return (V) this.f34102a.y(this.f34103b, n9, null);
        }
    }

    private d0(t0<N, V> t0Var) {
        super(u0.f(t0Var), Y(t0Var), t0Var.c().size());
    }

    private static <N, V> y<N, V> V(t0<N, V> t0Var, N n9) {
        a aVar = new a(t0Var, n9);
        if (t0Var.e()) {
            return n.q(t0Var.a((t0<N, V>) n9), f3.j(t0Var.b((t0<N, V>) n9), aVar));
        }
        return q0.j(f3.j(t0Var.k(n9), aVar));
    }

    @Deprecated
    public static <N, V> d0<N, V> W(d0<N, V> d0Var) {
        return (d0) com.google.common.base.a0.E(d0Var);
    }

    public static <N, V> d0<N, V> X(t0<N, V> t0Var) {
        return t0Var instanceof d0 ? (d0) t0Var : new d0<>(t0Var);
    }

    private static <N, V> ImmutableMap<N, y<N, V>> Y(t0<N, V> t0Var) {
        ImmutableMap.b builder = ImmutableMap.builder();
        for (N n9 : t0Var.m()) {
            builder.d(n9, V(t0Var, n9));
        }
        return builder.a();
    }

    @Override // com.google.common.graph.g, com.google.common.graph.t0
    /* renamed from: U */
    public b0<N> s() {
        return new b0<>(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.n0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Set a(Object obj) {
        return super.a((d0<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.o0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Set b(Object obj) {
        return super.b((d0<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.m, com.google.common.graph.g, com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ boolean d(Object obj, Object obj2) {
        return super.d(obj, obj2);
    }

    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.w
    public /* bridge */ /* synthetic */ boolean e() {
        return super.e();
    }

    @Override // com.google.common.graph.m, com.google.common.graph.g, com.google.common.graph.a, com.google.common.graph.h
    public /* bridge */ /* synthetic */ boolean f(r rVar) {
        return super.f(rVar);
    }

    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.w
    public /* bridge */ /* synthetic */ ElementOrder h() {
        return super.h();
    }

    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.w
    public /* bridge */ /* synthetic */ boolean j() {
        return super.j();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Set k(Object obj) {
        return super.k(obj);
    }

    @Override // com.google.common.graph.m, com.google.common.graph.h, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Set m() {
        return super.m();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.m, com.google.common.graph.t0
    @NullableDecl
    public /* bridge */ /* synthetic */ Object t(r rVar, @NullableDecl Object obj) {
        return super.t(rVar, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.m, com.google.common.graph.t0
    @NullableDecl
    public /* bridge */ /* synthetic */ Object y(Object obj, Object obj2, @NullableDecl Object obj3) {
        return super.y(obj, obj2, obj3);
    }
}
