package com.im.freechat.domain.usecase.messages;

import com.im.freechat.domain.usecase.base.FlowUseCase;
import com.im.freechat.shared.entities.message.Message;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SubscribeChatMessagesInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001\nB\u000f\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Lcom/im/freechat/domain/usecase/messages/k;", "Lcom/im/freechat/domain/usecase/base/FlowUseCase;", "Lcom/im/freechat/domain/usecase/messages/k$a;", "", "Lcom/im/freechat/shared/entities/message/Message;", "params", "Lkotlinx/coroutines/flow/i;", "e", "(Lcom/im/freechat/domain/usecase/messages/k$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/c;", "a", "Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class k extends FlowUseCase<a, List<? extends Message>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.c f41921a;

    /* compiled from: SubscribeChatMessagesInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/domain/usecase/messages/k$a;", "", "", "a", "I", "()I", k4.b.f84734a, "", "b", "J", "()J", "laterThan", "<init>", "(IJ)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f41922a;

        /* renamed from: b  reason: collision with root package name */
        private final long f41923b;

        public a(int i4, long j4) {
            this.f41922a = i4;
            this.f41923b = j4;
        }

        public final int a() {
            return this.f41922a;
        }

        public final long b() {
            return this.f41923b;
        }
    }

    public k(@m8.g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41921a = databaseRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.domain.usecase.base.FlowUseCase
    @m8.h
    /* renamed from: e */
    public Object b(@m8.g a aVar, @m8.g Continuation<? super kotlinx.coroutines.flow.i<? extends List<Message>>> continuation) {
        return this.f41921a.y(aVar.a(), aVar.b(), continuation);
    }
}
