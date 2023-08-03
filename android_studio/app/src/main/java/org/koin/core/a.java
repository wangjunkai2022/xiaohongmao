package org.koin.core;

import com.facebook.common.callercontext.ContextChain;
import io.sentry.h4;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import org.koin.core.logger.Level;

/* compiled from: KoinApplication.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001fB\t\b\u0002¢\u0006\u0004\b&\u0010'J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003J!\u0010\t\u001a\u00020\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\b\"\u00020\u0003¢\u0006\u0004\b\t\u0010\nJ\u0014\u0010\u000b\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rJ\u001a\u0010\u0013\u001a\u00020\u00002\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00010\u0010J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014J\u0010\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u0005J\u0014\u0010\u001b\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u000e\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0003R\u0017\u0010#\u001a\u00020\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0016\u0010%\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010$¨\u0006("}, d2 = {"Lorg/koin/core/a;", "", "", "Lx8/a;", h4.b.f83291i, "", "f", ContextChain.TAG_INFRA, "", "j", "([Lx8/a;)Lorg/koin/core/a;", "h", "d", "", "override", "b", "", "", "values", "m", "Lw8/b;", h4.b.f83285c, "g", "Lorg/koin/core/logger/Level;", "level", "k", "c", "n", "module", "o", "Lorg/koin/core/Koin;", "a", "Lorg/koin/core/Koin;", "e", "()Lorg/koin/core/Koin;", "koin", "Z", "allowOverride", "<init>", "()V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class a {
    @g

    /* renamed from: c  reason: collision with root package name */
    public static final C0814a f92408c = new C0814a(null);
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Koin f92409a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f92410b;

    /* compiled from: KoinApplication.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\u0006"}, d2 = {"Lorg/koin/core/a$a;", "", "Lorg/koin/core/a;", "a", "<init>", "()V", "koin-core"}, k = 1, mv = {1, 6, 0})
    /* renamed from: org.koin.core.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0814a {
        private C0814a() {
        }

        public /* synthetic */ C0814a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final a a() {
            return new a(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: KoinApplication.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List<x8.a> f92412b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(List<x8.a> list) {
            super(0);
            this.f92412b = list;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            a.this.f(this.f92412b);
        }
    }

    private a() {
        this.f92409a = new Koin();
        this.f92410b = true;
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(List<x8.a> list) {
        this.f92409a.O(list, this.f92410b);
    }

    public static /* synthetic */ a l(a aVar, Level level, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            level = Level.INFO;
        }
        return aVar.k(level);
    }

    public final void b(boolean z9) {
        this.f92410b = z9;
    }

    public final void c() {
        this.f92409a.a();
    }

    public final void d() {
        this.f92409a.b();
    }

    @g
    public final Koin e() {
        return this.f92409a;
    }

    @g
    public final a g(@g w8.b logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.f92409a.R(logger);
        return this;
    }

    @g
    public final a h(@g List<x8.a> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        if (this.f92409a.u().g(Level.INFO)) {
            double a10 = a9.a.a(new b(modules));
            int r9 = this.f92409a.s().r();
            w8.b u9 = this.f92409a.u();
            u9.f("loaded " + r9 + " definitions - " + a10 + " ms");
        } else {
            f(modules);
        }
        return this;
    }

    @g
    public final a i(@g x8.a modules) {
        List<x8.a> listOf;
        Intrinsics.checkNotNullParameter(modules, "modules");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(modules);
        return h(listOf);
    }

    @g
    public final a j(@g x8.a... modules) {
        List<x8.a> list;
        Intrinsics.checkNotNullParameter(modules, "modules");
        list = ArraysKt___ArraysKt.toList(modules);
        return h(list);
    }

    @g
    public final a k(@g Level level) {
        Intrinsics.checkNotNullParameter(level, "level");
        this.f92409a.R(d9.b.f62011a.c(level));
        return this;
    }

    @g
    public final a m(@g Map<String, ? extends Object> values) {
        Intrinsics.checkNotNullParameter(values, "values");
        this.f92409a.E().e(values);
        return this;
    }

    public final void n(@g List<x8.a> modules) {
        Intrinsics.checkNotNullParameter(modules, "modules");
        this.f92409a.S(modules);
    }

    public final void o(@g x8.a module) {
        List<x8.a> listOf;
        Intrinsics.checkNotNullParameter(module, "module");
        Koin koin = this.f92409a;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(module);
        koin.S(listOf);
    }
}
