package org.koin.android.scope;

import android.app.Service;
import io.sentry.protocol.v;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.scope.Scope;

/* compiled from: ServiceExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\u001a\u0010\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000\u001a\u0016\u0010\u0006\u001a\u00020\u0002*\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u001a\f\u0010\u0007\u001a\u0004\u0018\u00010\u0002*\u00020\u0000¨\u0006\b"}, d2 = {"Landroid/app/Service;", "Lkotlin/Lazy;", "Lorg/koin/core/scope/Scope;", "d", "", v.b.f83881a, "a", "c", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class d {

    /* compiled from: ServiceExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lorg/koin/core/scope/Scope;", "a", "()Lorg/koin/core/scope/Scope;"}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    static final class a extends Lambda implements Function0<Scope> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Service f92170a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Service service) {
            super(0);
            this.f92170a = service;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        /* renamed from: a */
        public final Scope invoke() {
            Scope c10 = d.c(this.f92170a);
            return c10 == null ? d.b(this.f92170a, null, 1, null) : c10;
        }
    }

    @g
    public static final Scope a(@g Service service, @h Object obj) {
        Intrinsics.checkNotNullParameter(service, "<this>");
        return ComponentCallbackExtKt.c(service).e(org.koin.core.component.c.d(service), org.koin.core.component.c.e(service), obj);
    }

    public static /* synthetic */ Scope b(Service service, Object obj, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            obj = null;
        }
        return a(service, obj);
    }

    @h
    public static final Scope c(@g Service service) {
        Intrinsics.checkNotNullParameter(service, "<this>");
        return ComponentCallbackExtKt.c(service).H(org.koin.core.component.c.d(service));
    }

    @g
    public static final Lazy<Scope> d(@g Service service) {
        Lazy<Scope> lazy;
        Intrinsics.checkNotNullParameter(service, "<this>");
        lazy = LazyKt__LazyJVMKt.lazy(new a(service));
        return lazy;
    }
}
