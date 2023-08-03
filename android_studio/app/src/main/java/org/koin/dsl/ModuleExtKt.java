package org.koin.dsl;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.Kind;
import org.koin.core.instance.d;
import org.koin.core.instance.f;
import u8.c;
import x8.a;

/* compiled from: ModuleExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aA\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u0007\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a7\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u0007\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b¨\u0006\u000b"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lx8/a;", "Lz8/a;", "qualifier", "", "createOnStart", "Lkotlin/Pair;", "Lorg/koin/core/instance/d;", "c", "a", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class ModuleExtKt {
    @Deprecated(message = "API is deprecated in favor of factoryOf DSL")
    @c
    public static final /* synthetic */ <T> Pair<a, d<T>> a(a aVar, z8.a aVar2) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.needClassReification();
        ModuleExtKt$factory$1 moduleExtKt$factory$1 = ModuleExtKt$factory$1.INSTANCE;
        z8.c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), aVar2, moduleExtKt$factory$1, kind, emptyList));
        aVar.p(aVar3);
        return new Pair<>(aVar, aVar3);
    }

    public static /* synthetic */ Pair b(a aVar, z8.a aVar2, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar2 = null;
        }
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.needClassReification();
        ModuleExtKt$factory$1 moduleExtKt$factory$1 = ModuleExtKt$factory$1.INSTANCE;
        z8.c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), aVar2, moduleExtKt$factory$1, kind, emptyList));
        aVar.p(aVar3);
        return new Pair(aVar, aVar3);
    }

    @Deprecated(message = "API is deprecated in favor of singleOf DSL")
    @c
    public static final /* synthetic */ <T> Pair<a, d<T>> c(a aVar, z8.a aVar2, boolean z9) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.needClassReification();
        ModuleExtKt$single$1 moduleExtKt$single$1 = ModuleExtKt$single$1.INSTANCE;
        z8.c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), aVar2, moduleExtKt$single$1, kind, emptyList));
        aVar.p(fVar);
        if (z9 || aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair<>(aVar, fVar);
    }

    public static /* synthetic */ Pair d(a aVar, z8.a aVar2, boolean z9, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar2 = null;
        }
        z8.a aVar3 = aVar2;
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.needClassReification();
        ModuleExtKt$single$1 moduleExtKt$single$1 = ModuleExtKt$single$1.INSTANCE;
        z8.c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), aVar3, moduleExtKt$single$1, kind, emptyList));
        aVar.p(fVar);
        if (z9 || aVar.l()) {
            aVar.u(fVar);
        }
        return new Pair(aVar, fVar);
    }
}
