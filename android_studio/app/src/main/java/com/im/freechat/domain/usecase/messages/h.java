package com.im.freechat.domain.usecase.messages;

import com.im.freechat.shared.entities.message.Message;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchMessagesInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/domain/usecase/messages/h;", "Lcom/im/freechat/domain/usecase/base/a;", "", "", "Lcom/im/freechat/shared/entities/message/Message;", "params", "c", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/c;", "a", "Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h extends com.im.freechat.domain.usecase.base.a<String, List<? extends Message>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.c f41893a;

    public h(@m8.g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41893a = databaseRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    public Object b(@m8.g String str, @m8.g Continuation<? super List<Message>> continuation) {
        return this.f41893a.Q(str, continuation);
    }
}
