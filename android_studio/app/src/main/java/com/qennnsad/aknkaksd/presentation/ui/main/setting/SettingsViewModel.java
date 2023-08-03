package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.domain.usecase.user.k1;
import com.qennnsad.aknkaksd.domain.usecase.user.o1;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: SettingsViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0007R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/v;", "", "name", "", "enabled", "", "t", "isSubscribe", "u", "s", "Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;", "e", "Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;", "updateSettingUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/o1;", "f", "Lcom/qennnsad/aknkaksd/domain/usecase/user/o1;", "updateSubscribeNotificationsUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;", "g", "Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;", "logoutUseCase", "<init>", "(Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;Lcom/qennnsad/aknkaksd/domain/usecase/user/o1;Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SettingsViewModel extends com.qennnsad.aknkaksd.presentation.common.l<v> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final k1 f53190e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final o1 f53191f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.auth.c0 f53192g;

    /* compiled from: SettingsViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function1<String, Unit> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            SettingsViewModel.this.l(v.a.f53241a);
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function1<String, Unit> {
        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            SettingsViewModel.this.o(R.string.settings_updated);
        }
    }

    /* compiled from: SettingsViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class c extends Lambda implements Function1<String, Unit> {
        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            SettingsViewModel.this.o(R.string.settings_updated);
        }
    }

    @u7.a
    public SettingsViewModel(@m8.g k1 updateSettingUseCase, @m8.g o1 updateSubscribeNotificationsUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.auth.c0 logoutUseCase) {
        Intrinsics.checkNotNullParameter(updateSettingUseCase, "updateSettingUseCase");
        Intrinsics.checkNotNullParameter(updateSubscribeNotificationsUseCase, "updateSubscribeNotificationsUseCase");
        Intrinsics.checkNotNullParameter(logoutUseCase, "logoutUseCase");
        this.f53190e = updateSettingUseCase;
        this.f53191f = updateSubscribeNotificationsUseCase;
        this.f53192g = logoutUseCase;
    }

    public final void s() {
        h(this.f53192g, d(), Unit.INSTANCE, new a());
    }

    public final void t(@m8.g String name, boolean z9) {
        Intrinsics.checkNotNullParameter(name, "name");
        h(this.f53190e, d(), new k1.a(name, z9), new b());
    }

    public final void u(boolean z9) {
        h(this.f53191f, d(), Integer.valueOf(z9 ? 1 : 0), new c());
    }
}
