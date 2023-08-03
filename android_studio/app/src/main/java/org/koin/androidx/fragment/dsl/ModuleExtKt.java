package org.koin.androidx.fragment.dsl;

import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.Kind;
import org.koin.core.instance.d;
import org.koin.core.scope.Scope;
import u8.c;
import x8.a;

/* compiled from: ModuleExt.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ae\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\u000b\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032)\b\b\u0010\n\u001a#\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0005j\b\u0012\u0004\u0012\u00028\u0000`\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000\u001a7\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\f0\u000b\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000f"}, d2 = {"Landroidx/fragment/app/Fragment;", ExifInterface.GPS_DIRECTION_TRUE, "Lx8/a;", "Lz8/a;", "qualifier", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "Lorg/koin/core/definition/Definition;", "Lkotlin/ExtensionFunctionType;", "definition", "Lkotlin/Pair;", "Lorg/koin/core/instance/d;", "b", "a", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ModuleExtKt {
    @Deprecated(message = "API is deprecated in favor of fragmentOf DSL")
    @c
    public static final /* synthetic */ <T extends Fragment> Pair<a, d<T>> a(a aVar, z8.a aVar2) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.needClassReification();
        ModuleExtKt$fragment$1 moduleExtKt$fragment$1 = ModuleExtKt$fragment$1.INSTANCE;
        z8.c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), aVar2, moduleExtKt$fragment$1, kind, emptyList));
        aVar.p(aVar3);
        return new Pair<>(aVar, aVar3);
    }

    public static final /* synthetic */ <T extends Fragment> Pair<a, d<T>> b(a aVar, z8.a aVar2, Function2<? super Scope, ? super y8.a, ? extends T> definition) {
        List emptyList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(definition, "definition");
        z8.c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), aVar2, definition, kind, emptyList));
        aVar.p(aVar3);
        return new Pair<>(aVar, aVar3);
    }

    public static /* synthetic */ Pair c(a aVar, z8.a aVar2, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar2 = null;
        }
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.needClassReification();
        ModuleExtKt$fragment$1 moduleExtKt$fragment$1 = ModuleExtKt$fragment$1.INSTANCE;
        z8.c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), aVar2, moduleExtKt$fragment$1, kind, emptyList));
        aVar.p(aVar3);
        return new Pair(aVar, aVar3);
    }

    public static /* synthetic */ Pair d(a aVar, z8.a aVar2, Function2 definition, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar2 = null;
        }
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(definition, "definition");
        z8.c a10 = org.koin.core.registry.c.f92526e.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(Object.class), aVar2, definition, kind, emptyList));
        aVar.p(aVar3);
        return new Pair(aVar, aVar3);
    }
}
