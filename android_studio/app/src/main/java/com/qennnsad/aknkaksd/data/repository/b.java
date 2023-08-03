package com.qennnsad.aknkaksd.data.repository;

import androidx.annotation.Nullable;
import com.qennnsad.aknkaksd.data.bean.ThirdLoginPlatform;
import io.reactivex.z;
import okhttp3.ResponseBody;
import retrofit2.Response;

/* compiled from: ISource.java */
/* loaded from: classes3.dex */
public interface b {
    z<Response<String>> A(String str, String str2);

    z<Response<String>> B(com.qennnsad.aknkaksd.presentation.module.rank.h hVar, int i4);

    z<Response<String>> C(int i4, int i10, String str, boolean z9);

    z<Response<String>> D(String str, String str2, String str3, long j4);

    z<Response<String>> E(String str, String str2, String str3, String str4, String str5, int i4, int i10, int i11, Integer num);

    z<Response<String>> F();

    z<Response<String>> G(String str);

    z<Response<String>> H(String str);

    z<Response<String>> I(String str, String str2, String str3);

    z<Response<String>> J(String str, String str2, String str3, h5.a aVar, String str4);

    z<Response<String>> K();

    z<Response<String>> L(String str, boolean z9);

    z<Response<String>> M(String str, String str2);

    z<Response<String>> N(String str, String str2, String str3);

    z<Response<String>> O(int i4, int i10, String str, boolean z9);

    z<Response<String>> P(String str);

    z<Response<String>> Q(String str, String str2, int i4);

    z<Response<String>> R(String str, String str2);

    z<Response<String>> S(boolean z9);

    z<Response<String>> T(int i4, int i10, String str, boolean z9);

    z<Response<String>> U(String str, String str2, int i4, int i10, String str3, String str4, String str5);

    z<Response<String>> V(String str, String str2);

    z<Response<String>> W();

    z<Response<String>> X(String str, String str2);

    z<Response<String>> Y();

    z<Response<String>> Z(String str, String str2, int i4, int i10, String str3, String str4, String str5, String str6);

    z<Response<String>> a(String str, String str2, String str3);

    z<Response<String>> a0(int i4, int i10, String str, boolean z9);

    z<Response<String>> b(String str, String str2);

    z<Response<String>> b0(boolean z9);

    z<Response<String>> boxReport(String str, String str2, String str3);

    z<Response<String>> c();

    z<Response<String>> c0(String str);

    z<Response<String>> complainPinnedMessage(String str);

    z<Response<String>> createConferenceRoom(String str, String str2);

    z<Response<String>> d(int i4, boolean z9);

    z<Response<String>> deletConferenceRoom(String str);

    z<ResponseBody> downloadFile(String str);

    z<Response<String>> e(int i4, int i10, String str, String str2, String str3);

    z<Response<String>> editProfile(String str);

    z<Response<String>> f(int i4, int i10, boolean z9);

    z<Response<String>> findmypassword(String str, String str2, String str3, String str4, String str5);

    z<Response<String>> followAnchor(String str);

    z<Response<String>> followUser(String str, String str2);

    z<Response<String>> g(String str, boolean z9);

    z<Response<String>> generatePushStreaming(String str);

    z<Response<String>> generateRechargeOrder(String str);

    z<Response<String>> generateRechargeWechat(String str);

    z<Response<String>> getALiInfo();

    z<Response<String>> getAdConfig();

    z<Response<String>> getAdmin(String str);

    z<Response<String>> getAnchoBean(String str);

    z<Response<String>> getAnchorSlide(int i4, int i10);

    z<Response<String>> getAppConfig();

    z<Response<String>> getBoxDrawers(int i4, int i10);

    z<Response<String>> getBoxLives(int i4, int i10, String str);

    z<Response<String>> getCompetitorsList();

    z<Response<String>> getContributeRankList(String str, int i4);

    z<Response<String>> getCurrentAgentChat();

    z<Response<String>> getDepositAgent();

    z<Response<String>> getDepositOptions();

    z<Response<String>> getEmotion(int i4);

    z<Response<String>> getFanClubInfo();

    z<Response<String>> getFriendList();

    z<Response<String>> getGameCenterPoints();

    z<Response<String>> getGameCenterUrl();

    z<Response<String>> getGameHall(int i4);

    z<Response<String>> getHelpUrl();

    z<Response<String>> getImToken();

