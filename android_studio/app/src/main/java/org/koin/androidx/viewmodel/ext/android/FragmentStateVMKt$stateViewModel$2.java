package org.koin.androidx.viewmodel.ext.android;

import android.os.Bundle;
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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 176)
/* loaded from: classes5.dex */
public final class FragmentStateVMKt$stateViewModel$2 extends Lambda implements Function0<ViewModelProvider.Factory> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function0<ViewModelStoreOwner> f92369a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z8.a f92370b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function0<y8.a> f92371c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function0<Bundle> f92372d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ Scope f92373e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FragmentStateVMKt$stateViewModel$2(Function0<? extends ViewModelStoreOwner> function0, z8.a aVar, Function0<? extends y8.a> function02, Function0<Bundle> function03, Scope scope) {
        super(0);
        this.f92369a = function0;
        this.f92370b = aVar;
        this.f92371c = function02;
        this.f92372d = function03;
        this.f92373e = scope;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final ViewModelProvider.Factory invoke() {
        z8.a aVar = this.f92370b;
        Function0<y8.a> function0 = this.f92371c;
        Function0<Bundle> function02 = this.f92372d;
        Scope scope = this.f92373e;
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return a.a(this.f92369a.invoke(), Reflection.getOrCreateKotlinClass(ViewModel.class), aVar, function0, function02, scope);
    }
}
