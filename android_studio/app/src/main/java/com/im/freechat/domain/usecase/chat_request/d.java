package com.im.freechat.domain.usecase.chat_request;

import com.im.freechat.domain.usecase.base.FlowUseCase;
import com.im.freechat.shared.entities.chat.FriendStatus;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i;
import m8.g;
import m8.h;

/* compiled from: ListenSentFriendRequestsInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Lcom/im/freechat/domain/usecase/chat_request/d;", "Lcom/im/freechat/domain/usecase/base/FlowUseCase;", "", "", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "params", "Lkotlinx/coroutines/flow/i;", "e", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/c;", "a", "Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d extends FlowUseCase<Unit, List<? extends FriendStatus>> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.c f41560a;

    public d(@g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41560a = databaseRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.domain.usecase.base.FlowUseCase
    @h
    /* renamed from: e */
    public Object b(@g Unit unit, @g Continuation<? super i<? extends List<FriendStatus>>> continuation) {
        return this.f41560a.H();
    }
}
