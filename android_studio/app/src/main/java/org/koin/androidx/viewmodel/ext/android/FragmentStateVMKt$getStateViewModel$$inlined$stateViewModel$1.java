package org.koin.androidx.viewmodel.ext.android;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: FragmentStateVM.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "invoke", "org/koin/androidx/viewmodel/ext/android/FragmentStateVMKt$stateViewModel$2"}, k = 3, mv = {1, 5, 1}, xi = 176)
/* loaded from: classes5.dex */
public final class FragmentStateVMKt$getStateViewModel$$inlined$stateViewModel$1 extends Lambda implements Function0<ViewModelProvider.Factory> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function0 f92350a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z8.a f92351b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function0 f92352c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function0 f92353d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Scope f92354e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentStateVMKt$getStateViewModel$$inlined$stateViewModel$1(Function0 function0, z8.a aVar, Function0 function02, Function0 function03, Scope scope) {
        super(0);
        this.f92350a = function0;
        this.f92351b = aVar;
        this.f92352c = function02;
        this.f92353d = function03;
        this.f92354e = scope;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final ViewModelProvider.Factory invoke() {
        z8.a aVar = this.f92351b;
        Function0 function0 = this.f92352c;
        Function0 function02 = this.f92353d;
        Scope scope = this.f92354e;
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return a.a((ViewModelStoreOwner) this.f92350a.invoke(), Reflection.getOrCreateKotlinClass(ViewModel.class), aVar, function0, function02, scope);
    }
}
