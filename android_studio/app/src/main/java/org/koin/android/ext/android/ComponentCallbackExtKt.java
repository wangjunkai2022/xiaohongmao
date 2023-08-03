package org.koin.android.ext.android;

import android.content.ComponentCallbacks;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.Koin;
import org.koin.core.scope.Scope;
import v8.b;

/* compiled from: ComponentCallbackExt.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001aP\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\"\n\b\u0000\u0010\u0004\u0018\u0001*\u00020\u0003*\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\u00072\u0016\b\n\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\u0004\u0018\u0001`\u000bH\u0086\bø\u0001\u0000\u001aG\u0010\u000f\u001a\u00028\u0000\"\n\b\u0000\u0010\u0004\u0018\u0001*\u00020\u0003*\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0016\b\n\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\u0004\u0018\u0001`\u000bH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0011"}, d2 = {"Landroid/content/ComponentCallbacks;", "Lorg/koin/core/Koin;", "c", "", ExifInterface.GPS_DIRECTION_TRUE, "Lz8/a;", "qualifier", "Lkotlin/LazyThreadSafetyMode;", "mode", "Lkotlin/Function0;", "Ly8/a;", "Lorg/koin/core/parameter/ParametersDefinition;", "parameters", "Lkotlin/Lazy;", "d", "a", "(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ComponentCallbackExtKt {
    public static final /* synthetic */ <T> T a(ComponentCallbacks componentCallbacks, z8.a aVar, Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        Scope a10 = a.a(componentCallbacks);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) a10.p(Reflection.getOrCreateKotlinClass(Object.class), aVar, function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object b(ComponentCallbacks componentCallbacks, z8.a aVar, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        Scope a10 = a.a(componentCallbacks);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return a10.p(Reflection.getOrCreateKotlinClass(Object.class), aVar, function0);
    }

    @g
    public static final Koin c(@g ComponentCallbacks componentCallbacks) {
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        return componentCallbacks instanceof org.koin.core.component.a ? ((org.koin.core.component.a) componentCallbacks).getKoin() : b.f94213a.get();
    }

    public static final /* synthetic */ <T> Lazy<T> d(ComponentCallbacks componentCallbacks, z8.a aVar, LazyThreadSafetyMode mode, Function0<? extends y8.a> function0) {
        Lazy<T> lazy;
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(mode, (Function0) new ComponentCallbackExtKt$inject$1(componentCallbacks, aVar, function0));
        return lazy;
    }

    public static /* synthetic */ Lazy e(ComponentCallbacks componentCallbacks, z8.a aVar, LazyThreadSafetyMode mode, Function0 function0, int i4, Object obj) {
        Lazy lazy;
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            mode = LazyThreadSafetyMode.SYNCHRONIZED;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(componentCallbacks, "<this>");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.needClassReification();
        lazy = LazyKt__LazyJVMKt.lazy(mode, (Function0) new ComponentCallbackExtKt$inject$1(componentCallbacks, aVar, function0));
        return lazy;
    }
}
