package com.qennnsad.aknkaksd.domain.usecase.publsh;

import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.data.bean.room.LiveRoomEndInfo;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.domain.base.h;
import io.reactivex.z;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import n7.o;
import retrofit2.Response;

/* compiled from: GetLiveRoomEndInfoUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB!\b\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0015"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c$a;", "Lcom/qennnsad/aknkaksd/data/bean/room/LiveRoomEndInfo;", "params", "Lio/reactivex/z;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "d", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "Lx4/a;", "analytics", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lx4/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends h<a, LiveRoomEndInfo> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final m f48265a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f48266b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final x4.a f48267c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<LiveRoomEndInfo> f48268d;

    /* compiled from: GetLiveRoomEndInfoUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\u0003\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/publsh/c$a;", "", "", "a", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "roomId", "", "J", "()J", "duration", "<init>", "(Ljava/lang/String;J)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @g

        /* renamed from: a  reason: collision with root package name */
        private final String f48269a;

        /* renamed from: b  reason: collision with root package name */
        private final long f48270b;

        public a(@g String roomId, long j4) {
            Intrinsics.checkNotNullParameter(roomId, "roomId");
            this.f48269a = roomId;
            this.f48270b = j4;
        }

        public final long a() {
            return this.f48270b;
        }

        @g
        public final String b() {
            return this.f48269a;
        }
    }

    @u7.a
    public c(@g m sourceFactory, @g g5.a localDataManager, @g x4.a analytics) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        this.f48265a = sourceFactory;
        this.f48266b = localDataManager;
        this.f48267c = analytics;
        this.f48268d = new com.qennnsad.aknkaksd.domain.base.d<>(LiveRoomEndInfo.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(c this$0, a params, LiveRoomEndInfo liveRoomEndInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(params, "$params");
        this$0.f48267c.d(EventSignature.APP_ROOM_ENDED, params.b(), liveRoomEndInfo.getCoinIncome(), "", liveRoomEndInfo.getAudienceCount(), String.valueOf(params.a()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ LiveRoomEndInfo g(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (LiveRoomEndInfo) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @g
    /* renamed from: e */
    public z<LiveRoomEndInfo> a(@g final a params) {
        Intrinsics.checkNotNullParameter(params, "params");
        z<Response<String>> liveRoomInfo = m.g(this.f48265a, false, 1, null).getLiveRoomInfo(params.b());
        final com.qennnsad.aknkaksd.domain.base.d<LiveRoomEndInfo> dVar = this.f48268d;
        z<LiveRoomEndInfo> doOnNext = liveRoomInfo.map(new o() { // from class: com.qennnsad.aknkaksd.domain.usecase.publsh.b
            @Override // n7.o
            public final Object apply(Object obj) {
                LiveRoomEndInfo g4;
                g4 = c.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g4;
            }
        }).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.publsh.a
            @Override // n7.g
            public final void accept(Object obj) {
                c.f(c.this, params, (LiveRoomEndInfo) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "sourceFactory.create().g…)\n            )\n        }");
        return doOnNext;
    }
}
