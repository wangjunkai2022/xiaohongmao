package com.im.freechat.di;

import com.im.freechat.domain.h;
import com.im.freechat.domain.usecase.currentuser.c;
import com.im.freechat.domain.usecase.currentuser.d;
import com.im.freechat.domain.usecase.currentuser.f;
import com.im.freechat.domain.usecase.currentuser.i;
import com.im.freechat.domain.usecase.currentuser.j;
import com.im.freechat.domain.usecase.currentuser.k;
import com.im.freechat.domain.usecase.currentuser.l;
import com.im.freechat.domain.usecase.currentuser.n;
import com.im.freechat.ui.settings.SettingsViewModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: KoinDSLHelper.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u0013\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0002\u0018\u0001\"\u0006\b\u0002\u0010\u0003\u0018\u0001\"\u0006\b\u0003\u0010\u0004\u0018\u0001\"\u0006\b\u0004\u0010\u0005\u0018\u0001\"\u0006\b\u0005\u0010\u0006\u0018\u0001\"\u0006\b\u0006\u0010\u0007\u0018\u0001\"\u0006\b\u0007\u0010\b\u0018\u0001\"\u0006\b\b\u0010\t\u0018\u0001\"\u0006\b\t\u0010\n\u0018\u0001\"\u0006\b\n\u0010\u000b\u0018\u0001\"\u0006\b\u000b\u0010\f\u0018\u0001*\u00020\r2\u0006\u0010\u000f\u001a\u00020\u000eH\n¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/lifecycle/ViewModel;", "R", "T1", "T2", "T3", "T4", "T5", "T6", "T7", "T8", "T9", "T10", "T11", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/lifecycle/ViewModel;", "com/im/freechat/di/KoinDSLHelperKt$viewModelOf$2", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SettingsModuleKt$settingsModule$1$invoke$$inlined$viewModelOf$1 extends Lambda implements Function2<Scope, y8.a, SettingsViewModel> {
    public SettingsModuleKt$settingsModule$1$invoke$$inlined$viewModelOf$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    @g
    public final SettingsViewModel invoke(@g Scope viewModel, @g y8.a it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        Object p9 = viewModel.p(Reflection.getOrCreateKotlinClass(h.class), null, null);
        Object p10 = viewModel.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.currentuser.a.class), null, null);
        Object p11 = viewModel.p(Reflection.getOrCreateKotlinClass(i.class), null, null);
        Object p12 = viewModel.p(Reflection.getOrCreateKotlinClass(n.class), null, null);
        Object p13 = viewModel.p(Reflection.getOrCreateKotlinClass(j.class), null, null);
        Object p14 = viewModel.p(Reflection.getOrCreateKotlinClass(c.class), null, null);
        Object p15 = viewModel.p(Reflection.getOrCreateKotlinClass(l.class), null, null);
        Object p16 = viewModel.p(Reflection.getOrCreateKotlinClass(d.class), null, null);
        Object p17 = viewModel.p(Reflection.getOrCreateKotlinClass(f.class), null, null);
        return new SettingsViewModel((h) p9, (com.im.freechat.domain.usecase.currentuser.a) p10, (i) p11, (n) p12, (j) p13, (c) p14, (l) p15, (d) p16, (f) p17, (k) viewModel.p(Reflection.getOrCreateKotlinClass(k.class), null, null), (com.im.freechat.domain.usecase.chat.d) viewModel.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.chat.d.class), null, null));
    }
}
