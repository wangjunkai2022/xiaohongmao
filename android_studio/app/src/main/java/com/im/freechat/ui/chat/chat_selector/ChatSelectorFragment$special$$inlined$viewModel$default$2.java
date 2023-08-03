package com.im.freechat.ui.chat.chat_selector;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: FragmentVM.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "invoke", "org/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$2"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatSelectorFragment$special$$inlined$viewModel$default$2 extends Lambda implements Function0<ViewModelProvider.Factory> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function0 f42275a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z8.a f42276b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Function0 f42277c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Scope f42278d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatSelectorFragment$special$$inlined$viewModel$default$2(Function0 function0, z8.a aVar, Function0 function02, Scope scope) {
        super(0);
        this.f42275a = function0;
        this.f42276b = aVar;
        this.f42277c = function02;
        this.f42278d = scope;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final ViewModelProvider.Factory invoke() {
        return org.koin.androidx.viewmodel.ext.android.a.a((ViewModelStoreOwner) this.f42275a.invoke(), Reflection.getOrCreateKotlinClass(ChatSelectorViewModel.class), this.f42276b, this.f42277c, null, this.f42278d);
    }
}
