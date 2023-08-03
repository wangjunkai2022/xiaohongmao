package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import com.qennnsad.aknkaksd.domain.usecase.user.k;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: ModifyPasswordViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/n;", "", "old", "new", "", "s", "Lcom/qennnsad/aknkaksd/domain/usecase/user/k;", "e", "Lcom/qennnsad/aknkaksd/domain/usecase/user/k;", "modifyPasswordUseCase", "<init>", "(Lcom/qennnsad/aknkaksd/domain/usecase/user/k;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ModifyPasswordViewModel extends com.qennnsad.aknkaksd.presentation.common.l<n> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.user.k f53171e;

    /* compiled from: ModifyPasswordViewModel.kt */
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
            ModifyPasswordViewModel.this.l(n.a.f53234a);
        }
    }

    @u7.a
    public ModifyPasswordViewModel(@m8.g com.qennnsad.aknkaksd.domain.usecase.user.k modifyPasswordUseCase) {
        Intrinsics.checkNotNullParameter(modifyPasswordUseCase, "modifyPasswordUseCase");
        this.f53171e = modifyPasswordUseCase;
    }

    public final void s(@m8.g String old, @m8.g String str) {
        Intrinsics.checkNotNullParameter(old, "old");
        Intrinsics.checkNotNullParameter(str, "new");
        h(this.f53171e, d(), new k.a(old, str), new a());
    }
}