    z<Response<String>> getIncomeBean();

    z<Response<String>> getLiveRoomInfo(String str);

    z<Response<String>> getLoginCaptcha();

    z<Response<String>> getMyInfo();

    z<Response<String>> getPeeragePrices();

    z<Response<String>> getPinnedMessagesHistory(String str);

    z<Response<String>> getPlayBack(String str);

    z<Response<String>> getPlayBackListUrl(String str, String str2, String str3);

    z<Response<String>> getPlaybackUrl(String str);

    z<Response<String>> getPresentRecord();

    z<Response<String>> getPullAddress(String str);

    z<Response<String>> getSeatRank(String str, int i4);

    z<Response<String>> getShareData(String str);

    z<Response<String>> getThemBean();

    z<Response<String>> getThemBean(String str, String str2);

    z<Response<String>> getUserFans(String str, int i4);

    z<Response<String>> getUserInfo(String str);

    z<Response<String>> getUserMoney();

    z<Response<String>> getUserStars(String str, int i4);

    z<Response<String>> h(@Nullable String str, String str2, String str3);

    z<Response<String>> i(String str, String str2);

    z<Response<String>> interruptDeposit(int i4);

    z<Response<String>> is_create_conversation(int i4);

    z<Response<String>> isaddfriend(String str);

    z<Response<String>> j(String str);

    z<Response<String>> joinFanClub(String str);

    z<Response<String>> k(String str, String str2, int i4);

    z<Response<String>> l(String str, String str2, String str3);

    z<Response<String>> loadPrivateLimit(String str);

    z<Response<String>> loadTopicLives(int i4);

    z<Response<String>> login(String str);

    z<Response<String>> logout();

    z<Response<String>> m(int i4, int i10, String str, String str2, String str3);

    z<Response<String>> modifyPassword(String str, String str2);

    z<Response<String>> n();

    z<Response<String>> o(int i4, int i10, String str, boolean z9);

    z<Response<String>> onRoomOrientationChange(String str, String str2);

    z<Response<String>> p(String str, String str2, int i4, String str3, String str4, String str5, String str6, String str7);

    z<Response<String>> pinMessage(int i4, int i10, int i11, String str);

    z<Response<String>> ping(String str);

    z<Response<String>> publishRecoveryPrivate(int i4);

    z<Response<String>> q(String str, String str2);

    z<Response<String>> queryAnchors(String str, int i4);

    z<Response<String>> r(String str, String str2);

    z<Response<String>> removeAdmin(String str, String str2);

    z<Response<String>> removeHit(String str);

    z<Response<String>> reportLocation(String str, String str2);

    z<Response<String>> roomWarn(String str, String str2, String str3, String str4);

    z<Response<String>> s(String str, int i4, String str2, String str3, String str4);

    z<Response<String>> sendConferenceMsg(String str, String str2);

    z<Response<String>> sendDanmuMsg(String str, String str2);

    z<Response<String>> sendGift(String str, String str2, int i4);

    z<Response<String>> sendNameCard(String str, String str2);

    z<Response<String>> setCity(String str);

    z<Response<String>> setHit(String str);

    z<Response<String>> t(String str, String str2);

    z<Response<String>> thirdLogin(String str, @ThirdLoginPlatform String str2, String str3);

    z<Response<String>> u(String str);

    z<Response<String>> unfollowAnchor(String str);

    z<Response<String>> unfollowUser(String str, String str2);

    z<Response<String>> upLoadLog(String str);

    z<Response<String>> upLoadMyAddress(String str);

    z<Response<String>> upLoadMyRecommen(String str);

    z<Response<String>> upNewAppVersion(String str);

    z<Response<String>> updateBirthday(String str);

    z<Response<String>> updateIntro(String str);

    z<Response<String>> updateNameCard(String str);

    z<Response<String>> updateNickName(String str);

    z<Response<String>> updateSex(String str);

    z<Response<String>> updateSubscribeNotify(int i4);

    z<Response<String>> userReport(String str);

    z<Response<String>> userReport(String str, String str2);

    z<Response<String>> v(String str, String str2, String str3);

    z<Response<String>> w(String str, String str2);

    z<Response<String>> withDraw(String str, String str2);

    z<Response<String>> x(int i4);

    z<Response<String>> y(String str, String str2);

    z<Void> z(String str, String str2, String str3);
}
