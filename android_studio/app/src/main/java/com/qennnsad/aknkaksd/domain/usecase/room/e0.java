package com.qennnsad.aknkaksd.domain.usecase.room;

import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.data.bean.GiftSentResponse;
import com.qennnsad.aknkaksd.data.bean.gift.Gift;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: SendGiftUseCase.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB)\b\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0010¨\u0006\u0018"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;", "Lcom/qennnsad/aknkaksd/data/bean/GiftSentResponse;", "params", "Lio/reactivex/z;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "c", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "wsObjectPool", "Lcom/qennnsad/aknkaksd/domain/base/d;", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "Lx4/a;", "analytics", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lcom/qennnsad/aknkaksd/data/websocket/j;Lx4/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e0 extends com.qennnsad.aknkaksd.domain.base.h<a, GiftSentResponse> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48299a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f48300b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.websocket.j f48301c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final x4.a f48302d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<GiftSentResponse> f48303e;

    /* compiled from: SendGiftUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u001b\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\t¢\u0006\u0004\b\"\u0010#J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\tHÆ\u0003J;\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00072\b\b\u0002\u0010\u000f\u001a\u00020\tHÆ\u0001J\t\u0010\u0011\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0012\u001a\u00020\tHÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0015\u001a\u0004\b\u001b\u0010\u0017R\u0017\u0010\u000e\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\u000f\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u001f\u001a\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/room/e0$a;", "", "", "a", "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;", "b", "c", "", "d", "", "e", "receiverUserId", "gift", "roomTypeString", "isBluetoothMsgWasReceived", "count", "f", "toString", "hashCode", "other", "equals", "Ljava/lang/String;", "j", "()Ljava/lang/String;", "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;", ContextChain.TAG_INFRA, "()Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;", "k", "Z", "l", "()Z", "I", "h", "()I", "<init>", "(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;Ljava/lang/String;ZI)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f48304a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final Gift f48305b;
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private final String f48306c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f48307d;

        /* renamed from: e  reason: collision with root package name */
        private final int f48308e;

        public a(@m8.g String receiverUserId, @m8.g Gift gift, @m8.g String roomTypeString, boolean z9, int i4) {
            Intrinsics.checkNotNullParameter(receiverUserId, "receiverUserId");
            Intrinsics.checkNotNullParameter(gift, "gift");
            Intrinsics.checkNotNullParameter(roomTypeString, "roomTypeString");
            this.f48304a = receiverUserId;
            this.f48305b = gift;
            this.f48306c = roomTypeString;
            this.f48307d = z9;
            this.f48308e = i4;
        }

        public static /* synthetic */ a g(a aVar, String str, Gift gift, String str2, boolean z9, int i4, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = aVar.f48304a;
            }
            if ((i10 & 2) != 0) {
                gift = aVar.f48305b;
            }
            Gift gift2 = gift;
            if ((i10 & 4) != 0) {
                str2 = aVar.f48306c;
            }
            String str3 = str2;
            if ((i10 & 8) != 0) {
                z9 = aVar.f48307d;
            }
            boolean z10 = z9;
            if ((i10 & 16) != 0) {
                i4 = aVar.f48308e;
            }
            return aVar.f(str, gift2, str3, z10, i4);
        }

        @m8.g
        public final String a() {
            return this.f48304a;
        }

        @m8.g
        public final Gift b() {
            return this.f48305b;
        }

        @m8.g
        public final String c() {
            return this.f48306c;
        }

        public final boolean d() {
            return this.f48307d;
        }

        public final int e() {
            return this.f48308e;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.f48304a, aVar.f48304a) && Intrinsics.areEqual(this.f48305b, aVar.f48305b) && Intrinsics.areEqual(this.f48306c, aVar.f48306c) && this.f48307d == aVar.f48307d && this.f48308e == aVar.f48308e;
            }
            return false;
        }

        @m8.g
        public final a f(@m8.g String receiverUserId, @m8.g Gift gift, @m8.g String roomTypeString, boolean z9, int i4) {
            Intrinsics.checkNotNullParameter(receiverUserId, "receiverUserId");
            Intrinsics.checkNotNullParameter(gift, "gift");
            Intrinsics.checkNotNullParameter(roomTypeString, "roomTypeString");
            return new a(receiverUserId, gift, roomTypeString, z9, i4);
        }

        public final int h() {
            return this.f48308e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((((this.f48304a.hashCode() * 31) + this.f48305b.hashCode()) * 31) + this.f48306c.hashCode()) * 31;
            boolean z9 = this.f48307d;
            int i4 = z9;
            if (z9 != 0) {
                i4 = 1;
            }
            return ((hashCode + i4) * 31) + this.f48308e;
        }

        @m8.g
        public final Gift i() {
            return this.f48305b;
        }

        @m8.g
        public final String j() {
            return this.f48304a;
        }

        @m8.g
        public final String k() {
            return this.f48306c;
        }

        public final boolean l() {
            return this.f48307d;
        }

        @m8.g
        public String toString() {
            return "Params(receiverUserId=" + this.f48304a + ", gift=" + this.f48305b + ", roomTypeString=" + this.f48306c + ", isBluetoothMsgWasReceived=" + this.f48307d + ", count=" + this.f48308e + ')';
        }
    }

    @u7.a
    public e0(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.websocket.j wsObjectPool, @m8.g x4.a analytics) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(wsObjectPool, "wsObjectPool");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        this.f48299a = sourceFactory;
        this.f48300b = localDataManager;
        this.f48301c = wsObjectPool;
        this.f48302d = analytics;
        this.f48303e = new com.qennnsad.aknkaksd.domain.base.d<>(GiftSentResponse.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(e0 this$0, a params, GiftSentResponse giftSentResponse) {
        UserBean copy;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(params, "$params");
        g5.a.x0(this$0.f48300b, giftSentResponse.getCoinbalance(), Integer.valueOf(giftSentResponse.getRemainfornextlev()), null, 4, null);
        UserBean C = this$0.f48300b.C();
        Intrinsics.checkNotNull(C);
        copy = C.copy((r86 & 1) != 0 ? C.id : null, (r86 & 2) != 0 ? C.sex : 0, (r86 & 4) != 0 ? C.intro : null, (r86 & 8) != 0 ? C.nickname : null, (r86 & 16) != 0 ? C.city : null, (r86 & 32) != 0 ? C.avatartime : null, (r86 & 64) != 0 ? C.birthday : null, (r86 & 128) != 0 ? C.professional : null, (r86 & 256) != 0 ? C.emotion : null, (r86 & 512) != 0 ? C.province : null, (r86 & 1024) != 0 ? C.peerage_id : 0, (r86 & 2048) != 0 ? C.avatar : null, (r86 & 4096) != 0 ? C.snap : null, (r86 & 8192) != 0 ? C.follow_users : null, (r86 & 16384) != 0 ? C.followers_cnt : null, (r86 & 32768) != 0 ? C.followees_cnt : null, (r86 & 65536) != 0 ? C.emceelevel : String.valueOf(giftSentResponse.getEmceeLevel()), (r86 & 131072) != 0 ? C.familyLevel : null, (r86 & 262144) != 0 ? C.age : 0, (r86 & 524288) != 0 ? C.beanorignal : 0, (r86 & 1048576) != 0 ? C.spendcoin : 0, (r86 & 2097152) != 0 ? C.broadcasting : null, (r86 & 4194304) != 0 ? C.curroomnum : null, (r86 & 8388608) != 0 ? C.toy_enabled : null, (r86 & 16777216) != 0 ? C.toy_status : null, (r86 & 33554432) != 0 ? C.approveid : null, (r86 & 67108864) != 0 ? C.approvetype : 0, (r86 & 134217728) != 0 ? C.is_attention : 0, (r86 & 268435456) != 0 ? C.isHit : 0, (r86 & 536870912) != 0 ? C.name_card : null, (r86 & 1073741824) != 0 ? C.lob_no : 0, (r86 & Integer.MIN_VALUE) != 0 ? C.mysteryId : null, (r87 & 1) != 0 ? C.isMystery : 0, (r87 & 2) != 0 ? C.isGuest : false, (r87 & 4) != 0 ? C.isanchor : false, (r87 & 8) != 0 ? C.iswithdraw : false, (r87 & 16) != 0 ? C.is_lounge_vip : false, (r87 & 32) != 0 ? C.is_subscribe_notify : 0, (r87 & 64) != 0 ? C.is_single_conversation : 0, (r87 & 128) != 0 ? C.is_group_conversation : 0, (r87 & 256) != 0 ? C.is_im : 0, (r87 & 512) != 0 ? C.is_anchor_rank : false, (r87 & 1024) != 0 ? C.is_family : false, (r87 & 2048) != 0 ? C.is_deposit_chip : false, (r87 & 4096) != 0 ? C.is_withdraw_chip : false, (r87 & 8192) != 0 ? C.is_legend : false, (r87 & 16384) != 0 ? C.is_legend_withdraw : false, (r87 & 32768) != 0 ? C.is_join_peerage : false, (r87 & 65536) != 0 ? C.isAdmin : 0, (r87 & 131072) != 0 ? C.interactionReady : 0, (r87 & 262144) != 0 ? C.showLevel : 0, (r87 & 524288) != 0 ? C.showFamilyLevel : 0, (r87 & 1048576) != 0 ? C.showPeerage : 0, (r87 & 2097152) != 0 ? C.showJapanese : 0, (r87 & 4194304) != 0 ? C.realtimeTranslationEnable : null, (r87 & 8388608) != 0 ? C.realtimeTranslationType : null, (r87 & 16777216) != 0 ? C.realtimeSubtitlesOn : 0, (r87 & 33554432) != 0 ? C.menus : null, (r87 & 67108864) != 0 ? C.username : null, (r87 & 134217728) != 0 ? C.iswithdraw_promotion : null, (r87 & 268435456) != 0 ? C.settings : null);
        this$0.f48300b.T(copy);
        this$0.f48302d.d(EventSignature.APP_GIFT_SENT, String.valueOf(params.i().getPrice()), params.i().getDisplayName(), params.j(), params.k(), String.valueOf(params.l()));
        this$0.f48301c.c(copy, this$0.f48300b.o(), this$0.f48300b.q());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ GiftSentResponse g(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (GiftSentResponse) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public io.reactivex.z<GiftSentResponse> a(@m8.g final a params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> sendGift = com.qennnsad.aknkaksd.data.repository.m.g(this.f48299a, false, 1, null).sendGift(params.j(), params.i().getId(), params.h());
        final com.qennnsad.aknkaksd.domain.base.d<GiftSentResponse> dVar = this.f48303e;
        io.reactivex.z<GiftSentResponse> doOnNext = sendGift.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.room.d0
            @Override // n7.o
            public final Object apply(Object obj) {
                GiftSentResponse g4;
                g4 = e0.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g4;
            }
        }).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.room.c0
            @Override // n7.g
            public final void accept(Object obj) {
                e0.f(e0.this, params, (GiftSentResponse) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "sourceFactory.create().s…LocalRoomMsg())\n        }");
        return doOnNext;
    }
}
