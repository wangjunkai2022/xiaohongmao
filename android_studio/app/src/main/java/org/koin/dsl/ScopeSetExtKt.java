package org.koin.dsl;

import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.Kind;
import org.koin.core.instance.d;
import org.koin.core.instance.e;
import u8.c;
import x8.a;

/* compiled from: ScopeSetExt.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a7\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u0005\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a7\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u0005\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b¨\u0006\n"}, d2 = {"", "R", "Lb9/d;", "Lz8/a;", "qualifier", "Lkotlin/Pair;", "Lx8/a;", "Lorg/koin/core/instance/d;", "c", "a", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class ScopeSetExtKt {
    @Deprecated(message = "API is deprecated in favor of factoryOf DSL")
    @c
    public static final /* synthetic */ <R> Pair<a, d<R>> a(b9.d dVar, z8.a aVar) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.needClassReification();
        ScopeSetExtKt$factory$1 scopeSetExtKt$factory$1 = ScopeSetExtKt$factory$1.INSTANCE;
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), aVar, scopeSetExtKt$factory$1, kind, emptyList));
        c10.p(aVar2);
        return new Pair<>(c10, aVar2);
    }

    public static /* synthetic */ Pair b(b9.d dVar, z8.a aVar, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        z8.a aVar2 = aVar;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.needClassReification();
        ScopeSetExtKt$factory$1 scopeSetExtKt$factory$1 = ScopeSetExtKt$factory$1.INSTANCE;
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), aVar2, scopeSetExtKt$factory$1, kind, emptyList));
        c10.p(aVar3);
        return new Pair(c10, aVar3);
    }

    @Deprecated(message = "API is deprecated in favor of scopedOf DSL")
    @c
    public static final /* synthetic */ <R> Pair<a, d<R>> c(b9.d dVar, z8.a aVar) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.needClassReification();
        ScopeSetExtKt$scoped$1 scopeSetExtKt$scoped$1 = ScopeSetExtKt$scoped$1.INSTANCE;
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), aVar, scopeSetExtKt$scoped$1, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair<>(dVar.c(), eVar);
    }

    public static /* synthetic */ Pair d(b9.d dVar, z8.a aVar, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.needClassReification();
        ScopeSetExtKt$scoped$1 scopeSetExtKt$scoped$1 = ScopeSetExtKt$scoped$1.INSTANCE;
        z8.a d4 = dVar.d();
        Kind kind = Kind.Scoped;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, "R");
        e eVar = new e(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), aVar, scopeSetExtKt$scoped$1, kind, emptyList));
        dVar.c().p(eVar);
        return new Pair(dVar.c(), eVar);
    }
}
