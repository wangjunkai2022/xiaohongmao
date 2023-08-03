package com.im.freechat.di;

import com.im.freechat.domain.usecase.messages.k;
import com.im.freechat.ui.chat.message_gallery.MessageGalleryViewModel;
import com.im.freechat.utils.f;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: ViewModelOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u000b\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0002\u0018\u0001\"\u0006\b\u0002\u0010\u0003\u0018\u0001\"\u0006\b\u0003\u0010\u0004\u0018\u0001*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0006H\n¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/lifecycle/ViewModel;", "R", "T1", "T2", "T3", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/lifecycle/ViewModel;", "org/koin/androidx/viewmodel/dsl/ViewModelOfKt$viewModelOf$8", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class VideoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$viewModelOf$1 extends Lambda implements Function2<Scope, y8.a, MessageGalleryViewModel> {
    public VideoPlayerModuleKt$videoPlayerModule$1$invoke$$inlined$viewModelOf$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    @g
    public final MessageGalleryViewModel invoke(@g Scope viewModel, @g y8.a it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        Object p9 = viewModel.p(Reflection.getOrCreateKotlinClass(p4.a.class), null, null);
        return new MessageGalleryViewModel((p4.a) p9, (f) viewModel.p(Reflection.getOrCreateKotlinClass(f.class), null, null), (k) viewModel.p(Reflection.getOrCreateKotlinClass(k.class), null, null));
    }
}
