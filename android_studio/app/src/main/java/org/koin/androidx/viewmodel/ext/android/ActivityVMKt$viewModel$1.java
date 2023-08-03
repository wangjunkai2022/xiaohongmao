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

/* compiled from: ActivityVM.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 176)
/* loaded from: classes5.dex */
public final class ActivityVMKt$viewModel$1 extends Lambda implements Function0<ViewModelProvider.Factory> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ViewModelStoreOwner f92312a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z8.a f92313b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function0<y8.a> f92314c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Scope f92315d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ActivityVMKt$viewModel$1(ViewModelStoreOwner viewModelStoreOwner, z8.a aVar, Function0<? extends y8.a> function0, Scope scope) {
        super(0);
        this.f92312a = viewModelStoreOwner;
        this.f92313b = aVar;
        this.f92314c = function0;
        this.f92315d = scope;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final ViewModelProvider.Factory invoke() {
        ViewModelStoreOwner viewModelStoreOwner = this.f92312a;
        z8.a aVar = this.f92313b;
        Function0<y8.a> function0 = this.f92314c;
        Scope scope = this.f92315d;
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return a.a(viewModelStoreOwner, Reflection.getOrCreateKotlinClass(ViewModel.class), aVar, function0, null, scope);
    }
}
