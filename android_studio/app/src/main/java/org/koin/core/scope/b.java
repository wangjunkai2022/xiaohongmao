package org.koin.core.scope;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ScopeJVM.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aM\u0010\u000b\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0016\b\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0007¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/scope/Scope;", "Ljava/lang/Class;", "clazz", "Lz8/a;", "qualifier", "Lkotlin/Function0;", "Ly8/a;", "Lorg/koin/core/parameter/ParametersDefinition;", "parameters", "c", "(Lorg/koin/core/scope/Scope;Ljava/lang/Class;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class b {
    @JvmOverloads
    @g
    public static final <T> T a(@g Scope scope, @g Class<?> clazz) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) d(scope, clazz, null, null, 6, null);
    }

    @JvmOverloads
    @g
    public static final <T> T b(@g Scope scope, @g Class<?> clazz, @h z8.a aVar) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) d(scope, clazz, aVar, null, 4, null);
    }

    @JvmOverloads
    @g
    public static final <T> T c(@g Scope scope, @g Class<?> clazz, @h z8.a aVar, @h Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) scope.p(JvmClassMappingKt.getKotlinClass(clazz), aVar, function0);
    }

    public static /* synthetic */ Object d(Scope scope, Class cls, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            aVar = null;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        return c(scope, cls, aVar, function0);
    }
}
