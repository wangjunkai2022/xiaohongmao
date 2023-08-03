package org.koin.android.ext.koin;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import java.io.InputStream;
import java.util.List;
import java.util.Properties;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import m8.g;
import org.koin.core.Koin;
import org.koin.core.definition.Kind;
import org.koin.core.instance.f;
import org.koin.core.logger.Level;
import org.koin.core.scope.Scope;
import z8.c;

/* compiled from: KoinExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u0014\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u0012\u0010\u0006\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004\u001a\u0014\u0010\t\u001a\u00020\u0000*\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u0007¨\u0006\n"}, d2 = {"Lorg/koin/core/a;", "Lorg/koin/core/logger/Level;", "level", "d", "Landroid/content/Context;", "androidContext", "a", "", "koinPropertyFile", "b", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KoinExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 5, 1})
    /* renamed from: org.koin.android.ext.koin.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0807a extends Lambda implements Function1<x8.a, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f92163a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: KoinExt.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Landroid/app/Application;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroid/app/Application;"}, k = 3, mv = {1, 5, 1})
        /* renamed from: org.koin.android.ext.koin.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C0808a extends Lambda implements Function2<Scope, y8.a, Application> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Context f92164a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0808a(Context context) {
                super(2);
                this.f92164a = context;
            }

            @Override // kotlin.jvm.functions.Function2
            @g
            /* renamed from: a */
            public final Application invoke(@g Scope single, @g y8.a it) {
                Intrinsics.checkNotNullParameter(single, "$this$single");
                Intrinsics.checkNotNullParameter(it, "it");
                return (Application) this.f92164a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0807a(Context context) {
            super(1);
            this.f92163a = context;
        }

        public final void a(@g x8.a module) {
            List emptyList;
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C0808a c0808a = new C0808a(this.f92163a);
            c a10 = org.koin.core.registry.c.f92526e.a();
            Kind kind = Kind.Singleton;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Application.class), null, c0808a, kind, emptyList));
            module.p(fVar);
            if (module.l()) {
                module.u(fVar);
            }
            b9.a.c(new Pair(module, fVar), new KClass[]{Reflection.getOrCreateKotlinClass(Context.class), Reflection.getOrCreateKotlinClass(Application.class)});
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(x8.a aVar) {
            a(aVar);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KoinExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b extends Lambda implements Function1<x8.a, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f92165a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: KoinExt.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "Landroid/content/Context;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroid/content/Context;"}, k = 3, mv = {1, 5, 1})
        /* renamed from: org.koin.android.ext.koin.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C0809a extends Lambda implements Function2<Scope, y8.a, Context> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Context f92166a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0809a(Context context) {
                super(2);
                this.f92166a = context;
            }

            @Override // kotlin.jvm.functions.Function2
            @g
            /* renamed from: a */
            public final Context invoke(@g Scope single, @g y8.a it) {
                Intrinsics.checkNotNullParameter(single, "$this$single");
                Intrinsics.checkNotNullParameter(it, "it");
                return this.f92166a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Context context) {
            super(1);
            this.f92165a = context;
        }

        public final void a(@g x8.a module) {
            List emptyList;
            Intrinsics.checkNotNullParameter(module, "$this$module");
            C0809a c0809a = new C0809a(this.f92165a);
            c a10 = org.koin.core.registry.c.f92526e.a();
            Kind kind = Kind.Singleton;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Context.class), null, c0809a, kind, emptyList));
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
    public static final org.koin.core.a a(@g org.koin.core.a aVar, @g Context androidContext) {
        List listOf;
        List listOf2;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(androidContext, "androidContext");
        if (aVar.e().u().g(Level.INFO)) {
            aVar.e().u().f("[init] declare Android Context");
        }
        if (androidContext instanceof Application) {
            Koin e4 = aVar.e();
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(b9.c.c(false, new C0807a(androidContext), 1, null));
            Koin.P(e4, listOf2, false, 2, null);
        } else {
            Koin e10 = aVar.e();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(b9.c.c(false, new b(androidContext), 1, null));
            Koin.P(e10, listOf, false, 2, null);
        }
        return aVar;
    }

    @g
    public static final org.koin.core.a b(@g org.koin.core.a aVar, @g String koinPropertyFile) {
        String[] list;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(koinPropertyFile, "koinPropertyFile");
        Properties properties = new Properties();
        Context context = (Context) aVar.e().I().h().p(Reflection.getOrCreateKotlinClass(Context.class), null, null);
        try {
            AssetManager assets = context.getAssets();
            if ((assets == null || (list = assets.list("")) == null) ? false : ArraysKt___ArraysKt.contains(list, koinPropertyFile)) {
                try {
                    InputStream open = context.getAssets().open(koinPropertyFile);
                    properties.load(open);
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(open, null);
                    org.koin.core.registry.b.d(aVar.e().E(), properties);
                    if (aVar.e().u().g(Level.INFO)) {
                        w8.b u9 = aVar.e().u();
                        u9.f("[Android-Properties] loaded " + unit + " properties from assets/" + koinPropertyFile);
                    }
                } catch (Exception e4) {
                    w8.b u10 = aVar.e().u();
                    u10.d("[Android-Properties] error for binding properties : " + e4);
                }
            } else if (aVar.e().u().g(Level.INFO)) {
                w8.b u11 = aVar.e().u();
                u11.f("[Android-Properties] no assets/" + koinPropertyFile + " file to load");
            }
        } catch (Exception e10) {
            w8.b u12 = aVar.e().u();
            u12.d("[Android-Properties] error while loading properties from assets/" + koinPropertyFile + " : " + e10);
        }
        return aVar;
    }

    public static /* synthetic */ org.koin.core.a c(org.koin.core.a aVar, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = "koin.properties";
        }
        return b(aVar, str);
    }

    @g
    public static final org.koin.core.a d(@g org.koin.core.a aVar, @g Level level) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(level, "level");
        aVar.e().R(new q8.a(level));
        return aVar;
    }

    public static /* synthetic */ org.koin.core.a e(org.koin.core.a aVar, Level level, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            level = Level.INFO;
        }
        return d(aVar, level);
    }
}
