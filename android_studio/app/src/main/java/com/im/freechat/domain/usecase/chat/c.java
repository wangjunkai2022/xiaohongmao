package com.im.freechat.domain.usecase.chat;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CreateSingleChatInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lcom/im/freechat/domain/usecase/chat/c;", "Lcom/im/freechat/domain/usecase/base/a;", "", "params", "c", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/t;", "a", "Lcom/im/freechat/domain/t;", "syncRepository", "<init>", "(Lcom/im/freechat/domain/t;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends com.im.freechat.domain.usecase.base.a<Integer, Integer> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.t f41466a;

    public c(@m8.g com.im.freechat.domain.t syncRepository) {
        Intrinsics.checkNotNullParameter(syncRepository, "syncRepository");
        this.f41466a = syncRepository;
    }

    @Override // com.im.freechat.domain.usecase.base.a
    public /* bridge */ /* synthetic */ Object b(Integer num, Continuation<? super Integer> continuation) {
        return c(num.intValue(), continuation);
    }

    @m8.h
    protected Object c(int i4, @m8.g Continuation<? super Integer> continuation) {
        return this.f41466a.s(i4, continuation);
    }
}
