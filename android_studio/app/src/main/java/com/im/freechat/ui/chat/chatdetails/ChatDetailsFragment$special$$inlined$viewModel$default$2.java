package com.im.freechat.ui.chat.chatdetails;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.scope.Scope;

/* compiled from: FragmentVM.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "invoke", "org/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$2"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatDetailsFragment$special$$inlined$viewModel$default$2 extends Lambda implements Function0<ViewModelProvider.Factory> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function0 f42324a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z8.a f42325b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function0 f42326c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Scope f42327d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatDetailsFragment$special$$inlined$viewModel$default$2(Function0 function0, z8.a aVar, Function0 function02, Scope scope) {
        super(0);
        this.f42324a = function0;
        this.f42325b = aVar;
        this.f42326c = function02;
        this.f42327d = scope;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @m8.g
    public final ViewModelProvider.Factory invoke() {
        return org.koin.androidx.viewmodel.ext.android.a.a((ViewModelStoreOwner) this.f42324a.invoke(), Reflection.getOrCreateKotlinClass(ChatDetailsViewModel.class), this.f42325b, this.f42326c, null, this.f42327d);
    }
}
