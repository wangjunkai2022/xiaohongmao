package com.im.freechat.domain.usecase.chat;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EndTypingInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lcom/im/freechat/domain/usecase/chat/f;", "Lcom/im/freechat/domain/usecase/base/a;", "", "", "params", "c", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/u;", "a", "Lcom/im/freechat/domain/u;", "webSocketRepository", "<init>", "(Lcom/im/freechat/domain/u;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f extends com.im.freechat.domain.usecase.base.a<Integer, Unit> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.u f41482a;

    public f(@m8.g com.im.freechat.domain.u webSocketRepository) {
        Intrinsics.checkNotNullParameter(webSocketRepository, "webSocketRepository");
        this.f41482a = webSocketRepository;
    }

    @Override // com.im.freechat.domain.usecase.base.a
    public /* bridge */ /* synthetic */ Object b(Integer num, Continuation<? super Unit> continuation) {
        return c(num.intValue(), continuation);
    }

    @m8.h
    protected Object c(int i4, @m8.g Continuation<? super Unit> continuation) {
        this.f41482a.e(i4);
        return Unit.INSTANCE;
    }
}
