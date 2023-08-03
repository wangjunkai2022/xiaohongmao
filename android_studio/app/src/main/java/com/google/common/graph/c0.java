package com.google.common.graph;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.f3;
import com.google.errorprone.annotations.Immutable;
import java.util.Map;
import java.util.Set;

/* compiled from: ImmutableNetwork.java */
@Immutable(containerOf = {"N", ExifInterface.LONGITUDE_EAST})
@h3.a
/* loaded from: classes2.dex */
public final class c0<N, E> extends l<N, E> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableNetwork.java */
    /* loaded from: classes2.dex */
    public static class a implements com.google.common.base.q<E, N> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k0 f34094a;

        a(k0 k0Var) {
            this.f34094a = k0Var;
        }

        @Override // com.google.common.base.q
        public N apply(E e4) {
            return this.f34094a.E(e4).j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableNetwork.java */
    /* loaded from: classes2.dex */
    public static class b implements com.google.common.base.q<E, N> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k0 f34095a;

        b(k0 k0Var) {
            this.f34095a = k0Var;
        }

        @Override // com.google.common.base.q
        public N apply(E e4) {
            return this.f34095a.E(e4).k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableNetwork.java */
    /* loaded from: classes2.dex */
    public static class c implements com.google.common.base.q<E, N> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k0 f34096a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f34097b;

        c(k0 k0Var, Object obj) {
            this.f34096a = k0Var;
            this.f34097b = obj;
        }

        @Override // com.google.common.base.q
        public N apply(E e4) {
            return this.f34096a.E(e4).a(this.f34097b);
        }
    }

    private c0(k0<N, E> k0Var) {
        super(l0.i(k0Var), a0(k0Var), Z(k0Var));
    }

    private static <N, E> com.google.common.base.q<E, N> U(k0<N, E> k0Var, N n9) {
        return new c(k0Var, n9);
    }

    private static <N, E> m0<N, E> W(k0<N, E> k0Var, N n9) {
        if (k0Var.e()) {
            Map j4 = f3.j(k0Var.J(n9), b0(k0Var));
            Map j10 = f3.j(k0Var.u(n9), c0(k0Var));
            int size = k0Var.w(n9, n9).size();
            if (k0Var.x()) {
                return o.q(j4, j10, size);
            }
            return p.o(j4, j10, size);
        }
        Map j11 = f3.j(k0Var.l(n9), U(k0Var, n9));
        if (k0Var.x()) {
            return r0.q(j11);
        }
        return s0.n(j11);
    }

    @Deprecated
    public static <N, E> c0<N, E> X(c0<N, E> c0Var) {
        return (c0) com.google.common.base.a0.E(c0Var);
    }

    public static <N, E> c0<N, E> Y(k0<N, E> k0Var) {
        return k0Var instanceof c0 ? (c0) k0Var : new c0<>(k0Var);
    }

    private static <N, E> Map<E, N> Z(k0<N, E> k0Var) {
        ImmutableMap.b builder = ImmutableMap.builder();
        for (E e4 : k0Var.c()) {
            builder.d(e4, k0Var.E(e4).d());
        }
        return builder.a();
    }

    private static <N, E> Map<N, m0<N, E>> a0(k0<N, E> k0Var) {
        ImmutableMap.b builder = ImmutableMap.builder();
        for (N n9 : k0Var.m()) {
            builder.d(n9, W(k0Var, n9));
        }
        return builder.a();
    }

    private static <N, E> com.google.common.base.q<E, N> b0(k0<N, E> k0Var) {
        return new a(k0Var);
    }

    private static <N, E> com.google.common.base.q<E, N> c0(k0<N, E> k0Var) {
        return new b(k0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ r E(Object obj) {
        return super.E(obj);
    }

    @Override // com.google.common.graph.l, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ ElementOrder G() {
        return super.G();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set J(Object obj) {
        return super.J(obj);
    }

    @Override // com.google.common.graph.e, com.google.common.graph.k0
    /* renamed from: V */
    public b0<N> s() {
        return new b0<>(super.s());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.k0, com.google.common.graph.n0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Set a(Object obj) {
        return super.a((c0<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.k0, com.google.common.graph.o0, com.google.common.graph.w
    public /* bridge */ /* synthetic */ Set b(Object obj) {
        return super.b((c0<N, E>) obj);
    }

    @Override // com.google.common.graph.l, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set c() {
        return super.c();
    }

    @Override // com.google.common.graph.l, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ boolean e() {
        return super.e();
    }

    @Override // com.google.common.graph.l, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ ElementOrder h() {
        return super.h();
    }

    @Override // com.google.common.graph.l, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ boolean j() {
        return super.j();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set k(Object obj) {
        return super.k(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set l(Object obj) {
        return super.l(obj);
    }

    @Override // com.google.common.graph.l, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set m() {
        return super.m();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set u(Object obj) {
        return super.u(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.graph.l, com.google.common.graph.e, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ Set w(Object obj, Object obj2) {
        return super.w(obj, obj2);
    }

    @Override // com.google.common.graph.l, com.google.common.graph.k0
    public /* bridge */ /* synthetic */ boolean x() {
        return super.x();
    }
}
