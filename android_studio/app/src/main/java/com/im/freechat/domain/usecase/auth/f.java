package com.im.freechat.domain.usecase.auth;

import com.im.freechat.domain.usecase.base.FlowUseCase;
import com.im.freechat.shared.entities.LoginState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ListenLoginStatusInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/domain/usecase/auth/f;", "Lcom/im/freechat/domain/usecase/base/FlowUseCase;", "", "Lcom/im/freechat/shared/entities/LoginState;", "params", "Lkotlinx/coroutines/flow/i;", "e", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "<init>", "(Lcom/im/freechat/domain/k;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f extends FlowUseCase<Unit, LoginState> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41394a;

    public f(@m8.g com.im.freechat.domain.k loginRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        this.f41394a = loginRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.domain.usecase.base.FlowUseCase
    @m8.h
    /* renamed from: e */
    public Object b(@m8.g Unit unit, @m8.g Continuation<? super kotlinx.coroutines.flow.i<? extends LoginState>> continuation) {
        return this.f41394a.i();
    }
}
