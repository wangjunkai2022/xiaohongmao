package com.qennnsad.aknkaksd.domain.usecase.user;

import com.qennnsad.aknkaksd.data.bean.EditAvatarBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: UploadAvatarUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/user/s1;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "", "Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;", "params", "Lio/reactivex/z;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class s1 extends com.qennnsad.aknkaksd.domain.base.h<String, EditAvatarBean> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f48474a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48475b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<EditAvatarBean> f48476c;

    @u7.a
    public s1(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f48474a = localDataManager;
        this.f48475b = sourceFactory;
        this.f48476c = new com.qennnsad.aknkaksd.domain.base.d<>(EditAvatarBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000f, code lost:
        r1 = r2.copy((r86 & 1) != 0 ? r2.id : null, (r86 & 2) != 0 ? r2.sex : 0, (r86 & 4) != 0 ? r2.intro : null, (r86 & 8) != 0 ? r2.nickname : null, (r86 & 16) != 0 ? r2.city : null, (r86 & 32) != 0 ? r2.avatartime : java.lang.String.valueOf(r68.getAvatartime()), (r86 & 64) != 0 ? r2.birthday : null, (r86 & 128) != 0 ? r2.professional : null, (r86 & 256) != 0 ? r2.emotion : null, (r86 & 512) != 0 ? r2.province : null, (r86 & 1024) != 0 ? r2.peerage_id : 0, (r86 & 2048) != 0 ? r2.avatar : null, (r86 & 4096) != 0 ? r2.snap : null, (r86 & 8192) != 0 ? r2.follow_users : null, (r86 & 16384) != 0 ? r2.followers_cnt : null, (r86 & 32768) != 0 ? r2.followees_cnt : null, (r86 & 65536) != 0 ? r2.emceelevel : null, (r86 & 131072) != 0 ? r2.familyLevel : null, (r86 & 262144) != 0 ? r2.age : 0, (r86 & 524288) != 0 ? r2.beanorignal : 0, (r86 & 1048576) != 0 ? r2.spendcoin : 0, (r86 & 2097152) != 0 ? r2.broadcasting : null, (r86 & 4194304) != 0 ? r2.curroomnum : null, (r86 & 8388608) != 0 ? r2.toy_enabled : null, (r86 & 16777216) != 0 ? r2.toy_status : null, (r86 & 33554432) != 0 ? r2.approveid : null, (r86 & 67108864) != 0 ? r2.approvetype : 0, (r86 & 134217728) != 0 ? r2.is_attention : 0, (r86 & 268435456) != 0 ? r2.isHit : 0, (r86 & 536870912) != 0 ? r2.name_card : null, (r86 & 1073741824) != 0 ? r2.lob_no : 0, (r86 & Integer.MIN_VALUE) != 0 ? r2.mysteryId : null, (r87 & 1) != 0 ? r2.isMystery : 0, (r87 & 2) != 0 ? r2.isGuest : false, (r87 & 4) != 0 ? r2.isanchor : false, (r87 & 8) != 0 ? r2.iswithdraw : false, (r87 & 16) != 0 ? r2.is_lounge_vip : false, (r87 & 32) != 0 ? r2.is_subscribe_notify : 0, (r87 & 64) != 0 ? r2.is_single_conversation : 0, (r87 & 128) != 0 ? r2.is_group_conversation : 0, (r87 & 256) != 0 ? r2.is_im : 0, (r87 & 512) != 0 ? r2.is_anchor_rank : false, (r87 & 1024) != 0 ? r2.is_family : false, (r87 & 2048) != 0 ? r2.is_deposit_chip : false, (r87 & 4096) != 0 ? r2.is_withdraw_chip : false, (r87 & 8192) != 0 ? r2.is_legend : false, (r87 & 16384) != 0 ? r2.is_legend_withdraw : false, (r87 & 32768) != 0 ? r2.is_join_peerage : false, (r87 & 65536) != 0 ? r2.isAdmin : 0, (r87 & 131072) != 0 ? r2.interactionReady : 0, (r87 & 262144) != 0 ? r2.showLevel : 0, (r87 & 524288) != 0 ? r2.showFamilyLevel : 0, (r87 & 1048576) != 0 ? r2.showPeerage : 0, (r87 & 2097152) != 0 ? r2.showJapanese : 0, (r87 & 4194304) != 0 ? r2.realtimeTranslationEnable : null, (r87 & 8388608) != 0 ? r2.realtimeTranslationType : null, (r87 & 16777216) != 0 ? r2.realtimeSubtitlesOn : 0, (r87 & 33554432) != 0 ? r2.menus : null, (r87 & 67108864) != 0 ? r2.username : null, (r87 & 134217728) != 0 ? r2.iswithdraw_promotion : null, (r87 & 268435456) != 0 ? r2.settings : null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void f(com.qennnsad.aknkaksd.domain.usecase.user.s1 r67, com.qennnsad.aknkaksd.data.bean.EditAvatarBean r68) {
        /*
            r0 = r67
            java.lang.String r1 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            g5.a r1 = r0.f48474a
            com.qennnsad.aknkaksd.data.bean.user.UserBean r2 = r1.C()
            if (r2 == 0) goto L96
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            int r1 = r68.getAvatartime()
            java.lang.String r8 = java.lang.String.valueOf(r1)
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            r20 = 0
            r21 = 0
            r22 = 0
            r23 = 0
            r24 = 0
            r25 = 0
            r26 = 0
            r27 = 0
            r28 = 0
            r29 = 0
            r30 = 0
            r31 = 0
            r32 = 0
            r33 = 0
            r34 = 0
            r35 = 0
            r36 = 0
            r37 = 0
            r38 = 0
            r39 = 0
            r40 = 0
            r41 = 0
            r42 = 0
            r43 = 0
            r44 = 0
            r45 = 0
            r46 = 0
            r47 = 0
            r48 = 0
            r49 = 0
            r50 = 0
            r51 = 0
            r52 = 0
            r53 = 0
            r54 = 0
            r55 = 0
            r56 = 0
            r57 = 0
            r58 = 0
            r59 = 0
            r60 = 0
            r61 = 0
            r62 = 0
            r63 = 0
            r64 = -33
            r65 = 536870911(0x1fffffff, float:1.0842021E-19)
            r66 = 0
            com.qennnsad.aknkaksd.data.bean.user.UserBean r1 = com.qennnsad.aknkaksd.data.bean.user.UserBean.copy$default(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r47, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66)
            if (r1 != 0) goto L91
            goto L96
        L91:
            g5.a r0 = r0.f48474a
            r0.T(r1)
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.domain.usecase.user.s1.f(com.qennnsad.aknkaksd.domain.usecase.user.s1, com.qennnsad.aknkaksd.data.bean.EditAvatarBean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ EditAvatarBean g(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (EditAvatarBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: e */
    public io.reactivex.z<EditAvatarBean> a(@m8.g String params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> P = com.qennnsad.aknkaksd.data.repository.m.g(this.f48475b, false, 1, null).P(params);
        final com.qennnsad.aknkaksd.domain.base.d<EditAvatarBean> dVar = this.f48476c;
        io.reactivex.z<EditAvatarBean> doOnNext = P.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.user.r1
            @Override // n7.o
            public final Object apply(Object obj) {
                EditAvatarBean g4;
                g4 = s1.g(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return g4;
            }
        }).doOnNext(new n7.g() { // from class: com.qennnsad.aknkaksd.domain.usecase.user.q1
            @Override // n7.g
            public final void accept(Object obj) {
                s1.f(s1.this, (EditAvatarBean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "sourceFactory.create().u…eUserInfo(user)\n        }");
        return doOnNext;
    }
}
