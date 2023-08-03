package com.qennnsad.aknkaksd.presentation.ui.chat.im.settings;

import androidx.lifecycle.ViewModel;
import com.im.freechat.ui.settings.SettingsViewModel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import org.koin.core.scope.Scope;

/* compiled from: SettingsViewModelProvider.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001b\u0010\n\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0007\u0010\t¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsViewModelProvider;", "Landroidx/lifecycle/ViewModel;", "Lcom/im/freechat/sdk/d;", "a", "Lcom/im/freechat/sdk/d;", "uiManager", "Lcom/im/freechat/ui/settings/SettingsViewModel;", "b", "Lkotlin/Lazy;", "()Lcom/im/freechat/ui/settings/SettingsViewModel;", "viewModel", "<init>", "(Lcom/im/freechat/sdk/d;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SettingsViewModelProvider extends ViewModel {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.sdk.d f52720a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f52721b;

    /* compiled from: SettingsViewModelProvider.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/im/freechat/ui/settings/SettingsViewModel;", "a", "()Lcom/im/freechat/ui/settings/SettingsViewModel;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<SettingsViewModel> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final SettingsViewModel invoke() {
            Scope h4;
            com.im.freechat.sdk.d dVar = SettingsViewModelProvider.this.f52720a;
            if (dVar instanceof org.koin.core.component.b) {
                h4 = ((org.koin.core.component.b) dVar).getScope();
            } else {
                h4 = dVar.getKoin().I().h();
            }
            return (SettingsViewModel) ((ViewModel) h4.p(Reflection.getOrCreateKotlinClass(SettingsViewModel.class), null, null));
        }
    }

    @u7.a
    public SettingsViewModelProvider(@m8.g com.im.freechat.sdk.d uiManager) {
        Intrinsics.checkNotNullParameter(uiManager, "uiManager");
        this.f52720a = uiManager;
        this.f52721b = LazyKt.lazy(new a());
    }

    @m8.g
    public final SettingsViewModel b() {
        return (SettingsViewModel) this.f52721b.getValue();
    }
}
