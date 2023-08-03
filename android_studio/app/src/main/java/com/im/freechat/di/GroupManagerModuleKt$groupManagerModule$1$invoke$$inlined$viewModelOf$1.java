package com.im.freechat.di;

import com.im.freechat.domain.usecase.chat.c;
import com.im.freechat.domain.usecase.chat.e;
import com.im.freechat.domain.usecase.chat.m;
import com.im.freechat.domain.usecase.chat.n;
import com.im.freechat.domain.usecase.chat.o;
import com.im.freechat.domain.usecase.chat.p;
import com.im.freechat.domain.usecase.chat.r;
import com.im.freechat.domain.usecase.contact.b;
import com.im.freechat.domain.usecase.contact.f;
import com.im.freechat.domain.usecase.contact.j;
import com.im.freechat.domain.usecase.members.h;
import com.im.freechat.domain.usecase.members.i;
import com.im.freechat.domain.usecase.messages.k;
import com.im.freechat.ui.chat.group_manager.GroupManagerViewModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: KoinDSLHelper.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u001b\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0002\u0018\u0001\"\u0006\b\u0002\u0010\u0003\u0018\u0001\"\u0006\b\u0003\u0010\u0004\u0018\u0001\"\u0006\b\u0004\u0010\u0005\u0018\u0001\"\u0006\b\u0005\u0010\u0006\u0018\u0001\"\u0006\b\u0006\u0010\u0007\u0018\u0001\"\u0006\b\u0007\u0010\b\u0018\u0001\"\u0006\b\b\u0010\t\u0018\u0001\"\u0006\b\t\u0010\n\u0018\u0001\"\u0006\b\n\u0010\u000b\u0018\u0001\"\u0006\b\u000b\u0010\f\u0018\u0001\"\u0006\b\f\u0010\r\u0018\u0001\"\u0006\b\r\u0010\u000e\u0018\u0001\"\u0006\b\u000e\u0010\u000f\u0018\u0001\"\u0006\b\u000f\u0010\u0010\u0018\u0001\"\u0006\b\u0010\u0010\u0011\u0018\u0001\"\u0006\b\u0011\u0010\u0012\u0018\u0001\"\u0006\b\u0012\u0010\u0013\u0018\u0001\"\u0006\b\u0013\u0010\u0014\u0018\u0001*\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0016H\n¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Landroidx/lifecycle/ViewModel;", "R", "T1", "T2", "T3", "T4", "T5", "T6", "T7", "T8", "T9", "T10", "T11", "T12", "T13", "T14", "T15", "T16", "T17", "T18", "T19", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/lifecycle/ViewModel;", "com/im/freechat/di/KoinDSLHelperKt$viewModelOf$1", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GroupManagerModuleKt$groupManagerModule$1$invoke$$inlined$viewModelOf$1 extends Lambda implements Function2<Scope, y8.a, GroupManagerViewModel> {
    public GroupManagerModuleKt$groupManagerModule$1$invoke$$inlined$viewModelOf$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    @g
    public final GroupManagerViewModel invoke(@g Scope viewModel, @g y8.a it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        Object p9 = viewModel.p(Reflection.getOrCreateKotlinClass(h.class), null, null);
        Object p10 = viewModel.p(Reflection.getOrCreateKotlinClass(e.class), null, null);
        Object p11 = viewModel.p(Reflection.getOrCreateKotlinClass(c.class), null, null);
        Object p12 = viewModel.p(Reflection.getOrCreateKotlinClass(r.class), null, null);
        Object p13 = viewModel.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.members.a.class), null, null);
        Object p14 = viewModel.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.members.g.class), null, null);
        Object p15 = viewModel.p(Reflection.getOrCreateKotlinClass(b.class), null, null);
        Object p16 = viewModel.p(Reflection.getOrCreateKotlinClass(f.class), null, null);
        Object p17 = viewModel.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.contact.a.class), null, null);
        Object p18 = viewModel.p(Reflection.getOrCreateKotlinClass(j.class), null, null);
        Object p19 = viewModel.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.members.c.class), null, null);
        Object p20 = viewModel.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.members.f.class), null, null);
        Object p21 = viewModel.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.members.b.class), null, null);
        Object p22 = viewModel.p(Reflection.getOrCreateKotlinClass(i.class), null, null);
        Object p23 = viewModel.p(Reflection.getOrCreateKotlinClass(n.class), null, null);
        Object p24 = viewModel.p(Reflection.getOrCreateKotlinClass(m.class), null, null);
        Object p25 = viewModel.p(Reflection.getOrCreateKotlinClass(o.class), null, null);
        return new GroupManagerViewModel((h) p9, (e) p10, (c) p11, (r) p12, (com.im.freechat.domain.usecase.members.a) p13, (com.im.freechat.domain.usecase.members.g) p14, (b) p15, (f) p16, (com.im.freechat.domain.usecase.contact.a) p17, (j) p18, (com.im.freechat.domain.usecase.members.c) p19, (com.im.freechat.domain.usecase.members.f) p20, (com.im.freechat.domain.usecase.members.b) p21, (i) p22, (n) p23, (m) p24, (o) p25, (p) viewModel.p(Reflection.getOrCreateKotlinClass(p.class), null, null), (k) viewModel.p(Reflection.getOrCreateKotlinClass(k.class), null, null));
    }
}
