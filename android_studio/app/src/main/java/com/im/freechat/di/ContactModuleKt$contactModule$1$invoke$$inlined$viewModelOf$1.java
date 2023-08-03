package com.im.freechat.di;

import com.im.freechat.domain.usecase.chat.c;
import com.im.freechat.domain.usecase.contact.ListenBlockedContactsInteractor;
import com.im.freechat.domain.usecase.contact.ListenContactListInteractor;
import com.im.freechat.domain.usecase.contact.ListenFollowingsInteractor;
import com.im.freechat.domain.usecase.contact.f;
import com.im.freechat.domain.usecase.contact.j;
import com.im.freechat.domain.usecase.contact.k;
import com.im.freechat.ui.contacts.ContactListViewModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: ViewModelOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u0011\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0002\u0018\u0001\"\u0006\b\u0002\u0010\u0003\u0018\u0001\"\u0006\b\u0003\u0010\u0004\u0018\u0001\"\u0006\b\u0004\u0010\u0005\u0018\u0001\"\u0006\b\u0005\u0010\u0006\u0018\u0001\"\u0006\b\u0006\u0010\u0007\u0018\u0001\"\u0006\b\u0007\u0010\b\u0018\u0001\"\u0006\b\b\u0010\t\u0018\u0001\"\u0006\b\t\u0010\n\u0018\u0001*\u00020\u000b2\u0006\u0010\r\u001a\u00020\fH\n¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/lifecycle/ViewModel;", "R", "T1", "T2", "T3", "T4", "T5", "T6", "T7", "T8", "T9", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/lifecycle/ViewModel;", "org/koin/androidx/viewmodel/dsl/ViewModelOfKt$viewModelOf$20", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ContactModuleKt$contactModule$1$invoke$$inlined$viewModelOf$1 extends Lambda implements Function2<Scope, y8.a, ContactListViewModel> {
    public ContactModuleKt$contactModule$1$invoke$$inlined$viewModelOf$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    @g
    public final ContactListViewModel invoke(@g Scope viewModel, @g y8.a it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        Object p9 = viewModel.p(Reflection.getOrCreateKotlinClass(ListenFollowingsInteractor.class), null, null);
        Object p10 = viewModel.p(Reflection.getOrCreateKotlinClass(ListenBlockedContactsInteractor.class), null, null);
        Object p11 = viewModel.p(Reflection.getOrCreateKotlinClass(ListenContactListInteractor.class), null, null);
        Object p12 = viewModel.p(Reflection.getOrCreateKotlinClass(c.class), null, null);
        Object p13 = viewModel.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.contact.c.class), null, null);
        Object p14 = viewModel.p(Reflection.getOrCreateKotlinClass(f.class), null, null);
        Object p15 = viewModel.p(Reflection.getOrCreateKotlinClass(j.class), null, null);
        return new ContactListViewModel((ListenFollowingsInteractor) p9, (ListenBlockedContactsInteractor) p10, (ListenContactListInteractor) p11, (c) p12, (com.im.freechat.domain.usecase.contact.c) p13, (f) p14, (j) p15, (k) viewModel.p(Reflection.getOrCreateKotlinClass(k.class), null, null), (com.im.freechat.domain.usecase.contact.g) viewModel.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.contact.g.class), null, null));
    }
}
