package com.im.freechat.domain.usecase.downloads;

import com.im.freechat.domain.e;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.l;
import m8.g;
import m8.h;

/* compiled from: SubscribeDownloadsInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;", "Lcom/im/freechat/domain/usecase/base/a;", "", "params", "e", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/c;", "a", "Lcom/im/freechat/domain/c;", "c", "()Lcom/im/freechat/domain/c;", "databaseRepository", "Lcom/im/freechat/domain/e;", "b", "Lcom/im/freechat/domain/e;", "d", "()Lcom/im/freechat/domain/e;", "downloadManagerRepository", "<init>", "(Lcom/im/freechat/domain/c;Lcom/im/freechat/domain/e;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SubscribeDownloadsInteractor extends com.im.freechat.domain.usecase.base.a<Unit, Unit> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.c f41755a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final e f41756b;

    public SubscribeDownloadsInteractor(@g com.im.freechat.domain.c databaseRepository, @g e downloadManagerRepository) {
        Intrinsics.checkNotNullParameter(databaseRepository, "databaseRepository");
        Intrinsics.checkNotNullParameter(downloadManagerRepository, "downloadManagerRepository");
        this.f41755a = databaseRepository;
        this.f41756b = downloadManagerRepository;
    }

    @g
    public final com.im.freechat.domain.c c() {
        return this.f41755a;
    }

    @g
    public final e d() {
        return this.f41756b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.domain.usecase.base.a
    @h
    /* renamed from: e */
    public Object b(@g Unit unit, @g Continuation<? super Unit> continuation) {
        l.f(a2.f84781a, null, null, new SubscribeDownloadsInteractor$run$2(this, null), 3, null);
        return Unit.INSTANCE;
    }
}
