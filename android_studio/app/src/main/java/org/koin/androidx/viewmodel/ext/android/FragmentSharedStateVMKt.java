package org.koin.androidx.viewmodel.ext.android;

import android.os.Bundle;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
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

/* compiled from: FragmentSharedStateVM.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001an\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\b\n\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\u0012\b\n\u0010\u000b\u001a\f\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n2\u0016\b\n\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\f\u0018\u00010\u0005j\u0004\u0018\u0001`\rH\u0086\bø\u0001\u0000\u001at\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\u0012\b\u0002\u0010\u000b\u001a\f\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u00112\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\f\u0018\u00010\u0005j\u0004\u0018\u0001`\r\u001ao\u0010\u0014\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\b\n\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\u0012\b\n\u0010\u000b\u001a\f\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n2\u0016\b\n\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\f\u0018\u00010\u0005j\u0004\u0018\u0001`\rH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001au\u0010\u0016\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\u0012\b\u0002\u0010\u000b\u001a\f\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u00112\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\f\u0018\u00010\u0005j\u0004\u0018\u0001`\r¢\u0006\u0004\b\u0016\u0010\u0017\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0018"}, d2 = {"Landroidx/lifecycle/ViewModel;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/fragment/app/Fragment;", "Lz8/a;", "qualifier", "Lkotlin/Function0;", "Landroid/os/Bundle;", "Lorg/koin/androidx/viewmodel/scope/BundleDefinition;", t.b.f83859d, "Landroidx/lifecycle/ViewModelStoreOwner;", "Lorg/koin/androidx/viewmodel/ViewModelStoreOwnerProducer;", "owner", "Ly8/a;", "Lorg/koin/core/parameter/ParametersDefinition;", "parameters", "Lkotlin/Lazy;", "e", "Lkotlin/reflect/KClass;", "clazz", "f", "a", "(Landroidx/fragment/app/Fragment;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "b", "(Landroidx/fragment/app/Fragment;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FragmentSharedStateVMKt {

    /* compiled from: FragmentSharedStateVM.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/fragment/app/FragmentActivity;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    static final class a extends Lambda implements Function0<FragmentActivity> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Fragment f92324a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Fragment fragment) {
            super(0);
            this.f92324a = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @g
        public final FragmentActivity invoke() {
            FragmentActivity requireActivity = this.f92324a.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            return requireActivity;
        }
    }

    /* compiled from: FragmentSharedStateVM.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/fragment/app/FragmentActivity;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    static final class b extends Lambda implements Function0<FragmentActivity> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Fragment f92325a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Fragment fragment) {
            super(0);
            this.f92325a = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @g
        public final FragmentActivity invoke() {
            FragmentActivity requireActivity = this.f92325a.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            return requireActivity;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentSharedStateVM.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class c extends Lambda implements Function0<ViewModelStore> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Fragment f92326a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Fragment fragment) {
            super(0);
            this.f92326a = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @g
        public final ViewModelStore invoke() {
            ViewModelStore viewModelStore = this.f92326a.getViewModelStore();
            Intrinsics.checkNotNullExpressionValue(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentSharedStateVM.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public static final class d extends Lambda implements Function0<ViewModelProvider.Factory> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<ViewModelStoreOwner> f92327a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ KClass<T> f92328b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ z8.a f92329c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function0<y8.a> f92330d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function0<Bundle> f92331e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Scope f92332f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        d(Function0<? extends ViewModelStoreOwner> function0, KClass<T> kClass, z8.a aVar, Function0<? extends y8.a> function02, Function0<Bundle> function03, Scope scope) {
            super(0);
            this.f92327a = function0;
            this.f92328b = kClass;
            this.f92329c = aVar;
            this.f92330d = function02;
            this.f92331e = function03;
            this.f92332f = scope;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @g
        public final ViewModelProvider.Factory invoke() {
            return org.koin.androidx.viewmodel.ext.android.a.a(this.f92327a.invoke(), this.f92328b, this.f92329c, this.f92330d, this.f92331e, this.f92332f);
        }
    }

    public static final /* synthetic */ <T extends ViewModel> T a(Fragment fragment, z8.a aVar, Function0<Bundle> state, Function0<? extends ViewModelStoreOwner> owner, Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Scope a10 = org.koin.android.ext.android.a.a(fragment);
        Intrinsics.needClassReification();
        FragmentSharedStateVMKt$getSharedStateViewModel$$inlined$sharedStateViewModel$1 fragmentSharedStateVMKt$getSharedStateViewModel$$inlined$sharedStateViewModel$1 = new FragmentSharedStateVMKt$getSharedStateViewModel$$inlined$sharedStateViewModel$1(owner, aVar, function0, state, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) FragmentViewModelLazyKt.createViewModelLazy(fragment, Reflection.getOrCreateKotlinClass(ViewModel.class), new FragmentSharedStateVMKt$sharedStateViewModel$$inlined$viewModels$1(owner), fragmentSharedStateVMKt$getSharedStateViewModel$$inlined$sharedStateViewModel$1).getValue();
    }

    @g
    public static final <T extends ViewModel> T b(@g Fragment fragment, @h z8.a aVar, @g Function0<Bundle> state, @g Function0<? extends ViewModelStoreOwner> owner, @g KClass<T> clazz, @h Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) f(fragment, aVar, state, owner, clazz, function0).getValue();
    }

    public static /* synthetic */ ViewModel c(Fragment fragment, z8.a aVar, Function0 function0, Function0 owner, Function0 function02, int i4, Object obj) {
        z8.a aVar2 = (i4 & 1) != 0 ? null : aVar;
        if ((i4 & 2) != 0) {
            function0 = org.koin.androidx.viewmodel.scope.a.a();
        }
        Function0 state = function0;
        if ((i4 & 4) != 0) {
            owner = new FragmentSharedStateVMKt$getSharedStateViewModel$1(fragment);
        }
        Function0 function03 = (i4 & 8) != 0 ? null : function02;
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Scope a10 = org.koin.android.ext.android.a.a(fragment);
        Intrinsics.needClassReification();
        FragmentSharedStateVMKt$getSharedStateViewModel$$inlined$sharedStateViewModel$1 fragmentSharedStateVMKt$getSharedStateViewModel$$inlined$sharedStateViewModel$1 = new FragmentSharedStateVMKt$getSharedStateViewModel$$inlined$sharedStateViewModel$1(owner, aVar2, function03, state, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (ViewModel) FragmentViewModelLazyKt.createViewModelLazy(fragment, Reflection.getOrCreateKotlinClass(ViewModel.class), new FragmentSharedStateVMKt$sharedStateViewModel$$inlined$viewModels$1(owner), fragmentSharedStateVMKt$getSharedStateViewModel$$inlined$sharedStateViewModel$1).getValue();
    }

    public static /* synthetic */ ViewModel d(Fragment fragment, z8.a aVar, Function0 function0, Function0 function02, KClass kClass, Function0 function03, int i4, Object obj) {
        z8.a aVar2 = (i4 & 1) != 0 ? null : aVar;
        if ((i4 & 2) != 0) {
            function0 = org.koin.androidx.viewmodel.scope.a.a();
        }
        Function0 function04 = function0;
        if ((i4 & 4) != 0) {
            function02 = new a(fragment);
        }
        return b(fragment, aVar2, function04, function02, kClass, (i4 & 16) != 0 ? null : function03);
    }

    public static final /* synthetic */ <T extends ViewModel> Lazy<T> e(Fragment fragment, z8.a aVar, Function0<Bundle> state, Function0<? extends ViewModelStoreOwner> owner, Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Scope a10 = org.koin.android.ext.android.a.a(fragment);
        Intrinsics.needClassReification();
        FragmentSharedStateVMKt$sharedStateViewModel$2 fragmentSharedStateVMKt$sharedStateViewModel$2 = new FragmentSharedStateVMKt$sharedStateViewModel$2(owner, aVar, function0, state, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return FragmentViewModelLazyKt.createViewModelLazy(fragment, Reflection.getOrCreateKotlinClass(ViewModel.class), new FragmentSharedStateVMKt$sharedStateViewModel$$inlined$viewModels$1(owner), fragmentSharedStateVMKt$sharedStateViewModel$2);
    }

    @g
    public static final <T extends ViewModel> Lazy<T> f(@g Fragment fragment, @h z8.a aVar, @g Function0<Bundle> state, @g Function0<? extends ViewModelStoreOwner> owner, @g KClass<T> clazz, @h Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return new ViewModelLazy(clazz, new c(fragment), new d(owner, clazz, aVar, function0, state, org.koin.android.ext.android.a.a(fragment)));
    }

    public static /* synthetic */ Lazy g(Fragment fragment, z8.a aVar, Function0 function0, Function0 owner, Function0 function02, int i4, Object obj) {
        z8.a aVar2 = (i4 & 1) != 0 ? null : aVar;
        if ((i4 & 2) != 0) {
            function0 = org.koin.androidx.viewmodel.scope.a.a();
        }
        Function0 state = function0;
        if ((i4 & 4) != 0) {
            owner = new FragmentSharedStateVMKt$sharedStateViewModel$1(fragment);
        }
        Function0 function03 = (i4 & 8) != 0 ? null : function02;
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Scope a10 = org.koin.android.ext.android.a.a(fragment);
        Intrinsics.needClassReification();
        FragmentSharedStateVMKt$sharedStateViewModel$2 fragmentSharedStateVMKt$sharedStateViewModel$2 = new FragmentSharedStateVMKt$sharedStateViewModel$2(owner, aVar2, function03, state, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return FragmentViewModelLazyKt.createViewModelLazy(fragment, Reflection.getOrCreateKotlinClass(ViewModel.class), new FragmentSharedStateVMKt$sharedStateViewModel$$inlined$viewModels$1(owner), fragmentSharedStateVMKt$sharedStateViewModel$2);
    }

    public static /* synthetic */ Lazy h(Fragment fragment, z8.a aVar, Function0 function0, Function0 function02, KClass kClass, Function0 function03, int i4, Object obj) {
        z8.a aVar2 = (i4 & 1) != 0 ? null : aVar;
        if ((i4 & 2) != 0) {
            function0 = org.koin.androidx.viewmodel.scope.a.a();
        }
        Function0 function04 = function0;
        if ((i4 & 4) != 0) {
            function02 = new b(fragment);
        }
        return f(fragment, aVar2, function04, function02, kClass, (i4 & 16) != 0 ? null : function03);
    }
}
