package org.koin.androidx.fragment.koin;

import androidx.fragment.app.FragmentFactory;
import b9.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.Koin;
import org.koin.core.definition.Kind;
import org.koin.core.instance.f;
import org.koin.core.scope.Scope;
import r8.b;

/* compiled from: KoinApplicationExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¨\u0006\u0003"}, d2 = {"Lorg/koin/core/a;", "", "a", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a {
    @g

    /* renamed from: a  reason: collision with root package name */
    private static final x8.a f92215a = c.c(false, C0811a.f92216a, 1, null);

    /* compiled from: KoinApplicationExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 5, 1})
    /* renamed from: org.koin.androidx.fragment.koin.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static final class C0811a extends Lambda implements Function1<x8.a, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0811a f92216a = new C0811a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: KoinApplicationExt.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Landroidx/fragment/app/FragmentFactory;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/fragment/app/FragmentFactory;"}, k = 3, mv = {1, 5, 1})
        /* renamed from: org.koin.androidx.fragment.koin.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C0812a extends Lambda implements Function2<Scope, y8.a, FragmentFactory> {

            /* renamed from: a  reason: collision with root package name */
            public static final C0812a f92217a = new C0812a();

            C0812a() {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            @g
            /* renamed from: a */
            public final FragmentFactory invoke(@g Scope single, @g y8.a it) {
                Intrinsics.checkNotNullParameter(single, "$this$single");
                Intrinsics.checkNotNullParameter(it, "it");
                return new b(null, 1, null);
            }
        }

        C0811a() {
            super(1);
        }

        public final void a(@g x8.a module) {
            List emptyList;
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C0812a c0812a = C0812a.f92217a;
            z8.c a10 = org.koin.core.registry.c.f92526e.a();
            Kind kind = Kind.Singleton;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(FragmentFactory.class), null, c0812a, kind, emptyList));
            module.p(fVar);
            if (module.l()) {
                module.u(fVar);
            }
            new Pair(module, fVar);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(x8.a aVar) {
            a(aVar);
            return Unit.INSTANCE;
        }
    }

    public static final void a(@g org.koin.core.a aVar) {
        List listOf;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Koin e4 = aVar.e();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(f92215a);
        Koin.P(e4, listOf, false, 2, null);
    }
}
