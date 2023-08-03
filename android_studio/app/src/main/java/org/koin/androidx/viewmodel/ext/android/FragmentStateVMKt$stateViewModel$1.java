package org.koin.androidx.viewmodel.ext.android;

import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: FragmentStateVM.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/fragment/app/Fragment;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 5, 1}, xi = 176)
/* loaded from: classes5.dex */
public final class FragmentStateVMKt$stateViewModel$1 extends Lambda implements Function0<Fragment> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Fragment f92368a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentStateVMKt$stateViewModel$1(Fragment fragment) {
        super(0);
        this.f92368a = fragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final Fragment invoke() {
        return this.f92368a;
    }
}
