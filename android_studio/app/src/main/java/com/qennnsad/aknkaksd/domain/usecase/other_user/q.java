package com.qennnsad.aknkaksd.domain.usecase.other_user;

import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import io.reactivex.z;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: UnfollowUserUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0013B\u0019\b\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;", "", "params", "Lio/reactivex/z;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class q extends com.qennnsad.aknkaksd.domain.base.h<a, String> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48255a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48256b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<String> f48257c;

    @u7.a
    public q(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48255a = localDataManager;
        this.f48256b = sourceFactory;
        this.f48257c = new com.qennnsad.aknkaksd.domain.base.d<>(String.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(q this$0, a params, String str) {
        List minus;
        UserBean copy;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(params, "$params");
        UserBean C = this$0.f48255a.C();
        if (C != null) {
            g5.a aVar = this$0.f48255a;
            minus = CollectionsKt___CollectionsKt.minus(C.getFollow_users(), params.b());
            copy = C.copy((r86 & 1) != 0 ? C.id : null, (r86 & 2) != 0 ? C.sex : 0, (r86 & 4) != 0 ? C.intro : null, (r86 & 8) != 0 ? C.nickname : null, (r86 & 16) != 0 ? C.city : null, (r86 & 32) != 0 ? C.avatartime : null, (r86 & 64) != 0 ? C.birthday : null, (r86 & 128) != 0 ? C.professional : null, (r86 & 256) != 0 ? C.emotion : null, (r86 & 512) != 0 ? C.province : null, (r86 & 1024) != 0 ? C.peerage_id : 0, (r86 & 2048) != 0 ? C.avatar : null, (r86 & 4096) != 0 ? C.snap : null, (r86 & 8192) != 0 ? C.follow_users : minus, (r86 & 16384) != 0 ? C.followers_cnt : null, (r86 & 32768) != 0 ? C.followees_cnt : null, (r86 & 65536) != 0 ? C.emceelevel : null, (r86 & 131072) != 0 ? C.familyLevel : null, (r86 & 262144) != 0 ? C.age : 0, (r86 & 524288) != 0 ? C.beanorignal : 0, (r86 & 1048576) != 0 ? C.spendcoin : 0, (r86 & 2097152) != 0 ? C.broadcasting : null, (r86 & 4194304) != 0 ? C.curroomnum : null, (r86 & 8388608) != 0 ? C.toy_enabled : null, (r86 & 16777216) != 0 ? C.toy_status : null, (r86 & 33554432) != 0 ? C.approveid : null, (r86 & 67108864) != 0 ? C.approvetype : 0, (r86 & 134217728) != 0 ? C.is_attention : 0, (r86 & 268435456) != 0 ? C.isHit : 0, (r86 & 536870912) != 0 ? C.name_card : null, (r86 & 1073741824) != 0 ? C.lob_no : 0, (r86 & Integer.MIN_VALUE) != 0 ? C.mysteryId : null, (r87 & 1) != 0 ? C.isMystery : 0, (r87 & 2) != 0 ? C.isGuest : false, (r87 & 4) != 0 ? C.isanchor : false, (r87 & 8) != 0 ? C.iswithdraw : false, (r87 & 16) != 0 ? C.is_lounge_vip : false, (r87 & 32) != 0 ? C.is_subscribe_notify : 0, (r87 & 64) != 0 ? C.is_single_conversation : 0, (r87 & 128) != 0 ? C.is_group_conversation : 0, (r87 & 256) != 0 ? C.is_im : 0, (r87 & 512) != 0 ? C.is_anchor_rank : false, (r87 & 1024) != 0 ? C.is_family : false, (r87 & 2048) != 0 ? C.is_deposit_chip : false, (r87 & 4096) != 0 ? C.is_withdraw_chip : false, (r87 & 8192) != 0 ? C.is_legend : false, (r87 & 16384) != 0 ? C.is_legend_withdraw : false, (r87 & 32768) != 0 ? C.is_join_peerage : false, (r87 & 65536) != 0 ? C.isAdmin : 0, (r87 & 131072) != 0 ? C.interactionReady : 0, (r87 & 262144) != 0 ? C.showLevel : 0, (r87 & 524288) != 0 ? C.showFamilyLevel : 0, (r87 & 1048576) != 0 ? C.showPeerage : 0, (r87 & 2097152) != 0 ? C.showJapanese : 0, (r87 & 4194304) != 0 ? C.realtimeTranslationEnable : null, (r87 & 8388608) != 0 ? C.realtimeTranslationType : null, (r87 & 16777216) != 0 ? C.realtimeSubtitlesOn : 0, (r87 & 33554432) != 0 ? C.menus : null, (r87 & 67108864) != 0 ? C.username : null, (r87 & 134217728) != 0 ? C.iswithdraw_promotion : null, (r87 & 268435456) != 0 ? C.settings : null);
            aVar.T(copy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ String g(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (String) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public z<String> a(@m8.g final a params) {
        Intrinsics.checkNotNullParameter(params, "params");
        z<Response<String>> unfollowUser = com.qennnsad.aknkaksd.data.repository.m.g(this.f48256b, false, 1, null).unfollowUser(params.b(), params.a());
        final com.qennnsad.aknkaksd.domain.base.d<String> dVar = this.f48257c;
        z<String> doOnNext = unfollowUser.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.other_user.p
            @Override // n7.o
            public final Object apply(Object obj) {
                String g4;
                g4 = q.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g4;
            }
        }).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.other_user.o
            @Override // n7.g
            public final void accept(Object obj) {
                q.f(q.this, params, (String) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "sourceFactory.create().u…)\n            }\n        }");
        return doOnNext;
    }

    /* compiled from: UnfollowUserUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0004\u001a\u0004\b\u0003\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q$a;", "", "", "a", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "userId", "roomId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f48258a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final String f48259b;

        public a(@m8.g String userId, @m8.g String roomId) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(roomId, "roomId");
            this.f48258a = userId;
            this.f48259b = roomId;
        }

        @m8.g
        public final String a() {
            return this.f48259b;
        }

        @m8.g
        public final String b() {
            return this.f48258a;
        }

        public /* synthetic */ a(String str, String str2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i4 & 2) != 0 ? "" : str2);
        }
    }
}
