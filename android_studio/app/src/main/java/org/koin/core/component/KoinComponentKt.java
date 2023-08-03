package org.koin.core.component;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.scope.Scope;

/* compiled from: KoinComponent.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aG\u0010\t\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0016\b\n\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007H\u0086\bø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001aP\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\f\u001a\u00020\u000b2\u0016\b\n\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0007H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000f"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/koin/core/component/a;", "Lz8/a;", "qualifier", "Lkotlin/Function0;", "Ly8/a;", "Lorg/koin/core/parameter/ParametersDefinition;", "parameters", "a", "(Lorg/koin/core/component/a;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Lkotlin/LazyThreadSafetyMode;", "mode", "Lkotlin/Lazy;", "c", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class KoinComponentKt {
    public static final /* synthetic */ <T> T a(a aVar, z8.a aVar2, Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        if (aVar instanceof b) {
            Scope scope = ((b) aVar).getScope();
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return (T) scope.p(Reflection.getOrCreateKotlinClass(Object.class), aVar2, function0);
        }
        Scope h4 = aVar.getKoin().I().h();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) h4.p(Reflection.getOrCreateKotlinClass(Object.class), aVar2, function0);
    }

    public static /* synthetic */ Object b(a aVar, z8.a aVar2, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar2 = null;
        }
        if ((i4 & 2) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        if (aVar instanceof b) {
            Scope scope = ((b) aVar).getScope();
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return scope.p(Reflection.getOrCreateKotlinClass(Object.class), aVar2, function0);
        }
        Scope h4 = aVar.getKoin().I().h();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return h4.p(Reflection.getOrCreateKotlinClass(Object.class), aVar2, function0);
    }

    public static final /* synthetic */ <T> Lazy<T> c(a aVar, z8.a aVar2, LazyThreadSafetyMode mode, Function0<? extends y8.a> function0) {
        Lazy<T> lazy;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(mode, (Function0) new KoinComponentKt$inject$1(aVar, aVar2, function0));
        return lazy;
    }

    public static /* synthetic */ Lazy d(a aVar, z8.a aVar2, LazyThreadSafetyMode mode, Function0 function0, int i4, Object obj) {
        Lazy lazy;
        if ((i4 & 1) != 0) {
            aVar2 = null;
        }
        if ((i4 & 2) != 0) {
            mode = d9.b.f62011a.b();
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(mode, (Function0) new KoinComponentKt$inject$1(aVar, aVar2, function0));
        return lazy;
    }
}
