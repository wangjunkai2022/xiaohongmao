package com.qennnsad.aknkaksd.data.repository;

import androidx.annotation.Nullable;
import io.reactivex.z;
import okhttp3.MultipartBody;
import okhttp3.ResponseBody;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.Url;

/* loaded from: classes3.dex */
public interface RetrofitApi {

    /* renamed from: a  reason: collision with root package name */
    public static final String f47692a = "api";

    /* renamed from: b  reason: collision with root package name */
    public static final String f47693b = "v1/";

    /* renamed from: c  reason: collision with root package name */
    public static final String f47694c = "v2/";

    /* renamed from: d  reason: collision with root package name */
    public static final String f47695d = "https://raw.githubusercontent.com/";

    /* renamed from: e  reason: collision with root package name */
    public static final String f47696e = "github";

    @FormUrlEncoded
    @Headers({"Domain-Name: api"})
    @POST("v1/payment/zhiFuBaoOfTongLe")
    z<Response<String>> alipay(@Field("user_id") String str, @Field("money") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/rank/anchorRankLastWeek")
    z<Response<String>> anchorRankLastWeek(@Query("page_index") int i4, @Nullable @Query("lob") Integer num);

    @Headers({"Domain-Name: api"})
    @GET("v1/rank/anchorRankThisWeek")
    z<Response<String>> anchorRankThisWeek(@Query("page_index") int i4, @Nullable @Query("lob") Integer num);

    @Headers({"Domain-Name: api"})
    @GET("v1/rank/anchorRankToday")
    z<Response<String>> anchorRankToday(@Query("page_index") int i4, @Nullable @Query("lob") Integer num);

    @Headers({"Domain-Name: api"})
    @GET("v1/rank/anchorRankYesterday")
    z<Response<String>> anchorRankYesterday(@Query("page_index") int i4, @Nullable @Query("lob") Integer num);

    @Headers({"Domain-Name: api"})
    @GET("v1/gift/gameWinFly")
    z<Void> bigWinSendMessage(@Query("win_money") String str, @Query("game_id") String str2);

    @Headers({"Domain-Name: api"})
    @POST("v1/box/report")
    z<Response<String>> boxReport(@Query("drawer_id") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/box/report")
    z<Response<String>> boxReport(@Query("drawer_id") String str, @Query("live_id") String str2, @Query("pull_url") String str3);

    @Headers({"Domain-Name: api"})
    @GET("v1/message/sendMsg")
    z<Response<String>> chat(@Query("to_uid") String str, @Query("content") String str2);

    @Headers({"Domain-Name: api"})
    @POST("v1/private/checkUserPoint")
    z<Response<String>> checkUserPoint(@Query("plid") int i4, @Query("aid") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/private/checkVideoMoney")
    z<Response<String>> checkVideoMoney(@Query("plid") int i4, @Query("aid") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/private/checkVideoPoint")
    z<Response<String>> checkVideoPoint(@Query("plid") int i4, @Query("aid") String str);

    @FormUrlEncoded
    @Headers({"Domain-Name: api"})
    @POST("v1/pinmessage/complaint")
    z<Response<String>> complainPinnedMessage(@Field("id") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/Qiniu/createRoom")
    z<Response<String>> createConferenceRoom(@Query("roomId") String str, @Query("roomName") String str2);

    @Headers({"Domain-Name: api"})
    @GET("v1/room/createRoom")
    z<Response<String>> createRoom(@Query("title") String str, @Query("roomid") String str2, @Query("address") String str3, @Query("province") String str4, @Query("orientation") char c10, @Query("prerequisite") String str5, @Query("ptid") int i4, @Query("gameType") int i10, @Query("capture") int i11, @Query("is_admin_send_namecard") int i12, @Query("name_card_cost") Integer num);

    @Headers({"Domain-Name: api"})
    @GET("v1/Qiniu/deleteRoom")
    z<Response<String>> deletConferenceRoom(@Query("roomName") String str);

    @GET
    z<ResponseBody> downloadFile(@Url String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/setProfessional")
    z<Response<String>> editJob(@Query("professional") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/edit")
    z<Response<String>> editProfile(@Query("profile") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/findmypassword")
    z<Response<String>> findmypassword(@Query("phone") String str, @Query("country_code") String str2, @Query("password") String str3, @Query("verify") String str4, @Query("algo") String str5);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/follow")
    z<Response<String>> followAnchor(@Query("uid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/follow")
    z<Response<String>> followUser(@Query("uid") String str, @Query("roomid") String str2);

    @Headers({"Domain-Name: api"})
    @GET("v1/rank/game_rank")
    z<Response<String>> gameRank(@Query("period") String str, @Query("page") int i4, @Query("size") int i10);

    @Headers({"Domain-Name: api"})
    @GET("v1/CDN/getPushAddress")
    z<Response<String>> generatePushStreaming(@Query("roomID") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/payment/aliPay")
    z<Response<String>> generateRechargeOrder(@Query("num") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/payment/appWeixin")
    z<Response<String>> generateRechargeWechat(@Query("num") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/order/getWithdrawInfoByAlipay")
    z<Response<String>> getALiInfo();

    @Headers({"Domain-Name: github"})
    @GET(com.qennnsad.aknkaksd.e.f48527s)
    z<ResponseBody> getAPI_GIT();

    @Headers({"Domain-Name: api"})
    @POST("v1/config/getLeafletConfig")
    z<Response<String>> getAdConfig();

    @Headers({"Domain-Name: api"})
    @POST("v1/room/getAdmin")
    z<Response<String>> getAdmin(@Query("uid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/getAnchorBean")
    z<Response<String>> getAnchoBean(@Query("user_id") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/hot")
    z<Response<String>> getAnchorHot(@Query("page") int i4, @Query("size") int i10);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/slide")
    z<Response<String>> getAnchorSlide(@Query("page") int i4, @Query("size") int i10);

    @Headers({"Domain-Name: api"})
    @POST("v1/config/getappconfig")
    z<Response<String>> getAppConfig();

    @Headers({"Domain-Name: api"})
    @GET("v1/gift/collection")
    z<Response<String>> getAvailableGifts(@Query("ver") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/order/getWithdrawInfoByBank")
    z<Response<String>> getBankInfo();

    @Headers({"Domain-Name: api"})
    @POST("v1/box/drawers")
    z<Response<String>> getBoxDrawers(@Query("page") int i4, @Query("size") int i10);

    @Headers({"Domain-Name: api"})
    @POST("v1/box/lives")
    z<Response<String>> getBoxLives(@Query("page") int i4, @Query("size") int i10, @Query("id") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/Interaction/list")
    z<Response<String>> getCompetitorsList();

    @Headers({"Domain-Name: api"})
    @GET("v1/user/contributeList")
    z<Response<String>> getContributeRankList(@Query("user_id") String str, @Query("page") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v2/topup/dialog")
    z<Response<String>> getCurrentAgentChat();

    @Headers({"Domain-Name: api"})
    @GET("v1/APIgame/getGameType")
    z<Response<String>> getCurrentRoomGameType(@Query("roomid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v2/topup/agent")
    z<Response<String>> getDepositAgent();

    @Headers({"Domain-Name: api"})
    @GET("v2/topup/options")
    z<Response<String>> getDepositOptions();

    @Headers({"Domain-Name: api"})
    @GET("v1/user/updateEmotion")
    z<Response<String>> getEmotion(@Query("emotion") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/fanClub/fanInfo")
    z<Response<String>> getFanClubInfo();

    @Headers({"Domain-Name: api"})
    @GET("v1/friend/getfriend")
    z<Response<String>> getFriendList();

    @Headers({"Domain-Name: api"})
    @GET("v1/points/get_points_count")
    z<Response<String>> getGameCenterPoints();

    @Headers({"Domain-Name: api"})
    @GET("v1/points/get_url")
    z<Response<String>> getGameCenterUrl();

    @Headers({"Domain-Name: api"})
    @GET("v1/APIgame/giveGift")
    z<Response<String>> getGameGift();

    @Headers({"Domain-Name: api"})
    @GET("v1/legend/getGameHall")
    z<Response<String>> getGameHall(@Query("gameid") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/contact_link")
    z<Response<String>> getHelpUrl();

    @Headers({"Domain-Name: api"})
    @POST("v2/im/login")
    z<Response<String>> getImToken();

    @Headers({"Domain-Name: api"})
    @GET("v1/user/income")
    z<Response<String>> getIncomeBean();

    @GET("{apiHost}config/launchAd")
    z<Response<String>> getLaunchAd(@Path(encoded = true, value = "apiHost") String str, @Query("app_id") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/config/getliteversion")
    z<Response<String>> getLiteVersion();

    @Headers({"Domain-Name: api"})
    @GET("v1/room/entryOfflineroom")
    z<Response<String>> getLiveRoomInfo(@Query("roomnum") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/get_login_captcha")
    z<Response<String>> getLoginCaptcha();

    @Headers({"Domain-Name: api"})
    @GET("v1/user/personal")
    z<Response<String>> getMyInfo();

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/nearby")
    z<Response<String>> getNearbyList(@Query("sex") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/order/getWithdrawChannels")
    z<Response<String>> getPayWAY();

    @Headers({"Domain-Name: api"})
    @GET("v1/peerage/items")
    z<Response<String>> getPeeragePrices();

    @Headers({"Domain-Name: api"})
    @GET("v1/pinmessage/history")
    z<Response<String>> getPinnedMessagesHistory(@Query("aid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/room/getRoomBack")
    z<Response<String>> getPlayBack(@Query("roomid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/Qiniu/getPlayback")
    z<Response<String>> getPlayBackListUrl(@Query("roomID") String str, @Query("startTime") String str2, @Query("endTime") String str3);

    @Headers({"Domain-Name: api"})
    @GET("v1/qiniu/getPullAddress")
    z<Response<String>> getPlaybackUrl(@Query("roomID") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/cashhistory")
    z<Response<String>> getPresentRecord();

    @Headers({"Domain-Name: api"})
    @GET("v1/CDN/getPullAddress")
    z<Response<String>> getPullAddress(@Query("roomID") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/config/getpusherversion")
    z<Response<String>> getPusherVersion();

    @Headers({"Domain-Name: api"})
    @GET("v1/user/getchargeoption")
    z<Response<String>> getRechargeInfo(@Query("type") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/Qiniu/roomToken")
    z<Response<String>> getRoomToken(@Query("roomName") String str, @Query("userId") String str2, @Query("perm") String str3, @Query("expireAt") Long l10);

    @Headers({"Domain-Name: api"})
    @POST("v1/room/seatRank")
    z<Response<String>> getSeatRank(@Query("room_id") String str, @Query("page") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/getconfig")
    z<Response<String>> getShareData(@Query("uid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/APIgame/sign_reward")
    z<Response<String>> getSignInStar(@Query("uid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/APIgame/sign")
    z<Response<String>> getSignInfoFromServer(@Query("uid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/APIgame/getCoin")
    z<Response<String>> getStarAndLeftTimes(@Query("uid") String str, @Query("nickname") String str2);

    @Headers({"Domain-Name: api"})
    @GET("v1/APIgame/getCoinTime")
    z<Response<String>> getStarProgressTime(@Query("uid") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/topic/getTopic")
    z<Response<String>> getThemBean();

    @Headers({"Domain-Name: api"})
    @POST("v1/topic/getTopic")
    z<Response<String>> getThemBean(@Query("title") String str, @Query("count") String str2);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/followers")
    z<Response<String>> getUserFans(@Query("uid") String str, @Query("page") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/profile")
    z<Response<String>> getUserInfo(@Query("uid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/money")
    z<Response<String>> getUserMoney();

    @Headers({"Domain-Name: api"})
    @GET("v1/user/followees")
    z<Response<String>> getUserStars(@Query("uid") String str, @Query("page") int i4);

    @Headers({"Domain-Name: api"})
    @POST("v2/guest/register")
    z<Response<String>> guestLink(@Body String str);

    @Headers({"Domain-Name: api"})
    @POST("v2/guest/login")
    z<Response<String>> guestLogin();

    @Headers({"Domain-Name: api"})
    @GET("v1/user/getHitlist")
    z<Response<String>> hitList();

    @FormUrlEncoded
    @Headers({"Domain-Name: api"})
    @POST("v2/topup/interrupt")
    z<Response<String>> interruptDeposit(@Field("agent_id") int i4);

    @Headers({"Domain-Name: api"})
    @POST("v1/imsg/is_create_conversation")
    z<Response<String>> is_create_conversation(@Query("user_id") int i4);

    @Headers({"Domain-Name: api"})
    @POST("v1/imsg/is_add_friend")
    z<Response<String>> isaddfriend(@Query("user_id") String str);

    @FormUrlEncoded
    @Headers({"Domain-Name: api"})
    @POST("v1/fanClub/participate")
    z<Response<String>> joinFanClub(@Field("uid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/box")
    z<Response<String>> loadBoxAnchors(@Query("page") int i4, @Query("size") int i10);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/city")
    z<Response<String>> loadCityAnchors(@Query("city") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/onlineFriends")
    z<Response<String>> loadFollowedLives(@Query("page") int i4, @Query("isPk") int i10);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/hot")
    z<Response<String>> loadHotAnchors(@Query("page") int i4, @Query("size") int i10, @Query("order") String str, @Query("isPk") int i11);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/latest")
    z<Response<String>> loadLatestAnchors(@Query("page") int i4, @Query("size") int i10, @Query("order") String str, @Query("isPk") int i11);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/nearby")
    z<Response<String>> loadNerabyAnchors(@Query("page") int i4, @Query("size") int i10, @Query("order") String str, @Query("isPk") int i11);

    @Headers({"Domain-Name: api"})
    @POST("v1/private/checkPrivateLevel")
    z<Response<String>> loadPrivateLevel(@Query("plid") int i4, @Query("aid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/private/getPrivateLimit")
    z<Response<String>> loadPrivateLimit(@Query("uid") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/private/checkUserMoney")
    z<Response<String>> loadPrivateMoney(@Query("plid") int i4, @Query("aid") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/private/checkPrivatePass")
    z<Response<String>> loadPrivatePwd(@Query("plid") int i4, @Query("prerequisite") String str, @Query("aid") String str2);

    @Headers({"Domain-Name: api"})
    @GET("v1/private/checkPrivateCharge")
    z<Response<String>> loadPrivateTicket(@Query("plid") int i4, @Query("aid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/recommend")
    z<Response<String>> loadRecommendAnchors(@Query("order") String str, @Query("isPk") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/lounge")
    z<Response<String>> loadSponsorAnchors(@Query("page") int i4, @Query("size") int i10);

    @Headers({"Domain-Name: api"})
    @GET("v1/topic/getTopicUser")
    z<Response<String>> loadTopicLives(@Query("topicId") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/vegan")
    z<Response<String>> loadVeganAnchors(@Query("page") int i4, @Query("size") int i10, @Query("order") String str, @Query("isPk") int i11);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/vip")
    z<Response<String>> loadVipAnchors(@Query("page") int i4, @Query("size") int i10, @Query("order") String str, @Query("isPk") int i11);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/login")
    z<Response<String>> login(@Body String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/logout")
    z<Response<String>> logout();

    @Headers({"Domain-Name: api"})
    @POST("v1/user/updatePassword")
    z<Response<String>> modifyPassword(@Query("old_password") String str, @Query("new_password") String str2);

    @Headers({"Domain-Name: api"})
    @GET("v1/room/onRoomOrientationChange")
    z<Response<String>> onRoomOrientationChange(@Query("roomId") String str, @Query("orientation") String str2);

    @FormUrlEncoded
    @Headers({"Domain-Name: api"})
    @POST("v1/pinmessage/send")
    z<Response<String>> pinMessage(@Field("aid") int i4, @Field("roomid") int i10, @Field("type") int i11, @Field("content") String str);

    @GET("{apiHost}index/ping")
    z<Response<String>> ping(@Path(encoded = true, value = "apiHost") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/interaction/rating")
    z<Response<String>> pkRank(@Query("timeStart") long j4, @Query("timeEnd") long j10, @Query("page") int i4);

    @Headers({"Domain-Name: api"})
    @POST("v1/order/belowline")
    z<Response<String>> postInfo(@Query("uid") String str, @Query("cash") int i4, @Query("type") int i10, @Query("channelid") String str2, @Query("checkname") String str3, @Query("phone") String str4);

    @Headers({"Domain-Name: api"})
    @POST("v1/order/belowline")
    z<Response<String>> postInfo(@Query("uid") String str, @Query("cash") int i4, @Query("type") int i10, @Query("channelid") String str2, @Query("checkname") String str3, @Query("wechat") String str4, @Query("qq") String str5);

    @Headers({"Domain-Name: api"})
    @POST("v1/order/withdrawByBank")
    z<Response<String>> postbank(@Query("uid") String str, @Query("cash") int i4, @Query("acctname") String str2, @Query("acctno") String str3, @Query("bankaddr") String str4, @Query("wechat") String str5, @Query("qq") String str6);

    @Headers({"Domain-Name: api"})
    @POST("v1/private/previewPrivateRoom")
    z<Response<String>> previewPrivateRoom(@Query("plid") int i4, @Query("aid") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/private/privateRecovery")
    z<Response<String>> publishRecoveryPrivate(@Query("plid") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/anchor/search")
    z<Response<String>> queryAnchors(@Query("query") String str, @Query("page") int i4);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/register")
    z<Response<String>> registerByPhone_tiger(@Header("X-Content-Puzzle") String str, @Body String str2);

    @Headers({"Domain-Name: api"})
    @POST("v1/room/delAdmin")
    z<Response<String>> removeAdmin(@Query("uid") String str, @Query("adminuid") String str2);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/removeHit")
    z<Response<String>> removeHit(@Query("hituid") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/location")
    z<Response<String>> reportLocation(@Query("lat") String str, @Query("lng") String str2);

    @Headers({"Domain-Name: api"})
    @POST("v2/error/login22")
    z<Response<String>> requestError();

    @Headers({"Domain-Name: api"})
    @POST("v1/room/warn")
    z<Response<String>> roomWarn(@Query("anchor_id") String str, @Query("room_id") String str2, @Query("duration") String str3, @Query("note") String str4);

    @Headers({"Domain-Name: api"})
    @POST("v1/Qiniu/sendMessage")
    z<Response<String>> sendConferenceMsg(@Query("userId") String str, @Query("msg") String str2);

    @Headers({"Domain-Name: api"})
    @POST("v1/gift/sendBarrage")
    z<Response<String>> sendDanmuMsg(@Query("roomid") String str, @Query("content") String str2);

    @Headers({"Domain-Name: api"})
    @POST("v1/gift/send")
    z<Response<String>> sendGift(@Query("to_uid") String str, @Query("gift_id") String str2, @Query("count") int i4);

    @Headers({"Domain-Name: api"})
    @POST("v1/gift/sendredgift")
    z<Response<String>> sendHongBaoGift(@Query("to_uid") String str, @Query("gift_id") String str2);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/interactionReady")
    z<Response<String>> sendInteractionReady(@Query("is_ready") int i4);

    @Headers({"Domain-Name: api"})
    @POST("v1/room/sendNameCard")
    z<Response<String>> sendNameCard(@Query("to_uid") String str, @Query("room_id") String str2);

    @Headers({"Domain-Name: api"})
    @GET("v1/SMS/sendSMS")
    z<Response<String>> sendSms(@Query("phone") String str, @Query("country_code") String str2, @Query("type") String str3, @Query("recaptcha") String str4, @Query("hCaptcha") String str5, @Query("captcha") String str6, @Query("captcha_id") String str7, @Query("algo") String str8);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/setBirthday")
    z<Response<String>> setBirthday(@Query("birthday") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/updateCity")
    z<Response<String>> setCity(@Query("city") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/gift/changeGame")
    z<Response<String>> setCurrentGame(@Query("game_id") String str, @Query("roomid") String str2);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/setHit")
    z<Response<String>> setHit(@Query("hituid") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/anchor/live")
    z<Response<String>> setLiveStatus(@Query("status") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/auth/login")
    z<Response<String>> thirdLogin(@Query("openid") String str, @Query("type") String str2, @Query("payload") String str3);

    @GET("{apiHost}/la/translate")
    z<Response<String>> translate(@Path(encoded = true, value = "apiHost") String str, @Nullable @Query("from") String str2, @Query("text") String str3, @Query("to") String str4);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/unfollow")
    z<Response<String>> unfollowAnchor(@Query("uid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/unfollow")
    z<Response<String>> unfollowUser(@Query("uid") String str, @Query("roomid") String str2);

    @Headers({"Domain-Name: api"})
    @POST("v1/Logger/sos")
    z<Response<String>> upLoadLog(@Query("msg") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/qiniu/getPullAddress")
    z<Response<String>> upLoadMyAddress(@Query("roomID") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/setRecommenUser")
    z<Response<String>> upLoadMyRecommen(@Query("uid") String str);

    @Headers({"Domain-Name: api"})
    @GET("v1/config/getAppVersion")
    z<Response<String>> upNewAppVersion(@Query("system") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/updateBirthday")
    z<Response<String>> updateBirthday(@Query("birthday") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/updateIntro")
    z<Response<String>> updateIntro(@Query("intro") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/updateNameCard")
    z<Response<String>> updateNameCard(@Query("content") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/updateNickName")
    z<Response<String>> updateNickName(@Query("nickname") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/updateSex")
    z<Response<String>> updateSex(@Query("sex") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/updateSubscribeNotify")
    z<Response<String>> updateSubscribeNotify(@Query("subscribe_notify") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/Room/updateToyStatus")
    z<Response<String>> updateToyStatus(@Query("model") String str, @Query("status") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/user/user_setup")
    z<Response<String>> updateUserSetup(@Query("type") String str, @Query("action") String str2);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/uploadAvatar")
    @Multipart
    z<Response<String>> uploadAvatar(@Part MultipartBody.Part part);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/uploadRoompic")
    @Multipart
    z<Response<String>> uploadRoompic(@Part MultipartBody.Part part);

    @Headers({"Domain-Name: api"})
    @POST("v1/room/report")
    z<Response<String>> userReport(@Query("user_id") String str);

    @Headers({"Domain-Name: api"})
    @POST("v1/room/report")
    z<Response<String>> userReport(@Query("user_id") String str, @Query("evidence") String str2);

    @Headers({"Domain-Name: api"})
    @GET("v1/rank/viewerRankLastWeek")
    z<Response<String>> viewerRankLastWeek(@Query("page_index") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/rank/viewerRankThisWeek")
    z<Response<String>> viewerRankThisWeek(@Query("page_index") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/rank/viewerRankToday")
    z<Response<String>> viewerRankToday(@Query("page_index") int i4);

    @Headers({"Domain-Name: api"})
    @GET("v1/rank/viewerRankYesterday")
    z<Response<String>> viewerRankYesterday(@Query("page_index") int i4);

    @FormUrlEncoded
    @Headers({"Domain-Name: api"})
    @POST("v1/payment/weiXinImageOfTongLe")
    z<Response<String>> weChatPay(@Field("uid") String str, @Field("money") int i4);

    @Headers({"Domain-Name: api"})
    @POST("v1/user/incometocash")
    z<Response<String>> withDraw(@Query("num") String str, @Query("account") String str2);
}
