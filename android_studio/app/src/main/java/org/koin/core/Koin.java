package org.koin.core;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.h4;
import io.sentry.protocol.v;
import io.sentry.protocol.y;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import m8.g;
import m8.h;
import org.koin.core.definition.Kind;
import org.koin.core.error.ScopeNotCreatedException;
import org.koin.core.instance.f;
import org.koin.core.logger.Level;
import org.koin.core.registry.InstanceRegistry;
import org.koin.core.scope.Scope;
import z8.d;

/* compiled from: Koin.kt */
@Metadata(bv = {}, d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bY\u0010GJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007JL\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\"\n\b\u0000\u0010\u0006\u0018\u0001*\u00020\u00012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\n\u001a\u00020\t2\u0016\b\n\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bj\u0004\u0018\u0001`\rH\u0086\bø\u0001\u0000JN\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000f\"\n\b\u0000\u0010\u0006\u0018\u0001*\u00020\u00012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\n\u001a\u00020\t2\u0016\b\n\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bj\u0004\u0018\u0001`\rH\u0086\bø\u0001\u0000JC\u0010\u0012\u001a\u00028\u0000\"\n\b\u0000\u0010\u0006\u0018\u0001*\u00020\u00012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\u0016\b\n\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bj\u0004\u0018\u0001`\rH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013JE\u0010\u0014\u001a\u0004\u0018\u00018\u0000\"\n\b\u0000\u0010\u0006\u0018\u0001*\u00020\u00012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\u0016\b\n\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bj\u0004\u0018\u0001`\rH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0013JC\u0010\u0017\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00062\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u00152\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bj\u0004\u0018\u0001`\r¢\u0006\u0004\b\u0017\u0010\u0018JE\u0010\u0019\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00062\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u00152\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bj\u0004\u0018\u0001`\r¢\u0006\u0004\b\u0019\u0010\u0018JJ\u0010\u001f\u001a\u00020\u0004\"\u0006\b\u0000\u0010\u0006\u0018\u00012\u0006\u0010\u001a\u001a\u00028\u00002\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\u0012\b\u0002\u0010\u001c\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00150\u001b2\b\b\u0002\u0010\u001e\u001a\u00020\u001dH\u0086\b¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b\"\u0006\b\u0000\u0010\u0006\u0018\u0001H\u0086\bJ&\u0010'\u001a\u00020&2\n\u0010$\u001a\u00060\"j\u0002`#2\u0006\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0001J-\u0010(\u001a\u00020&\"\n\b\u0000\u0010\u0006\u0018\u0001*\u00020\u00012\n\u0010$\u001a\u00060\"j\u0002`#2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0001H\u0086\bJ#\u0010)\u001a\u00020&\"\n\b\u0000\u0010\u0006\u0018\u0001*\u00020\u00012\f\b\u0002\u0010$\u001a\u00060\"j\u0002`#H\u0086\bJ\u001f\u0010,\u001a\u00020&\"\b\b\u0000\u0010\u0006*\u00020*2\u0006\u0010+\u001a\u00028\u0000¢\u0006\u0004\b,\u0010-J&\u0010.\u001a\u00020&2\n\u0010$\u001a\u00060\"j\u0002`#2\u0006\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0001J!\u0010/\u001a\u00020&\"\n\b\u0000\u0010\u0006\u0018\u0001*\u00020\u00012\n\u0010$\u001a\u00060\"j\u0002`#H\u0086\bJ\u0012\u00100\u001a\u00020&2\n\u0010$\u001a\u00060\"j\u0002`#J\u0014\u00101\u001a\u0004\u0018\u00010&2\n\u0010$\u001a\u00060\"j\u0002`#J\u0012\u00102\u001a\u00020\u00042\n\u0010$\u001a\u00060\"j\u0002`#J'\u00105\u001a\u00028\u0000\"\b\b\u0000\u0010\u0006*\u00020\u00012\u0006\u00103\u001a\u00020\"2\u0006\u00104\u001a\u00028\u0000¢\u0006\u0004\b5\u00106J!\u00107\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0006*\u00020\u00012\u0006\u00103\u001a\u00020\"¢\u0006\u0004\b7\u00108J\u0016\u0010:\u001a\u00020\u00042\u0006\u00103\u001a\u00020\"2\u0006\u00109\u001a\u00020\u0001J\u000e\u0010;\u001a\u00020\u00042\u0006\u00103\u001a\u00020\"J\u0006\u0010<\u001a\u00020\u0004J\u001e\u0010?\u001a\u00020\u00042\f\u0010>\u001a\b\u0012\u0004\u0012\u00020=0\u001b2\b\b\u0002\u0010\u001e\u001a\u00020\u001dJ\u0014\u0010@\u001a\u00020\u00042\f\u0010>\u001a\b\u0012\u0004\u0012\u00020=0\u001bJ\u0006\u0010A\u001a\u00020\u0004R \u0010H\u001a\u00020B8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b<\u0010C\u0012\u0004\bF\u0010G\u001a\u0004\bD\u0010ER \u0010N\u001a\u00020I8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\bA\u0010J\u0012\u0004\bM\u0010G\u001a\u0004\bK\u0010LR \u0010T\u001a\u00020O8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b)\u0010P\u0012\u0004\bS\u0010G\u001a\u0004\bQ\u0010RR$\u0010\u0003\u001a\u00020\u00022\u0006\u0010U\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0003\u0010V\u001a\u0004\bW\u0010X\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006Z"}, d2 = {"Lorg/koin/core/Koin;", "", "Lw8/b;", h4.b.f83285c, "", "R", ExifInterface.GPS_DIRECTION_TRUE, "Lz8/a;", "qualifier", "Lkotlin/LazyThreadSafetyMode;", "mode", "Lkotlin/Function0;", "Ly8/a;", "Lorg/koin/core/parameter/ParametersDefinition;", "parameters", "Lkotlin/Lazy;", "K", "M", "o", "(Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "z", "Lkotlin/reflect/KClass;", "clazz", "n", "(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", y.b.f83920h, "instance", "", "secondaryTypes", "", "allowOverride", "j", "(Ljava/lang/Object;Lz8/a;Ljava/util/List;Z)V", "r", "", "Lorg/koin/core/scope/ScopeID;", "scopeId", v.b.f83881a, "Lorg/koin/core/scope/Scope;", "e", "d", "c", "Lorg/koin/core/component/b;", "t", "f", "(Lorg/koin/core/component/b;)Lorg/koin/core/scope/Scope;", "w", "v", "G", "H", "m", "key", "defaultValue", "D", "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "C", "(Ljava/lang/String;)Ljava/lang/Object;", "value", "Q", "l", "a", "Lx8/a;", h4.b.f83291i, "O", ExifInterface.LATITUDE_SOUTH, "b", "Lorg/koin/core/registry/c;", "Lorg/koin/core/registry/c;", "I", "()Lorg/koin/core/registry/c;", "getScopeRegistry$annotations", "()V", "scopeRegistry", "Lorg/koin/core/registry/InstanceRegistry;", "Lorg/koin/core/registry/InstanceRegistry;", "s", "()Lorg/koin/core/registry/InstanceRegistry;", "getInstanceRegistry$annotations", "instanceRegistry", "Lorg/koin/core/registry/a;", "Lorg/koin/core/registry/a;", ExifInterface.LONGITUDE_EAST, "()Lorg/koin/core/registry/a;", "getPropertyRegistry$annotations", "propertyRegistry", "<set-?>", "Lw8/b;", "u", "()Lw8/b;", "<init>", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class Koin {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final org.koin.core.registry.c f92388a = new org.koin.core.registry.c(this);
    @g

    /* renamed from: b  reason: collision with root package name */
    private final InstanceRegistry f92389b = new InstanceRegistry(this);
    @g

    /* renamed from: c  reason: collision with root package name */
    private final org.koin.core.registry.a f92390c = new org.koin.core.registry.a(this);
    @g

    /* renamed from: d  reason: collision with root package name */
    private w8.b f92391d = new w8.a();

    /* compiled from: Koin.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    static final class a extends Lambda implements Function0<Unit> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Koin.this.s().b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Koin.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class b extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f92400a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ z8.a f92401b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, z8.a aVar) {
            super(0);
            this.f92400a = str;
            this.f92401b = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final String invoke() {
            return "|- create scope - id:'" + this.f92400a + "' q:" + this.f92401b;
        }
    }

    /* compiled from: Koin.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\b\b\u0000\u0010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lorg/koin/core/component/b;", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke", "()Ljava/lang/String;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes5.dex */
    static final class c extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f92402a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f92403b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, d dVar) {
            super(0);
            this.f92402a = str;
            this.f92403b = dVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        public final String invoke() {
            return "|- create scope - id:'" + this.f92402a + "' q:" + this.f92403b;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object A(Koin koin, KClass kClass, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            aVar = null;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        return koin.y(kClass, aVar, function0);
    }

    public static /* synthetic */ Object B(Koin koin, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            function0 = null;
        }
        Scope h4 = koin.I().h();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return h4.A(Reflection.getOrCreateKotlinClass(Object.class), aVar, function0);
    }

    @u8.b
    public static /* synthetic */ void F() {
    }

    @u8.b
    public static /* synthetic */ void J() {
    }

    public static /* synthetic */ Lazy L(Koin koin, z8.a aVar, LazyThreadSafetyMode mode, Function0 function0, int i4, Object obj) {
        Lazy lazy;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            mode = d9.b.f62011a.b();
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(mode, "mode");
        Scope h4 = koin.I().h();
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(mode, (Function0) new Koin$inject$$inlined$inject$1(h4, aVar, function0));
        return lazy;
    }

    public static /* synthetic */ Lazy N(Koin koin, z8.a aVar, LazyThreadSafetyMode mode, Function0 function0, int i4, Object obj) {
        Lazy lazy;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            mode = d9.b.f62011a.b();
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(mode, "mode");
        Scope h4 = koin.I().h();
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(mode, (Function0) new Koin$injectOrNull$$inlined$injectOrNull$1(h4, aVar, function0));
        return lazy;
    }

    public static /* synthetic */ void P(Koin koin, List list, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = true;
        }
        koin.O(list, z9);
    }

    public static /* synthetic */ Scope g(Koin koin, String scopeId, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            scopeId = d9.b.f62011a.e();
        }
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        d dVar = new d(Reflection.getOrCreateKotlinClass(Object.class));
        koin.u().i(Level.DEBUG, new Koin$createScope$3(scopeId, dVar));
        return koin.I().d(scopeId, dVar, null);
    }

    public static /* synthetic */ Scope h(Koin koin, String scopeId, Object obj, int i4, Object obj2) {
        if ((i4 & 2) != 0) {
            obj = null;
        }
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        d dVar = new d(Reflection.getOrCreateKotlinClass(Object.class));
        koin.u().i(Level.DEBUG, new Koin$createScope$2(scopeId, dVar));
        return koin.I().d(scopeId, dVar, obj);
    }

    public static /* synthetic */ Scope i(Koin koin, String str, z8.a aVar, Object obj, int i4, Object obj2) {
        if ((i4 & 4) != 0) {
            obj = null;
        }
        return koin.e(str, aVar, obj);
    }

    public static /* synthetic */ void k(Koin koin, Object obj, z8.a aVar, List list, boolean z9, int i4, Object obj2) {
        z8.a aVar2 = (i4 & 2) != 0 ? null : aVar;
        List secondaryTypes = (i4 & 4) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list;
        boolean z10 = (i4 & 8) != 0 ? true : z9;
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        InstanceRegistry s9 = koin.s();
        z8.a I = s9.k().I().h().I();
        Kind kind = Kind.Scoped;
        Intrinsics.needClassReification();
        Koin$declare$$inlined$declareRootInstance$1 koin$declare$$inlined$declareRootInstance$1 = new Koin$declare$$inlined$declareRootInstance$1(obj);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.definition.a aVar3 = new org.koin.core.definition.a(I, Reflection.getOrCreateKotlinClass(Object.class), aVar2, koin$declare$$inlined$declareRootInstance$1, kind, secondaryTypes);
        f fVar = new f(aVar3);
        InstanceRegistry.q(s9, z10, org.koin.core.definition.b.c(aVar3.l(), aVar3.m(), aVar3.n()), fVar, false, 8, null);
        Iterator<T> it = aVar3.o().iterator();
        while (it.hasNext()) {
            InstanceRegistry.q(s9, z10, org.koin.core.definition.b.c((KClass) it.next(), aVar3.m(), aVar3.n()), fVar, false, 8, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object p(Koin koin, KClass kClass, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            aVar = null;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        return koin.n(kClass, aVar, function0);
    }

    public static /* synthetic */ Object q(Koin koin, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            function0 = null;
        }
        Scope h4 = koin.I().h();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return h4.p(Reflection.getOrCreateKotlinClass(Object.class), aVar, function0);
    }

    @u8.b
    public static /* synthetic */ void t() {
    }

    public static /* synthetic */ Scope x(Koin koin, String str, z8.a aVar, Object obj, int i4, Object obj2) {
        if ((i4 & 4) != 0) {
            obj = null;
        }
        return koin.w(str, aVar, obj);
    }

    @h
    public final <T> T C(@g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (T) this.f92390c.c(key);
    }

    @g
    public final <T> T D(@g String key, @g T defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        T t9 = (T) this.f92390c.c(key);
        return t9 == null ? defaultValue : t9;
    }

    @g
    public final org.koin.core.registry.a E() {
        return this.f92390c;
    }

    @g
    public final Scope G(@g String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Scope k10 = this.f92388a.k(scopeId);
        if (k10 != null) {
            return k10;
        }
        throw new ScopeNotCreatedException("No scope found for id '" + scopeId + '\'');
    }

    @h
    public final Scope H(@g String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        return this.f92388a.k(scopeId);
    }

    @g
    public final org.koin.core.registry.c I() {
        return this.f92388a;
    }

    public final /* synthetic */ <T> Lazy<T> K(z8.a aVar, LazyThreadSafetyMode mode, Function0<? extends y8.a> function0) {
        Lazy<T> lazy;
        Intrinsics.checkNotNullParameter(mode, "mode");
        Scope h4 = I().h();
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(mode, (Function0) new Koin$inject$$inlined$inject$1(h4, aVar, function0));
        return lazy;
    }

    public final /* synthetic */ <T> Lazy<T> M(z8.a aVar, LazyThreadSafetyMode mode, Function0<? extends y8.a> function0) {
        Lazy<T> lazy;
        Intrinsics.checkNotNullParameter(mode, "mode");
        Scope h4 = I().h();
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(mode, (Function0) new Koin$injectOrNull$$inlined$injectOrNull$1(h4, aVar, function0));
        return lazy;
    }

    public final void O(@g List<x8.a> modules, boolean z9) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        Set<x8.a> h4 = x8.b.h(modules, null, 2, null);
        this.f92389b.m(h4, z9);
        this.f92388a.m(h4);
    }

    public final void Q(@g String key, @g Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f92390c.f(key, value);
    }

    @u8.b
    public final void R(@g w8.b logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.f92391d = logger;
    }

    public final void S(@g List<x8.a> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        this.f92389b.t(x8.b.h(modules, null, 2, null));
    }

    public final void a() {
        this.f92388a.b();
        this.f92389b.a();
        this.f92390c.a();
    }

    public final void b() {
        this.f92391d.f("create eager instances ...");
        if (this.f92391d.g(Level.DEBUG)) {
            double a10 = a9.a.a(new a());
            w8.b bVar = this.f92391d;
            bVar.b("eager instances created in " + a10 + " ms");
            return;
        }
        this.f92389b.b();
    }

    public final /* synthetic */ <T> Scope c(String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        d dVar = new d(Reflection.getOrCreateKotlinClass(Object.class));
        u().i(Level.DEBUG, new Koin$createScope$3(scopeId, dVar));
        return I().d(scopeId, dVar, null);
    }

    public final /* synthetic */ <T> Scope d(String scopeId, Object obj) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        d dVar = new d(Reflection.getOrCreateKotlinClass(Object.class));
        u().i(Level.DEBUG, new Koin$createScope$2(scopeId, dVar));
        return I().d(scopeId, dVar, obj);
    }

    @g
    public final Scope e(@g String scopeId, @g z8.a qualifier, @h Object obj) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        this.f92391d.i(Level.DEBUG, new b(scopeId, qualifier));
        return this.f92388a.d(scopeId, qualifier, obj);
    }

    @g
    public final <T extends org.koin.core.component.b> Scope f(@g T t9) {
        Intrinsics.checkNotNullParameter(t9, "t");
        String d4 = org.koin.core.component.c.d(t9);
        d e4 = org.koin.core.component.c.e(t9);
        this.f92391d.i(Level.DEBUG, new c(d4, e4));
        return this.f92388a.d(d4, e4, null);
    }

    public final /* synthetic */ <T> void j(T t9, z8.a aVar, List<? extends KClass<?>> secondaryTypes, boolean z9) {
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        InstanceRegistry s9 = s();
        z8.a I = s9.k().I().h().I();
        Kind kind = Kind.Scoped;
        Intrinsics.needClassReification();
        Koin$declare$$inlined$declareRootInstance$1 koin$declare$$inlined$declareRootInstance$1 = new Koin$declare$$inlined$declareRootInstance$1(t9);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.definition.a aVar2 = new org.koin.core.definition.a(I, Reflection.getOrCreateKotlinClass(Object.class), aVar, koin$declare$$inlined$declareRootInstance$1, kind, secondaryTypes);
        f fVar = new f(aVar2);
        InstanceRegistry.q(s9, z9, org.koin.core.definition.b.c(aVar2.l(), aVar2.m(), aVar2.n()), fVar, false, 8, null);
        Iterator<T> it = aVar2.o().iterator();
        while (it.hasNext()) {
            InstanceRegistry.q(s9, z9, org.koin.core.definition.b.c((KClass) it.next(), aVar2.m(), aVar2.n()), fVar, false, 8, null);
        }
    }

    public final void l(@g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.f92390c.b(key);
    }

    public final void m(@g String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        this.f92388a.f(scopeId);
    }

    public final <T> T n(@g KClass<?> clazz, @h z8.a aVar, @h Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) this.f92388a.h().p(clazz, aVar, function0);
    }

    public final /* synthetic */ <T> T o(z8.a aVar, Function0<? extends y8.a> function0) {
        Scope h4 = I().h();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) h4.p(Reflection.getOrCreateKotlinClass(Object.class), aVar, function0);
    }

    public final /* synthetic */ <T> List<T> r() {
        Scope h4 = I().h();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return h4.u(Reflection.getOrCreateKotlinClass(Object.class));
    }

    @g
    public final InstanceRegistry s() {
        return this.f92389b;
    }

    @g
    public final w8.b u() {
        return this.f92391d;
    }

    public final /* synthetic */ <T> Scope v(String scopeId) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        d dVar = new d(Reflection.getOrCreateKotlinClass(Object.class));
        Scope k10 = I().k(scopeId);
        return k10 == null ? i(this, scopeId, dVar, null, 4, null) : k10;
    }

    @g
    public final Scope w(@g String scopeId, @g z8.a qualifier, @h Object obj) {
        Intrinsics.checkNotNullParameter(scopeId, "scopeId");
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        Scope k10 = this.f92388a.k(scopeId);
        return k10 == null ? e(scopeId, qualifier, obj) : k10;
    }

    @h
    public final <T> T y(@g KClass<?> clazz, @h z8.a aVar, @h Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) this.f92388a.h().A(clazz, aVar, function0);
    }

    public final /* synthetic */ <T> T z(z8.a aVar, Function0<? extends y8.a> function0) {
        Scope h4 = I().h();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) h4.A(Reflection.getOrCreateKotlinClass(Object.class), aVar, function0);
    }
}
