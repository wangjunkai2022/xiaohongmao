package com.im.freechat.di;

import com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: ViewModelOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\n\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0002\u0018\u0001\"\u0006\b\u0002\u0010\u0003\u0018\u0001*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\n¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/lifecycle/ViewModel;", "R", "T1", "T2", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/lifecycle/ViewModel;", "org/koin/androidx/viewmodel/dsl/ViewModelOfKt$viewModelOf$6", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatListModuleKt$chatListModule$1$invoke$$inlined$viewModelOf$2 extends Lambda implements Function2<Scope, y8.a, ChooseChatTypeViewModel> {
    public ChatListModuleKt$chatListModule$1$invoke$$inlined$viewModelOf$2() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    @g
    public final ChooseChatTypeViewModel invoke(@g Scope viewModel, @g y8.a it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        return new ChooseChatTypeViewModel((com.im.freechat.domain.usecase.chat.g) viewModel.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.chat.g.class), null, null), (com.im.freechat.domain.usecase.currentuser.a) viewModel.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.currentuser.a.class), null, null));
    }
}
