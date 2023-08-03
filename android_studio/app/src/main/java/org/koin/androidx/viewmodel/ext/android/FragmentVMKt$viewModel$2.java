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

/* compiled from: FragmentVM.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 176)
/* loaded from: classes5.dex */
public final class FragmentVMKt$viewModel$2 extends Lambda implements Function0<ViewModelProvider.Factory> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function0<ViewModelStoreOwner> f92383a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z8.a f92384b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function0<y8.a> f92385c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Scope f92386d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FragmentVMKt$viewModel$2(Function0<? extends ViewModelStoreOwner> function0, z8.a aVar, Function0<? extends y8.a> function02, Scope scope) {
        super(0);
        this.f92383a = function0;
        this.f92384b = aVar;
        this.f92385c = function02;
        this.f92386d = scope;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final ViewModelProvider.Factory invoke() {
        z8.a aVar = this.f92384b;
        Function0<y8.a> function0 = this.f92385c;
        Scope scope = this.f92386d;
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return a.a(this.f92383a.invoke(), Reflection.getOrCreateKotlinClass(ViewModel.class), aVar, function0, null, scope);
    }
}
