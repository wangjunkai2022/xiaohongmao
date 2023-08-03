package org.koin.androidx.viewmodel.ext.android;

import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import io.sentry.protocol.t;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import m8.g;
import m8.h;
import org.koin.core.scope.Scope;

/* compiled from: ActivityStateVM.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001aZ\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\b\n\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\u0016\b\n\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\u0004\u0018\u0001`\nH\u0086\bø\u0001\u0000\u001a`\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e2\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\u0004\u0018\u0001`\n\u001a[\u0010\u0011\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\b\n\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\u0016\b\n\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\u0004\u0018\u0001`\nH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001aa\u0010\u0013\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e2\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\u0004\u0018\u0001`\n¢\u0006\u0004\b\u0013\u0010\u0014\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0015"}, d2 = {"Landroidx/lifecycle/ViewModel;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/activity/ComponentActivity;", "Lz8/a;", "qualifier", "Lkotlin/Function0;", "Landroid/os/Bundle;", "Lorg/koin/androidx/viewmodel/scope/BundleDefinition;", t.b.f83859d, "Ly8/a;", "Lorg/koin/core/parameter/ParametersDefinition;", "parameters", "Lkotlin/Lazy;", "e", "Lkotlin/reflect/KClass;", "clazz", "f", "a", "(Landroidx/activity/ComponentActivity;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "b", "(Landroidx/activity/ComponentActivity;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ActivityStateVMKt {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActivityStateVM.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class a extends Lambda implements Function0<ViewModelStore> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ComponentActivity f92294a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ComponentActivity componentActivity) {
            super(0);
            this.f92294a = componentActivity;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @g
        public final ViewModelStore invoke() {
            ViewModelStore viewModelStore = this.f92294a.getViewModelStore();
            Intrinsics.checkNotNullExpressionValue(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActivityStateVM.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class b extends Lambda implements Function0<ViewModelProvider.Factory> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ComponentActivity f92295a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ KClass<T> f92296b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ z8.a f92297c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function0<y8.a> f92298d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function0<Bundle> f92299e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Scope f92300f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(ComponentActivity componentActivity, KClass<T> kClass, z8.a aVar, Function0<? extends y8.a> function0, Function0<Bundle> function02, Scope scope) {
            super(0);
            this.f92295a = componentActivity;
            this.f92296b = kClass;
            this.f92297c = aVar;
            this.f92298d = function0;
            this.f92299e = function02;
            this.f92300f = scope;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @g
        public final ViewModelProvider.Factory invoke() {
            return org.koin.androidx.viewmodel.ext.android.a.a(this.f92295a, this.f92296b, this.f92297c, this.f92298d, this.f92299e, this.f92300f);
        }
    }

    public static final /* synthetic */ <T extends ViewModel> T a(ComponentActivity componentActivity, z8.a aVar, Function0<Bundle> state, Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Scope a10 = org.koin.android.ext.android.a.a(componentActivity);
        Intrinsics.needClassReification();
        ActivityStateVMKt$getStateViewModel$$inlined$stateViewModel$1 activityStateVMKt$getStateViewModel$$inlined$stateViewModel$1 = new ActivityStateVMKt$getStateViewModel$$inlined$stateViewModel$1(componentActivity, aVar, function0, state, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) new ViewModelLazy(Reflection.getOrCreateKotlinClass(ViewModel.class), new ActivityStateVMKt$stateViewModel$$inlined$viewModels$2(componentActivity), activityStateVMKt$getStateViewModel$$inlined$stateViewModel$1).getValue();
    }

    @g
    public static final <T extends ViewModel> T b(@g ComponentActivity componentActivity, @h z8.a aVar, @g Function0<Bundle> state, @g KClass<T> clazz, @h Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) f(componentActivity, aVar, state, clazz, function0).getValue();
    }

    public static /* synthetic */ ViewModel c(ComponentActivity componentActivity, z8.a aVar, Function0 function0, Function0 function02, int i4, Object obj) {
        z8.a aVar2 = (i4 & 1) != 0 ? null : aVar;
        if ((i4 & 2) != 0) {
            function0 = org.koin.androidx.viewmodel.scope.a.a();
        }
        Function0 state = function0;
        Function0 function03 = (i4 & 4) != 0 ? null : function02;
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Scope a10 = org.koin.android.ext.android.a.a(componentActivity);
        Intrinsics.needClassReification();
        ActivityStateVMKt$getStateViewModel$$inlined$stateViewModel$1 activityStateVMKt$getStateViewModel$$inlined$stateViewModel$1 = new ActivityStateVMKt$getStateViewModel$$inlined$stateViewModel$1(componentActivity, aVar2, function03, state, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (ViewModel) new ViewModelLazy(Reflection.getOrCreateKotlinClass(ViewModel.class), new ActivityStateVMKt$stateViewModel$$inlined$viewModels$2(componentActivity), activityStateVMKt$getStateViewModel$$inlined$stateViewModel$1).getValue();
    }

    public static /* synthetic */ ViewModel d(ComponentActivity componentActivity, z8.a aVar, Function0 function0, KClass kClass, Function0 function02, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            function0 = org.koin.androidx.viewmodel.scope.a.a();
        }
        if ((i4 & 8) != 0) {
            function02 = null;
        }
        return b(componentActivity, aVar, function0, kClass, function02);
    }

    public static final /* synthetic */ <T extends ViewModel> Lazy<T> e(ComponentActivity componentActivity, z8.a aVar, Function0<Bundle> state, Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Scope a10 = org.koin.android.ext.android.a.a(componentActivity);
        Intrinsics.needClassReification();
        ActivityStateVMKt$stateViewModel$1 activityStateVMKt$stateViewModel$1 = new ActivityStateVMKt$stateViewModel$1(componentActivity, aVar, function0, state, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return new ViewModelLazy(Reflection.getOrCreateKotlinClass(ViewModel.class), new ActivityStateVMKt$stateViewModel$$inlined$viewModels$2(componentActivity), activityStateVMKt$stateViewModel$1);
    }

    @g
    public static final <T extends ViewModel> Lazy<T> f(@g ComponentActivity componentActivity, @h z8.a aVar, @g Function0<Bundle> state, @g KClass<T> clazz, @h Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return new ViewModelLazy(clazz, new a(componentActivity), new b(componentActivity, clazz, aVar, function0, state, org.koin.android.ext.android.a.a(componentActivity)));
    }

    public static /* synthetic */ Lazy g(ComponentActivity componentActivity, z8.a aVar, Function0 function0, Function0 function02, int i4, Object obj) {
        z8.a aVar2 = (i4 & 1) != 0 ? null : aVar;
        if ((i4 & 2) != 0) {
            function0 = org.koin.androidx.viewmodel.scope.a.a();
        }
        Function0 state = function0;
        Function0 function03 = (i4 & 4) != 0 ? null : function02;
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Scope a10 = org.koin.android.ext.android.a.a(componentActivity);
        Intrinsics.needClassReification();
        ActivityStateVMKt$stateViewModel$1 activityStateVMKt$stateViewModel$1 = new ActivityStateVMKt$stateViewModel$1(componentActivity, aVar2, function03, state, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return new ViewModelLazy(Reflection.getOrCreateKotlinClass(ViewModel.class), new ActivityStateVMKt$stateViewModel$$inlined$viewModels$2(componentActivity), activityStateVMKt$stateViewModel$1);
    }

    public static /* synthetic */ Lazy h(ComponentActivity componentActivity, z8.a aVar, Function0 function0, KClass kClass, Function0 function02, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            function0 = org.koin.androidx.viewmodel.scope.a.a();
        }
        if ((i4 & 8) != 0) {
            function02 = null;
        }
        return f(componentActivity, aVar, function0, kClass, function02);
    }
}
