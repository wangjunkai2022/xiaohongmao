package com.qennnsad.aknkaksd.domain.usecase.user;

import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: UpdateSettingUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0013B\u0019\b\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/user/k1$a;", "", "params", "Lio/reactivex/z;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class k1 extends com.qennnsad.aknkaksd.domain.base.h<a, String> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48427a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48428b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<String> f48429c;

    /* compiled from: UpdateSettingUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\u0003\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/user/k1$a;", "", "", "a", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "name", "", "Z", "()Z", "enabled", "<init>", "(Ljava/lang/String;Z)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f48430a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f48431b;

        public a(@m8.g String name, boolean z9) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.f48430a = name;
            this.f48431b = z9;
        }

        public final boolean a() {
            return this.f48431b;
        }

        @m8.g
        public final String b() {
            return this.f48430a;
        }
    }

    @u7.a
    public k1(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48427a = localDataManager;
        this.f48428b = sourceFactory;
        this.f48429c = new com.qennnsad.aknkaksd.domain.base.d<>(String.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(k1 this$0, a params, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(params, "$params");
        UserBean C = this$0.f48427a.C();
        if (C == null) {
            return;
        }
        boolean a10 = params.a();
        g5.a aVar = this$0.f48427a;
        String b10 = params.b();
        switch (b10.hashCode()) {
            case -1267115222:
                if (b10.equals("is_mystery")) {
                    C = C.copy((r86 & 1) != 0 ? C.id : null, (r86 & 2) != 0 ? C.sex : 0, (r86 & 4) != 0 ? C.intro : null, (r86 & 8) != 0 ? C.nickname : null, (r86 & 16) != 0 ? C.city : null, (r86 & 32) != 0 ? C.avatartime : null, (r86 & 64) != 0 ? C.birthday : null, (r86 & 128) != 0 ? C.professional : null, (r86 & 256) != 0 ? C.emotion : null, (r86 & 512) != 0 ? C.province : null, (r86 & 1024) != 0 ? C.peerage_id : 0, (r86 & 2048) != 0 ? C.avatar : null, (r86 & 4096) != 0 ? C.snap : null, (r86 & 8192) != 0 ? C.follow_users : null, (r86 & 16384) != 0 ? C.followers_cnt : null, (r86 & 32768) != 0 ? C.followees_cnt : null, (r86 & 65536) != 0 ? C.emceelevel : null, (r86 & 131072) != 0 ? C.familyLevel : null, (r86 & 262144) != 0 ? C.age : 0, (r86 & 524288) != 0 ? C.beanorignal : 0, (r86 & 1048576) != 0 ? C.spendcoin : 0, (r86 & 2097152) != 0 ? C.broadcasting : null, (r86 & 4194304) != 0 ? C.curroomnum : null, (r86 & 8388608) != 0 ? C.toy_enabled : null, (r86 & 16777216) != 0 ? C.toy_status : null, (r86 & 33554432) != 0 ? C.approveid : null, (r86 & 67108864) != 0 ? C.approvetype : 0, (r86 & 134217728) != 0 ? C.is_attention : 0, (r86 & 268435456) != 0 ? C.isHit : 0, (r86 & 536870912) != 0 ? C.name_card : null, (r86 & 1073741824) != 0 ? C.lob_no : 0, (r86 & Integer.MIN_VALUE) != 0 ? C.mysteryId : null, (r87 & 1) != 0 ? C.isMystery : a10 ? 1 : 0, (r87 & 2) != 0 ? C.isGuest : false, (r87 & 4) != 0 ? C.isanchor : false, (r87 & 8) != 0 ? C.iswithdraw : false, (r87 & 16) != 0 ? C.is_lounge_vip : false, (r87 & 32) != 0 ? C.is_subscribe_notify : 0, (r87 & 64) != 0 ? C.is_single_conversation : 0, (r87 & 128) != 0 ? C.is_group_conversation : 0, (r87 & 256) != 0 ? C.is_im : 0, (r87 & 512) != 0 ? C.is_anchor_rank : false, (r87 & 1024) != 0 ? C.is_family : false, (r87 & 2048) != 0 ? C.is_deposit_chip : false, (r87 & 4096) != 0 ? C.is_withdraw_chip : false, (r87 & 8192) != 0 ? C.is_legend : false, (r87 & 16384) != 0 ? C.is_legend_withdraw : false, (r87 & 32768) != 0 ? C.is_join_peerage : false, (r87 & 65536) != 0 ? C.isAdmin : 0, (r87 & 131072) != 0 ? C.interactionReady : 0, (r87 & 262144) != 0 ? C.showLevel : 0, (r87 & 524288) != 0 ? C.showFamilyLevel : 0, (r87 & 1048576) != 0 ? C.showPeerage : 0, (r87 & 2097152) != 0 ? C.showJapanese : 0, (r87 & 4194304) != 0 ? C.realtimeTranslationEnable : null, (r87 & 8388608) != 0 ? C.realtimeTranslationType : null, (r87 & 16777216) != 0 ? C.realtimeSubtitlesOn : 0, (r87 & 33554432) != 0 ? C.menus : null, (r87 & 67108864) != 0 ? C.username : null, (r87 & 134217728) != 0 ? C.iswithdraw_promotion : null, (r87 & 268435456) != 0 ? C.settings : null);
                    break;
                }
                break;
            case -891994391:
                if (b10.equals("family_level")) {
                    C = C.copy((r86 & 1) != 0 ? C.id : null, (r86 & 2) != 0 ? C.sex : 0, (r86 & 4) != 0 ? C.intro : null, (r86 & 8) != 0 ? C.nickname : null, (r86 & 16) != 0 ? C.city : null, (r86 & 32) != 0 ? C.avatartime : null, (r86 & 64) != 0 ? C.birthday : null, (r86 & 128) != 0 ? C.professional : null, (r86 & 256) != 0 ? C.emotion : null, (r86 & 512) != 0 ? C.province : null, (r86 & 1024) != 0 ? C.peerage_id : 0, (r86 & 2048) != 0 ? C.avatar : null, (r86 & 4096) != 0 ? C.snap : null, (r86 & 8192) != 0 ? C.follow_users : null, (r86 & 16384) != 0 ? C.followers_cnt : null, (r86 & 32768) != 0 ? C.followees_cnt : null, (r86 & 65536) != 0 ? C.emceelevel : null, (r86 & 131072) != 0 ? C.familyLevel : null, (r86 & 262144) != 0 ? C.age : 0, (r86 & 524288) != 0 ? C.beanorignal : 0, (r86 & 1048576) != 0 ? C.spendcoin : 0, (r86 & 2097152) != 0 ? C.broadcasting : null, (r86 & 4194304) != 0 ? C.curroomnum : null, (r86 & 8388608) != 0 ? C.toy_enabled : null, (r86 & 16777216) != 0 ? C.toy_status : null, (r86 & 33554432) != 0 ? C.approveid : null, (r86 & 67108864) != 0 ? C.approvetype : 0, (r86 & 134217728) != 0 ? C.is_attention : 0, (r86 & 268435456) != 0 ? C.isHit : 0, (r86 & 536870912) != 0 ? C.name_card : null, (r86 & 1073741824) != 0 ? C.lob_no : 0, (r86 & Integer.MIN_VALUE) != 0 ? C.mysteryId : null, (r87 & 1) != 0 ? C.isMystery : 0, (r87 & 2) != 0 ? C.isGuest : false, (r87 & 4) != 0 ? C.isanchor : false, (r87 & 8) != 0 ? C.iswithdraw : false, (r87 & 16) != 0 ? C.is_lounge_vip : false, (r87 & 32) != 0 ? C.is_subscribe_notify : 0, (r87 & 64) != 0 ? C.is_single_conversation : 0, (r87 & 128) != 0 ? C.is_group_conversation : 0, (r87 & 256) != 0 ? C.is_im : 0, (r87 & 512) != 0 ? C.is_anchor_rank : false, (r87 & 1024) != 0 ? C.is_family : false, (r87 & 2048) != 0 ? C.is_deposit_chip : false, (r87 & 4096) != 0 ? C.is_withdraw_chip : false, (r87 & 8192) != 0 ? C.is_legend : false, (r87 & 16384) != 0 ? C.is_legend_withdraw : false, (r87 & 32768) != 0 ? C.is_join_peerage : false, (r87 & 65536) != 0 ? C.isAdmin : 0, (r87 & 131072) != 0 ? C.interactionReady : 0, (r87 & 262144) != 0 ? C.showLevel : 0, (r87 & 524288) != 0 ? C.showFamilyLevel : a10 ? 1 : 0, (r87 & 1048576) != 0 ? C.showPeerage : 0, (r87 & 2097152) != 0 ? C.showJapanese : 0, (r87 & 4194304) != 0 ? C.realtimeTranslationEnable : null, (r87 & 8388608) != 0 ? C.realtimeTranslationType : null, (r87 & 16777216) != 0 ? C.realtimeSubtitlesOn : 0, (r87 & 33554432) != 0 ? C.menus : null, (r87 & 67108864) != 0 ? C.username : null, (r87 & 134217728) != 0 ? C.iswithdraw_promotion : null, (r87 & 268435456) != 0 ? C.settings : null);
                    break;
                }
                break;
            case -690490275:
                if (b10.equals("peerage")) {
                    C = C.copy((r86 & 1) != 0 ? C.id : null, (r86 & 2) != 0 ? C.sex : 0, (r86 & 4) != 0 ? C.intro : null, (r86 & 8) != 0 ? C.nickname : null, (r86 & 16) != 0 ? C.city : null, (r86 & 32) != 0 ? C.avatartime : null, (r86 & 64) != 0 ? C.birthday : null, (r86 & 128) != 0 ? C.professional : null, (r86 & 256) != 0 ? C.emotion : null, (r86 & 512) != 0 ? C.province : null, (r86 & 1024) != 0 ? C.peerage_id : 0, (r86 & 2048) != 0 ? C.avatar : null, (r86 & 4096) != 0 ? C.snap : null, (r86 & 8192) != 0 ? C.follow_users : null, (r86 & 16384) != 0 ? C.followers_cnt : null, (r86 & 32768) != 0 ? C.followees_cnt : null, (r86 & 65536) != 0 ? C.emceelevel : null, (r86 & 131072) != 0 ? C.familyLevel : null, (r86 & 262144) != 0 ? C.age : 0, (r86 & 524288) != 0 ? C.beanorignal : 0, (r86 & 1048576) != 0 ? C.spendcoin : 0, (r86 & 2097152) != 0 ? C.broadcasting : null, (r86 & 4194304) != 0 ? C.curroomnum : null, (r86 & 8388608) != 0 ? C.toy_enabled : null, (r86 & 16777216) != 0 ? C.toy_status : null, (r86 & 33554432) != 0 ? C.approveid : null, (r86 & 67108864) != 0 ? C.approvetype : 0, (r86 & 134217728) != 0 ? C.is_attention : 0, (r86 & 268435456) != 0 ? C.isHit : 0, (r86 & 536870912) != 0 ? C.name_card : null, (r86 & 1073741824) != 0 ? C.lob_no : 0, (r86 & Integer.MIN_VALUE) != 0 ? C.mysteryId : null, (r87 & 1) != 0 ? C.isMystery : 0, (r87 & 2) != 0 ? C.isGuest : false, (r87 & 4) != 0 ? C.isanchor : false, (r87 & 8) != 0 ? C.iswithdraw : false, (r87 & 16) != 0 ? C.is_lounge_vip : false, (r87 & 32) != 0 ? C.is_subscribe_notify : 0, (r87 & 64) != 0 ? C.is_single_conversation : 0, (r87 & 128) != 0 ? C.is_group_conversation : 0, (r87 & 256) != 0 ? C.is_im : 0, (r87 & 512) != 0 ? C.is_anchor_rank : false, (r87 & 1024) != 0 ? C.is_family : false, (r87 & 2048) != 0 ? C.is_deposit_chip : false, (r87 & 4096) != 0 ? C.is_withdraw_chip : false, (r87 & 8192) != 0 ? C.is_legend : false, (r87 & 16384) != 0 ? C.is_legend_withdraw : false, (r87 & 32768) != 0 ? C.is_join_peerage : false, (r87 & 65536) != 0 ? C.isAdmin : 0, (r87 & 131072) != 0 ? C.interactionReady : 0, (r87 & 262144) != 0 ? C.showLevel : 0, (r87 & 524288) != 0 ? C.showFamilyLevel : 0, (r87 & 1048576) != 0 ? C.showPeerage : a10 ? 1 : 0, (r87 & 2097152) != 0 ? C.showJapanese : 0, (r87 & 4194304) != 0 ? C.realtimeTranslationEnable : null, (r87 & 8388608) != 0 ? C.realtimeTranslationType : null, (r87 & 16777216) != 0 ? C.realtimeSubtitlesOn : 0, (r87 & 33554432) != 0 ? C.menus : null, (r87 & 67108864) != 0 ? C.username : null, (r87 & 134217728) != 0 ? C.iswithdraw_promotion : null, (r87 & 268435456) != 0 ? C.settings : null);
                    break;
                }
                break;
            case 102865796:
                if (b10.equals("level")) {
                    C = C.copy((r86 & 1) != 0 ? C.id : null, (r86 & 2) != 0 ? C.sex : 0, (r86 & 4) != 0 ? C.intro : null, (r86 & 8) != 0 ? C.nickname : null, (r86 & 16) != 0 ? C.city : null, (r86 & 32) != 0 ? C.avatartime : null, (r86 & 64) != 0 ? C.birthday : null, (r86 & 128) != 0 ? C.professional : null, (r86 & 256) != 0 ? C.emotion : null, (r86 & 512) != 0 ? C.province : null, (r86 & 1024) != 0 ? C.peerage_id : 0, (r86 & 2048) != 0 ? C.avatar : null, (r86 & 4096) != 0 ? C.snap : null, (r86 & 8192) != 0 ? C.follow_users : null, (r86 & 16384) != 0 ? C.followers_cnt : null, (r86 & 32768) != 0 ? C.followees_cnt : null, (r86 & 65536) != 0 ? C.emceelevel : null, (r86 & 131072) != 0 ? C.familyLevel : null, (r86 & 262144) != 0 ? C.age : 0, (r86 & 524288) != 0 ? C.beanorignal : 0, (r86 & 1048576) != 0 ? C.spendcoin : 0, (r86 & 2097152) != 0 ? C.broadcasting : null, (r86 & 4194304) != 0 ? C.curroomnum : null, (r86 & 8388608) != 0 ? C.toy_enabled : null, (r86 & 16777216) != 0 ? C.toy_status : null, (r86 & 33554432) != 0 ? C.approveid : null, (r86 & 67108864) != 0 ? C.approvetype : 0, (r86 & 134217728) != 0 ? C.is_attention : 0, (r86 & 268435456) != 0 ? C.isHit : 0, (r86 & 536870912) != 0 ? C.name_card : null, (r86 & 1073741824) != 0 ? C.lob_no : 0, (r86 & Integer.MIN_VALUE) != 0 ? C.mysteryId : null, (r87 & 1) != 0 ? C.isMystery : 0, (r87 & 2) != 0 ? C.isGuest : false, (r87 & 4) != 0 ? C.isanchor : false, (r87 & 8) != 0 ? C.iswithdraw : false, (r87 & 16) != 0 ? C.is_lounge_vip : false, (r87 & 32) != 0 ? C.is_subscribe_notify : 0, (r87 & 64) != 0 ? C.is_single_conversation : 0, (r87 & 128) != 0 ? C.is_group_conversation : 0, (r87 & 256) != 0 ? C.is_im : 0, (r87 & 512) != 0 ? C.is_anchor_rank : false, (r87 & 1024) != 0 ? C.is_family : false, (r87 & 2048) != 0 ? C.is_deposit_chip : false, (r87 & 4096) != 0 ? C.is_withdraw_chip : false, (r87 & 8192) != 0 ? C.is_legend : false, (r87 & 16384) != 0 ? C.is_legend_withdraw : false, (r87 & 32768) != 0 ? C.is_join_peerage : false, (r87 & 65536) != 0 ? C.isAdmin : 0, (r87 & 131072) != 0 ? C.interactionReady : 0, (r87 & 262144) != 0 ? C.showLevel : a10 ? 1 : 0, (r87 & 524288) != 0 ? C.showFamilyLevel : 0, (r87 & 1048576) != 0 ? C.showPeerage : 0, (r87 & 2097152) != 0 ? C.showJapanese : 0, (r87 & 4194304) != 0 ? C.realtimeTranslationEnable : null, (r87 & 8388608) != 0 ? C.realtimeTranslationType : null, (r87 & 16777216) != 0 ? C.realtimeSubtitlesOn : 0, (r87 & 33554432) != 0 ? C.menus : null, (r87 & 67108864) != 0 ? C.username : null, (r87 & 134217728) != 0 ? C.iswithdraw_promotion : null, (r87 & 268435456) != 0 ? C.settings : null);
                    break;
                }
                break;
        }
        aVar.T(C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ String g(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (String) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public io.reactivex.z<String> a(@m8.g final a params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> g4 = com.qennnsad.aknkaksd.data.repository.m.g(this.f48428b, false, 1, null).g(params.b(), params.a());
        final com.qennnsad.aknkaksd.domain.base.d<String> dVar = this.f48429c;
        io.reactivex.z<String> doOnNext = g4.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.user.j1
            @Override // n7.o
            public final Object apply(Object obj) {
                String g10;
                g10 = k1.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g10;
            }
        }).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.user.i1
            @Override // n7.g
            public final void accept(Object obj) {
                k1.f(k1.this, params, (String) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "sourceFactory.create().u…\n            })\n        }");
        return doOnNext;
    }
}
