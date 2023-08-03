package org.koin.androidx.viewmodel.dsl;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import java.util.List;
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

/* compiled from: ScopeSetExt.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ae\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r0\u000b\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032)\b\b\u0010\n\u001a#\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0005j\b\u0012\u0004\u0012\u00028\u0000`\b¢\u0006\u0002\b\tH\u0086\bø\u0001\u0000\u001a7\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r0\u000b\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0010"}, d2 = {"Landroidx/lifecycle/ViewModel;", ExifInterface.GPS_DIRECTION_TRUE, "Lb9/d;", "Lz8/a;", "qualifier", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "Lorg/koin/core/definition/Definition;", "Lkotlin/ExtensionFunctionType;", "definition", "Lkotlin/Pair;", "Lx8/a;", "Lorg/koin/core/instance/d;", "b", "a", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ScopeSetExtKt {
    @c
    public static final /* synthetic */ <T extends ViewModel> Pair<a, d<T>> a(b9.d dVar, z8.a aVar) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.needClassReification();
        ScopeSetExtKt$viewModel$1 scopeSetExtKt$viewModel$1 = ScopeSetExtKt$viewModel$1.INSTANCE;
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), aVar, scopeSetExtKt$viewModel$1, kind, emptyList));
        c10.p(aVar2);
        return new Pair<>(c10, aVar2);
    }

    public static final /* synthetic */ <T extends ViewModel> Pair<a, d<T>> b(b9.d dVar, z8.a aVar, Function2<? super Scope, ? super y8.a, ? extends T> definition) {
        List emptyList;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(definition, "definition");
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), aVar, definition, kind, emptyList));
        c10.p(aVar2);
        return new Pair<>(c10, aVar2);
    }

    public static /* synthetic */ Pair c(b9.d dVar, z8.a aVar, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        z8.a aVar2 = aVar;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.needClassReification();
        ScopeSetExtKt$viewModel$1 scopeSetExtKt$viewModel$1 = ScopeSetExtKt$viewModel$1.INSTANCE;
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), aVar2, scopeSetExtKt$viewModel$1, kind, emptyList));
        c10.p(aVar3);
        return new Pair(c10, aVar3);
    }

    public static /* synthetic */ Pair d(b9.d dVar, z8.a aVar, Function2 definition, int i4, Object obj) {
        List emptyList;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        z8.a aVar2 = aVar;
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        Intrinsics.checkNotNullParameter(definition, "definition");
        a c10 = dVar.c();
        z8.a d4 = dVar.d();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(d4, Reflection.getOrCreateKotlinClass(Object.class), aVar2, definition, kind, emptyList));
        c10.p(aVar3);
        return new Pair(c10, aVar3);
    }
}
