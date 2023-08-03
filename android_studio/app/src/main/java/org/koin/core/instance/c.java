package org.koin.core.instance;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.koin.core.Koin;
import org.koin.core.scope.Scope;

/* compiled from: InstanceContext.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\b\u0010\u0010¨\u0006\u0013"}, d2 = {"Lorg/koin/core/instance/c;", "", "Lorg/koin/core/Koin;", "a", "Lorg/koin/core/Koin;", "()Lorg/koin/core/Koin;", "koin", "Lorg/koin/core/scope/Scope;", "b", "Lorg/koin/core/scope/Scope;", "c", "()Lorg/koin/core/scope/Scope;", "scope", "Ly8/a;", "parameters", "Ly8/a;", "()Ly8/a;", "<init>", "(Lorg/koin/core/Koin;Lorg/koin/core/scope/Scope;Ly8/a;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class c {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Koin f92435a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final Scope f92436b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private final y8.a f92437c;

    public c(@g Koin koin, @g Scope scope, @h y8.a aVar) {
        Intrinsics.checkNotNullParameter(koin, "koin");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f92435a = koin;
        this.f92436b = scope;
        this.f92437c = aVar;
    }

    @g
    public final Koin a() {
        return this.f92435a;
    }

    @h
    public final y8.a b() {
        return this.f92437c;
    }

    @g
    public final Scope c() {
        return this.f92436b;
    }

    public /* synthetic */ c(Koin koin, Scope scope, y8.a aVar, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(koin, scope, (i4 & 4) != 0 ? null : aVar);
    }
}
