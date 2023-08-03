package b9;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.definition.Kind;
import org.koin.core.instance.e;
import org.koin.core.scope.Scope;

/* compiled from: ScopeDSL.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\f¢\u0006\u0004\b\u001a\u0010\u001bJg\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r0\u000bj\b\u0012\u0004\u0012\u00028\u0000`\u000e\"\u0006\b\u0000\u0010\u0002\u0018\u00012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032)\b\b\u0010\n\u001a#\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0005j\b\u0012\u0004\u0012\u00028\u0000`\b¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000Jg\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r0\u000bj\b\u0012\u0004\u0012\u00028\u0000`\u000e\"\u0006\b\u0000\u0010\u0002\u0018\u00012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032)\b\b\u0010\n\u001a#\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0005j\b\u0012\u0004\u0012\u00028\u0000`\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000Jg\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r0\u000bj\b\u0012\u0004\u0012\u00028\u0000`\u000e\"\u0006\b\u0000\u0010\u0002\u0018\u00012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032)\b\b\u0010\n\u001a#\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0005j\b\u0012\u0004\u0012\u00028\u0000`\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000R\u0017\u0010\u0012\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0016\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001c"}, d2 = {"Lb9/d;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lz8/a;", "qualifier", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "Lorg/koin/core/definition/Definition;", "Lkotlin/ExtensionFunctionType;", "definition", "Lkotlin/Pair;", "Lx8/a;", "Lorg/koin/core/instance/d;", "Lorg/koin/core/module/KoinDefinition;", "g", "e", "a", "scopeQualifier", "Lz8/a;", "d", "()Lz8/a;", "module", "Lx8/a;", "c", "()Lx8/a;", "<init>", "(Lz8/a;Lx8/a;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class d {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final z8.a f3011a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final x8.a f3012b;

    public d(@g z8.a scopeQualifier, @g x8.a module) {
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.checkNotNullParameter(module, "module");
        this.f3011a = scopeQualifier;
        this.f3012b = module;
    }

    public static /* synthetic */ Pair b(d dVar, z8.a aVar, Function2 definition, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        z8.a aVar2 = aVar;
        Intrinsics.checkNotNullParameter(definition, "definition");
        x8.a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), aVar2, definition, kind, emptyList));
        c10.p(aVar3);
        return new Pair(c10, aVar3);
    }

    public static /* synthetic */ Pair f(d dVar, z8.a aVar, Function2 definition, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        Intrinsics.checkNotNullParameter(definition, "definition");
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), aVar, definition, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair(dVar.c(), eVar);
    }

    public static /* synthetic */ Pair h(d dVar, z8.a aVar, Function2 definition, int i4, Object obj) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        throw new IllegalStateException("Scoped definition is deprecated and has been replaced with Single scope definitions".toString());
    }

    public final /* synthetic */ <T> Pair<x8.a, org.koin.core.instance.d<T>> a(z8.a aVar, Function2<? super Scope, ? super y8.a, ? extends T> definition) {
        List emptyList;
        Intrinsics.checkNotNullParameter(definition, "definition");
        x8.a c10 = c();
        z8.a d4 = d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), aVar, definition, kind, emptyList));
        c10.p(aVar2);
        return new Pair<>(c10, aVar2);
    }

    @g
    public final x8.a c() {
        return this.f3012b;
    }

    @g
    public final z8.a d() {
        return this.f3011a;
    }

    public final /* synthetic */ <T> Pair<x8.a, org.koin.core.instance.d<T>> e(z8.a aVar, Function2<? super Scope, ? super y8.a, ? extends T> definition) {
        List emptyList;
        Intrinsics.checkNotNullParameter(definition, "definition");
        z8.a d4 = d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), aVar, definition, kind, emptyList));
        c().p(eVar);
        return new Pair<>(c(), eVar);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Can't use Single in a scope. Use Scoped instead")
    public final /* synthetic */ <T> Pair<x8.a, org.koin.core.instance.d<T>> g(z8.a aVar, Function2<? super Scope, ? super y8.a, ? extends T> definition) {
        Intrinsics.checkNotNullParameter(definition, "definition");
        throw new IllegalStateException("Scoped definition is deprecated and has been replaced with Single scope definitions".toString());
    }
}
