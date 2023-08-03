package com.qennnsad.aknkaksd.domain.usecase.room;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: ComplainPinnedMessageUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B!\b\u0007\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0013\u0010\u0014J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000f¨\u0006\u0015"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/room/e;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "msgId", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "c", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "wsObjectPool", "Lcom/qennnsad/aknkaksd/domain/base/d;", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e extends com.qennnsad.aknkaksd.domain.base.h<String, String> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48295a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f48296b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.websocket.j f48297c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<String> f48298d;

    @u7.a
    public e(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.websocket.j wsObjectPool) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(wsObjectPool, "wsObjectPool");
        this.f48295a = sourceFactory;
        this.f48296b = localDataManager;
        this.f48297c = wsObjectPool;
        this.f48298d = new com.qennnsad.aknkaksd.domain.base.d<>(String.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ String e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (String) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public io.reactivex.z<String> a(@m8.g String msgId) {
        Intrinsics.checkNotNullParameter(msgId, "msgId");
        io.reactivex.z<Response<String>> complainPinnedMessage = com.qennnsad.aknkaksd.data.repository.m.g(this.f48295a, false, 1, null).complainPinnedMessage(msgId);
        final com.qennnsad.aknkaksd.domain.base.d<String> dVar = this.f48298d;
        io.reactivex.z map = complainPinnedMessage.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.room.d
            @Override // n7.o
            public final Object apply(Object obj) {
                String e4;
                e4 = e.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create()\n …        .map(mapper::map)");
        return map;
    }
}
