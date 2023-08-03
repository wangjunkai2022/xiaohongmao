package com.im.freechat.domain.usecase.contact;

import com.im.freechat.domain.usecase.base.FlowUseCase;
import com.im.freechat.shared.entities.contact.UserModel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ListenContactInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ#\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/domain/usecase/contact/d;", "Lcom/im/freechat/domain/usecase/base/FlowUseCase;", "", "Lcom/im/freechat/shared/entities/contact/UserModel;", "params", "Lkotlinx/coroutines/flow/i;", "e", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/c;", "a", "Lcom/im/freechat/domain/c;", "databaseRepository", "<init>", "(Lcom/im/freechat/domain/c;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d extends FlowUseCase<Integer, UserModel> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.c f41617a;

    public d(@m8.g com.im.freechat.domain.c databaseRepository) {
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        this.f41617a = databaseRepository;
    }

    @Override // com.im.freechat.domain.usecase.base.FlowUseCase
    public /* bridge */ /* synthetic */ Object b(Integer num, Continuation<? super kotlinx.coroutines.flow.i<? extends UserModel>> continuation) {
        return e(num.intValue(), continuation);
    }

    @m8.h
    protected Object e(int i4, @m8.g Continuation<? super kotlinx.coroutines.flow.i<UserModel>> continuation) {
        return this.f41617a.f(i4);
    }
}
