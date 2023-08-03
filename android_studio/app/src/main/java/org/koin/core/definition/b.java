package org.koin.core.definition;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import m8.g;
import m8.h;
import org.koin.core.scope.Scope;

/* compiled from: BeanDefinition.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a$\u0010\u0006\u001a\u00020\u00052\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0002\u001aw\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013\"\u0006\b\u0000\u0010\u0007\u0018\u00012\b\b\u0002\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022)\b\b\u0010\u0010\u001a#\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00028\u00000\u000bj\b\u0012\u0004\u0012\u00028\u0000`\u000e¢\u0006\u0002\b\u000f2\u0012\b\u0002\u0010\u0012\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00000\u00112\u0006\u0010\u0004\u001a\u00020\u0002H\u0086\bø\u0001\u0000*>\u0010\u0015\u001a\u0004\b\u0000\u0010\u0007\"\u0019\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00028\u00000\u000b¢\u0006\u0002\b\u000f2\u0019\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00028\u00000\u000b¢\u0006\u0002\b\u000f*\n\u0010\u0016\"\u00020\u00052\u00020\u0005\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0017"}, d2 = {"Lkotlin/reflect/KClass;", "clazz", "Lz8/a;", "typeQualifier", "scopeQualifier", "", "c", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/definition/Kind;", "kind", "qualifier", "Lkotlin/Function2;", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "Lorg/koin/core/definition/Definition;", "Lkotlin/ExtensionFunctionType;", "definition", "", "secondaryTypes", "Lorg/koin/core/definition/a;", "a", "Definition", "IndexKey", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class b {
    public static final /* synthetic */ <T> a<T> a(Kind kind, z8.a aVar, Function2<? super Scope, ? super y8.a, ? extends T> definition, List<? extends KClass<?>> secondaryTypes, z8.a scopeQualifier) {
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return new a<>(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), aVar, definition, kind, secondaryTypes);
    }

    public static /* synthetic */ a b(Kind kind, z8.a aVar, Function2 definition, List list, z8.a scopeQualifier, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            kind = Kind.Singleton;
        }
        Kind kind2 = kind;
        if ((i4 & 2) != 0) {
            aVar = null;
        }
        z8.a aVar2 = aVar;
        if ((i4 & 8) != 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        List secondaryTypes = list;
        Intrinsics.checkNotNullParameter(kind2, "kind");
        Intrinsics.checkNotNullParameter(definition, "definition");
        Intrinsics.checkNotNullParameter(secondaryTypes, "secondaryTypes");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return new a(scopeQualifier, Reflection.getOrCreateKotlinClass(Object.class), aVar2, definition, kind2, secondaryTypes);
    }

    @g
    public static final String c(@g KClass<?> clazz, @h z8.a aVar, @g z8.a scopeQualifier) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(scopeQualifier, "scopeQualifier");
        String str = (aVar == null || (str = aVar.getValue()) == null) ? "" : "";
        return c9.b.a(clazz) + ':' + str + ':' + scopeQualifier;
    }
}
