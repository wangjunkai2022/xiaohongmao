package org.koin.androidx.viewmodel.ext.android;

import android.os.Bundle;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import m8.g;
import m8.h;
import org.koin.core.scope.Scope;
import s8.c;
import s8.d;
import u8.b;

/* compiled from: GetViewModelFactory.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ab\u0010\u0010\u001a\u00020\u000f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0016\b\b\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\u0004\u0018\u0001`\b2\u0016\b\n\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0087\bø\u0001\u0000\u001a$\u0010\u0012\u001a\u00020\u000f\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\r2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0007\u001ah\u0010\u0015\u001a\u00020\u000f\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u00132\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\u0004\u0018\u0001`\b2\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0007\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0016"}, d2 = {"Landroidx/lifecycle/ViewModel;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModelStoreOwner;", "owner", "Lz8/a;", "qualifier", "Lkotlin/Function0;", "Ly8/a;", "Lorg/koin/core/parameter/ParametersDefinition;", "parameters", "Landroid/os/Bundle;", "Lorg/koin/androidx/viewmodel/scope/BundleDefinition;", t.b.f83859d, "Lorg/koin/core/scope/Scope;", "scope", "Landroidx/lifecycle/ViewModelProvider$Factory;", "b", "Ls8/c;", "c", "Lkotlin/reflect/KClass;", "clazz", "a", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a {
    @g
    @b
    public static final <T extends ViewModel> ViewModelProvider.Factory a(@g ViewModelStoreOwner owner, @g KClass<T> clazz, @h z8.a aVar, @h Function0<? extends y8.a> function0, @h Function0<Bundle> function02, @g Scope scope) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(scope, "scope");
        SavedStateRegistryOwner savedStateRegistryOwner = null;
        if ((function02 != null) && (owner instanceof SavedStateRegistryOwner)) {
            savedStateRegistryOwner = (SavedStateRegistryOwner) owner;
        }
        return d.a(scope, new c(clazz, aVar, function02, function0, owner, savedStateRegistryOwner));
    }

    @b
    public static final /* synthetic */ <T extends ViewModel> ViewModelProvider.Factory b(ViewModelStoreOwner owner, z8.a aVar, Function0<? extends y8.a> function0, Function0<Bundle> function02, Scope scope) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return a(owner, Reflection.getOrCreateKotlinClass(ViewModel.class), aVar, function0, function02, scope);
    }

    @g
    @b
    public static final <T extends ViewModel> ViewModelProvider.Factory c(@g Scope scope, @g c<T> parameters) {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        return d.a(scope, parameters);
    }

    public static /* synthetic */ ViewModelProvider.Factory d(ViewModelStoreOwner viewModelStoreOwner, KClass kClass, z8.a aVar, Function0 function0, Function0 function02, Scope scope, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            function02 = null;
        }
        return a(viewModelStoreOwner, kClass, aVar, function0, function02, scope);
    }

    public static /* synthetic */ ViewModelProvider.Factory e(ViewModelStoreOwner owner, z8.a aVar, Function0 function0, Function0 function02, Scope scope, int i4, Object obj) {
        if ((i4 & 8) != 0) {
            function02 = null;
        }
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return a(owner, Reflection.getOrCreateKotlinClass(ViewModel.class), aVar, function0, function02, scope);
    }
}
