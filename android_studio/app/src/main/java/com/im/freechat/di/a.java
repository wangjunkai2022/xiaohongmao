package com.im.freechat.di;

import android.app.NotificationManager;
import android.content.Context;
import b9.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.definition.Kind;
import org.koin.core.instance.f;
import org.koin.core.scope.Scope;

/* compiled from: SystemServiceModule.kt */
@Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0005\"\u0017\u0010\u0001\u001a\u00020\u00008\u0006¢\u0006\f\n\u0004\b\u0001\u0010\u0002\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lx8/a;", "systemServiceModule", "Lx8/a;", "a", "()Lx8/a;", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @g

    /* renamed from: a  reason: collision with root package name */
    private static final x8.a f41275a = c.c(false, C0310a.f41276a, 1, null);

    /* compiled from: SystemServiceModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 7, 1})
    /* renamed from: com.im.freechat.di.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static final class C0310a extends Lambda implements Function1<x8.a, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0310a f41276a = new C0310a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SystemServiceModule.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Landroid/app/NotificationManager;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroid/app/NotificationManager;"}, k = 3, mv = {1, 7, 1})
        /* renamed from: com.im.freechat.di.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0311a extends Lambda implements Function2<Scope, y8.a, NotificationManager> {

            /* renamed from: a  reason: collision with root package name */
            public static final C0311a f41277a = new C0311a();

            C0311a() {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            @g
            /* renamed from: a */
            public final NotificationManager invoke(@g Scope single, @g y8.a it) {
                Intrinsics.checkNotNullParameter(single, "$this$single");
                Intrinsics.checkNotNullParameter(it, "it");
                Object systemService = ((Context) single.p(Reflection.getOrCreateKotlinClass(Context.class), null, null)).getSystemService("notification");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
                return (NotificationManager) systemService;
            }
        }

        C0310a() {
            super(1);
        }

        public final void a(@g x8.a module) {
            List emptyList;
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C0311a c0311a = C0311a.f41277a;
            z8.c a10 = org.koin.core.registry.c.f92526e.a();
            Kind kind = Kind.Singleton;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(NotificationManager.class), null, c0311a, kind, emptyList));
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

    @g
    public static final x8.a a() {
        return f41275a;
    }
}
