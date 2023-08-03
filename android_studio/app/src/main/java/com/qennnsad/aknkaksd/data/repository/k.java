package com.qennnsad.aknkaksd.data.repository;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.qennnsad.aknkaksd.data.bean.ConfigDnsBean;
import com.qennnsad.aknkaksd.data.bean.ThirdLoginPlatform;
import com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.t0;
import io.reactivex.z;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import kotlinx.coroutines.u0;
import me.jessyan.retrofiturlmanager.RetrofitUrlManager;
import okhttp3.CipherSuite;
import okhttp3.ConnectionSpec;
import okhttp3.Dns;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.TlsVersion;
import okhttp3.brotli.BrotliInterceptor;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

/* compiled from: RetrofitSource.java */
/* loaded from: classes3.dex */
public class k implements b {

    /* renamed from: e  reason: collision with root package name */
    private static final String f47750e = "RetrofitSource";

    /* renamed from: f  reason: collision with root package name */
    private static final int f47751f = 60;

    /* renamed from: g  reason: collision with root package name */
    private static final int f47752g = 60;

    /* renamed from: h  reason: collision with root package name */
    private static final int f47753h = 60;

    /* renamed from: i  reason: collision with root package name */
    private static final int f47754i = 60;

    /* renamed from: a  reason: collision with root package name */
    protected final RetrofitApi f47755a;

    /* renamed from: b  reason: collision with root package name */
    protected final AnyHostApi f47756b;

    /* renamed from: c  reason: collision with root package name */
    protected g5.a f47757c;

    /* renamed from: d  reason: collision with root package name */
    private String f47758d;

    public k(g5.a aVar, c5.b bVar, t0 t0Var, g5.d dVar, final boolean z9) {
        this.f47758d = "666666";
        this.f47757c = aVar;
        this.f47758d = dVar.a();
        h hVar = h.f47746a;
        OkHttpClient.Builder newBuilder = new OkHttpClient().newBuilder();
        newBuilder.addInterceptor(BrotliInterceptor.INSTANCE);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        newBuilder.addNetworkInterceptor(new Interceptor() { // from class: com.qennnsad.aknkaksd.data.repository.j
            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.Chain chain) {
                Response l02;
                l02 = k.this.l0(z9, chain);
                return l02;
            }
        }).connectTimeout(60, timeUnit).writeTimeout(60, timeUnit).readTimeout(60, timeUnit).hostnameVerifier(hVar).retryOnConnectionFailure(true);
        newBuilder.addInterceptor(bVar);
        Retrofit build = new Retrofit.Builder().addConverterFactory(com.qennnsad.aknkaksd.data.converter.c.a()).addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).baseUrl("https://api.placeholder.com/OpenAPI/").client(RetrofitUrlManager.getInstance().with(newBuilder).build()).build();
        this.f47755a = (RetrofitApi) build.create(RetrofitApi.class);
        this.f47756b = (AnyHostApi) build.create(AnyHostApi.class);
    }

    private void g0(OkHttpClient.Builder builder) {
        builder.dns(new Dns() { // from class: com.qennnsad.aknkaksd.data.repository.i
            @Override // okhttp3.Dns
            public final List lookup(String str) {
                List j02;
                j02 = k.this.j0(str);
                return j02;
            }
        });
    }

    private void h0(OkHttpClient.Builder builder) {
        ConnectionSpec build = new ConnectionSpec.Builder(ConnectionSpec.MODERN_TLS).tlsVersions(TlsVersion.TLS_1_2).cipherSuites(CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256).build();
        new OkHttpClient.Builder().connectionSpecs(Collections.singletonList(build)).build();
        builder.connectionSpecs(Collections.singletonList(build));
    }

    private static String i0(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = str.charAt(i4);
            if (charAt <= 31 || charAt >= 127) {
                stringBuffer.append(String.format("\\u%04x", Integer.valueOf(charAt)));
            } else {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List j0(String str) throws UnknownHostException {
        ConfigDnsBean g4 = this.f47757c.g();
        if (str.equals(g4.getHost()) && !TextUtils.isEmpty(g4.getIp())) {
            List asList = Arrays.asList(InetAddress.getAllByName(g4.getIp()));
            o0.n(f47750e, "DnsResolutionService-inetAddresses:" + asList + "---hostname：" + str);
            return asList;
        }
        return Dns.SYSTEM.lookup(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean k0(String str, SSLSession sSLSession) {
        Boolean valueOf = Boolean.valueOf(HttpsURLConnection.getDefaultHostnameVerifier().verify(str, sSLSession));
        o0.g("okhttp-ssl", "s:" + str + "--sslsession:" + sSLSession.getPeerHost() + "--result:" + valueOf);
        return valueOf.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Response l0(boolean z9, Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        Request.Builder addHeader = request.newBuilder().url(request.url().newBuilder().build()).addHeader("X-Live-Butter2", this.f47758d).addHeader("X-Accept-Puzzle", "cola,tiger,tiger2,panda").addHeader("knockknock", "synergy").addHeader("X-Live-Pretty", com.qennnsad.aknkaksd.e.f48516h);
        if (z9) {
            addHeader.removeHeader("user-agent");
        }
        return chain.proceed(addHeader.build());
    }

    private KeyStore m0(char[] cArr) throws GeneralSecurityException {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, cArr);
            return keyStore;
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    private z<retrofit2.Response<String>> n0(String str) {
        return z.just(retrofit2.Response.success(str));
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> A(String str, String str2) {
        return this.f47755a.getCurrentRoomGameType(str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> B(com.qennnsad.aknkaksd.presentation.module.rank.h hVar, int i4) {
        return g.a(this, hVar, i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> C(int i4, int i10, String str, boolean z9) {
        return this.f47755a.loadNerabyAnchors(i4, i10, str, z9 ? 1 : 0);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> D(String str, String str2, String str3, long j4) {
        return this.f47755a.getRoomToken(str, str2, str3, Long.valueOf(j4));
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> E(String str, String str2, String str3, String str4, String str5, int i4, int i10, int i11, Integer num) {
        return this.f47755a.createRoom(str, str2, str3, str4, 'v', str5, i4, -1, i10, i11, num);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> F() {
        return this.f47755a.guestLogin();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> G(String str) {
        return this.f47755a.guestLink(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> H(String str) {
        File file = new File(str);
        return this.f47755a.uploadRoompic(MultipartBody.Part.createFormData("name", file.getName(), RequestBody.create(MediaType.parse("image/jpg"), file)));
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> I(String str, String str2, String str3) {
        return this.f47755a.setCurrentGame(str2, str3);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> J(String str, String str2, String str3, h5.a aVar, String str4) {
        RetrofitApi retrofitApi = this.f47755a;
        String c10 = aVar.b() == CaptchaType.Re ? aVar.c() : null;
        String c11 = aVar.b() == CaptchaType.H ? aVar.c() : null;
        CaptchaType b10 = aVar.b();
        CaptchaType captchaType = CaptchaType.Graph;
        return retrofitApi.sendSms(str, str2, str3, c10, c11, b10 == captchaType ? aVar.c() : null, aVar.b() == captchaType ? aVar.a() : null, str4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> K() {
        return this.f47755a.getLiteVersion();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> L(String str, boolean z9) {
        return this.f47755a.updateToyStatus(str, z9 ? 1 : 0);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> M(String str, String str2) {
        return this.f47755a.loadRecommendAnchors(str2, 0);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> N(String str, String str2, String str3) {
        return this.f47755a.sendHongBaoGift(str2, str3);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> O(int i4, int i10, String str, boolean z9) {
        return this.f47755a.loadHotAnchors(i4, i10, str, z9 ? 1 : 0);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> P(String str) {
        File file = new File(str);
        return this.f47755a.uploadAvatar(MultipartBody.Part.createFormData("name", file.getName(), RequestBody.create(MediaType.parse("image/jpg"), file)));
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> Q(String str, String str2, int i4) {
        return this.f47755a.alipay(str, i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> R(String str, String str2) {
        return this.f47755a.editJob(str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> S(boolean z9) {
        return this.f47755a.sendInteractionReady(z9 ? 1 : 0);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> T(int i4, int i10, String str, boolean z9) {
        return this.f47755a.loadVeganAnchors(i4, i10, str, z9 ? 1 : 0);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> U(String str, String str2, int i4, int i10, String str3, String str4, String str5) {
        return this.f47755a.postInfo(str2, i4, i10, str3, str4, str5);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> V(String str, String str2) {
        return this.f47755a.getStarProgressTime(str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> W() {
        return this.f47755a.getPayWAY();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> X(String str, String str2) {
        return null;
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> Y() {
        return this.f47755a.getAvailableGifts(com.qennnsad.aknkaksd.e.f48514f);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> Z(String str, String str2, int i4, int i10, String str3, String str4, String str5, String str6) {
        return this.f47755a.postInfo(str2, i4, i10, str3, str4, str5, str6);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> a(String str, String str2, String str3) {
        return this.f47755a.getStarAndLeftTimes(str2, str3);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> a0(int i4, int i10, String str, boolean z9) {
        return this.f47755a.loadVipAnchors(i4, i10, str, z9 ? 1 : 0);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> b(String str, String str2) {
        return this.f47755a.getUserInfo(str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> b0(boolean z9) {
        return this.f47755a.setLiveStatus(z9 ? u0.f86831d : u0.f86832e);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> boxReport(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2)) {
            return this.f47755a.boxReport(str);
        }
        return this.f47755a.boxReport(str, str2, str3);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> c() {
        return this.f47755a.hitList();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> c0(String str) {
        return this.f47755a.getBankInfo();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> complainPinnedMessage(String str) {
        return this.f47755a.complainPinnedMessage(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> createConferenceRoom(String str, String str2) {
        return this.f47755a.createConferenceRoom(str, str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> d(int i4, boolean z9) {
        return this.f47755a.loadFollowedLives(i4, z9 ? 1 : 0);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> deletConferenceRoom(String str) {
        return this.f47755a.deletConferenceRoom(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<ResponseBody> downloadFile(String str) {
        return this.f47755a.downloadFile(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> e(int i4, int i10, String str, String str2, String str3) {
        return this.f47755a.loadSponsorAnchors(i4, i10);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> editProfile(String str) {
        return this.f47755a.editProfile(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> f(int i4, int i10, boolean z9) {
        return this.f47755a.getAnchorHot(i4, i10);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> findmypassword(String str, String str2, String str3, String str4, String str5) {
        return this.f47755a.findmypassword(str, str2, str3, str4, str5);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> followAnchor(String str) {
        return this.f47755a.followAnchor(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> followUser(String str, String str2) {
        return this.f47755a.followUser(str, str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> g(String str, boolean z9) {
        return this.f47755a.updateUserSetup(str, z9 ? u0.f86831d : u0.f86832e);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> generatePushStreaming(String str) {
        return this.f47755a.generatePushStreaming(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> generateRechargeOrder(String str) {
        return this.f47755a.generateRechargeOrder(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> generateRechargeWechat(String str) {
        return this.f47755a.generateRechargeWechat(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getALiInfo() {
        return this.f47755a.getALiInfo();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getAdConfig() {
        return this.f47755a.getAdConfig();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getAdmin(String str) {
        return this.f47755a.getAdmin(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getAnchoBean(String str) {
        return this.f47755a.getAnchoBean(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getAnchorSlide(int i4, int i10) {
        return this.f47755a.getAnchorSlide(i4, i10);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getAppConfig() {
        return this.f47755a.getAppConfig();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getBoxDrawers(int i4, int i10) {
        return this.f47755a.getBoxDrawers(i4, i10);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getBoxLives(int i4, int i10, String str) {
        return this.f47755a.getBoxLives(i4, i10, str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getCompetitorsList() {
        return this.f47755a.getCompetitorsList();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getContributeRankList(String str, int i4) {
        return this.f47755a.getContributeRankList(str, i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getCurrentAgentChat() {
        return this.f47755a.getCurrentAgentChat();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getDepositAgent() {
        return this.f47755a.getDepositAgent();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getDepositOptions() {
        return this.f47755a.getDepositOptions();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getEmotion(int i4) {
        return this.f47755a.getEmotion(i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getFanClubInfo() {
        return this.f47755a.getFanClubInfo();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getFriendList() {
        return this.f47755a.getFriendList();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getGameCenterPoints() {
        return this.f47755a.getGameCenterPoints();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getGameCenterUrl() {
        return this.f47755a.getGameCenterUrl();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getGameHall(int i4) {
        return this.f47755a.getGameHall(i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getHelpUrl() {
        return this.f47755a.getHelpUrl();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getImToken() {
        return this.f47755a.getImToken();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getIncomeBean() {
        return this.f47755a.getIncomeBean();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getLiveRoomInfo(String str) {
        return this.f47755a.getLiveRoomInfo(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getLoginCaptcha() {
        return this.f47755a.getLoginCaptcha();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getMyInfo() {
        return this.f47755a.getMyInfo();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getPeeragePrices() {
        return this.f47755a.getPeeragePrices();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getPinnedMessagesHistory(String str) {
        return this.f47755a.getPinnedMessagesHistory(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getPlayBack(String str) {
        return this.f47755a.getPlayBack(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getPlayBackListUrl(String str, String str2, String str3) {
        return this.f47755a.getPlayBackListUrl(str, str2, str3);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getPlaybackUrl(String str) {
        return this.f47755a.getPlaybackUrl(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getPresentRecord() {
        return this.f47755a.getPresentRecord();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getPullAddress(String str) {
        return this.f47755a.getPullAddress(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getSeatRank(String str, int i4) {
        return this.f47755a.getSeatRank(str, i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getShareData(String str) {
        return this.f47755a.getShareData(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getThemBean() {
        return this.f47755a.getThemBean();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getUserFans(String str, int i4) {
        return this.f47755a.getUserFans(str, i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getUserInfo(String str) {
        return this.f47755a.getUserInfo(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getUserMoney() {
        return this.f47755a.getUserMoney();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getUserStars(String str, int i4) {
        return this.f47755a.getUserStars(str, i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> h(@Nullable String str, String str2, String str3) {
        return this.f47755a.translate(this.f47757c.g().getHostWithProtocol(false), str, str2, str3);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> i(String str, String str2) {
        return this.f47755a.getSignInStar(str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> interruptDeposit(int i4) {
        return this.f47755a.interruptDeposit(i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> is_create_conversation(int i4) {
        return this.f47755a.is_create_conversation(i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> isaddfriend(String str) {
        return this.f47755a.isaddfriend(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> j(String str) {
        return this.f47755a.registerByPhone_tiger("tiger2", str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> joinFanClub(String str) {
        return this.f47755a.joinFanClub(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> k(String str, String str2, int i4) {
        return this.f47755a.weChatPay(str, i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> l(String str, String str2, String str3) {
        return null;
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> loadPrivateLimit(String str) {
        return this.f47755a.loadPrivateLimit(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> loadTopicLives(int i4) {
        return this.f47755a.loadTopicLives(i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> login(String str) {
        return this.f47755a.login(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> logout() {
        return this.f47755a.logout();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> m(int i4, int i10, String str, String str2, String str3) {
        return this.f47755a.loadBoxAnchors(i4, i10);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> modifyPassword(String str, String str2) {
        return this.f47755a.modifyPassword(str, str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> n() {
        return this.f47755a.getLaunchAd("https://api.moonscap.com/OpenAPI/v1/", 2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> o(int i4, int i10, String str, boolean z9) {
        return this.f47755a.loadLatestAnchors(i4, i10, str, z9 ? 1 : 0);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> onRoomOrientationChange(String str, String str2) {
        return this.f47755a.onRoomOrientationChange(str, str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> p(String str, String str2, int i4, String str3, String str4, String str5, String str6, String str7) {
        return this.f47755a.postbank(str2, i4, str3, str4, str5, str6, str7);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> pinMessage(int i4, int i10, int i11, String str) {
        return this.f47755a.pinMessage(i4, i10, i11, str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> ping(String str) {
        o0.g(f47750e, "Prepare cold observer to '/ping' : " + str);
        return this.f47755a.ping(str + t0.f55042g + "/" + RetrofitApi.f47693b);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> publishRecoveryPrivate(int i4) {
        return this.f47755a.publishRecoveryPrivate(i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> q(String str, String str2) {
        return this.f47755a.getNearbyList(str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> queryAnchors(String str, int i4) {
        return this.f47755a.queryAnchors(str, i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> r(String str, String str2) {
        return null;
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> removeAdmin(String str, String str2) {
        return this.f47755a.removeAdmin(str, str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> removeHit(String str) {
        return this.f47755a.removeHit(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> reportLocation(String str, String str2) {
        return this.f47755a.reportLocation(str, str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> roomWarn(String str, String str2, String str3, String str4) {
        return this.f47755a.roomWarn(str, str2, str3, str4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> s(String str, int i4, String str2, String str3, String str4) {
        o0.g("jiancha", "checkPrivatePass--tupe:" + str);
        if (str.equals("1")) {
            return this.f47755a.loadPrivatePwd(i4, str2, str4);
        }
        if (str.equals("2")) {
            return this.f47755a.loadPrivateTicket(i4, str4);
        }
        if (str.equals("3")) {
            return this.f47755a.loadPrivateLevel(i4, str4);
        }
        if (str.equals(g5.h.f67840d)) {
            return this.f47755a.loadPrivateMoney(i4, str4);
        }
        if (str.equals(g5.h.f67844h)) {
            return this.f47755a.checkUserPoint(i4, str4);
        }
        if (str.equals(g5.h.f67843g)) {
            return this.f47755a.previewPrivateRoom(i4, str4);
        }
        if (str.equals(g5.h.f67841e)) {
            return this.f47755a.checkVideoMoney(i4, str4);
        }
        if (str.equals(g5.h.f67842f)) {
            return this.f47755a.checkVideoPoint(i4, str4);
        }
        return this.f47755a.loadPrivatePwd(i4, str2, str4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> sendConferenceMsg(String str, String str2) {
        return this.f47755a.sendConferenceMsg(str, str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> sendDanmuMsg(String str, String str2) {
        return this.f47755a.sendDanmuMsg(str, str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> sendGift(String str, String str2, int i4) {
        return this.f47755a.sendGift(str, str2, i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> sendNameCard(String str, String str2) {
        return this.f47755a.sendNameCard(str, str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> setCity(String str) {
        return this.f47755a.setCity(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> setHit(String str) {
        return this.f47755a.setHit(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> t(String str, String str2) {
        return this.f47755a.setBirthday(str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> thirdLogin(String str, @ThirdLoginPlatform String str2, String str3) {
        return this.f47755a.thirdLogin(str, str2, str3);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> u(String str) {
        return this.f47755a.getGameGift();
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> unfollowAnchor(String str) {
        return this.f47755a.unfollowAnchor(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> unfollowUser(String str, String str2) {
        return this.f47755a.unfollowUser(str, str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> upLoadLog(String str) {
        return this.f47755a.upLoadLog(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> upLoadMyAddress(String str) {
        return this.f47755a.upLoadMyAddress(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> upLoadMyRecommen(String str) {
        return this.f47755a.upLoadMyRecommen(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> upNewAppVersion(String str) {
        return this.f47755a.upNewAppVersion(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> updateBirthday(String str) {
        return this.f47755a.updateBirthday(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> updateIntro(String str) {
        return this.f47755a.updateIntro(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> updateNameCard(String str) {
        return this.f47755a.updateNameCard(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> updateNickName(String str) {
        return this.f47755a.updateNickName(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> updateSex(String str) {
        return this.f47755a.updateSex(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> updateSubscribeNotify(int i4) {
        return this.f47755a.updateSubscribeNotify(i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> userReport(String str) {
        return this.f47755a.userReport(str);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> v(String str, String str2, String str3) {
        return null;
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> w(String str, String str2) {
        return this.f47755a.getSignInfoFromServer(str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> withDraw(String str, String str2) {
        return this.f47755a.withDraw(str, str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> x(int i4) {
        return this.f47755a.getRechargeInfo(i4);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> y(String str, String str2) {
        return this.f47755a.loadCityAnchors(str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<Void> z(String str, String str2, String str3) {
        return this.f47755a.bigWinSendMessage(str2, str3);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> getThemBean(String str, String str2) {
        return this.f47755a.getThemBean(str, str2);
    }

    @Override // com.qennnsad.aknkaksd.data.repository.b
    public z<retrofit2.Response<String>> userReport(String str, String str2) {
        return this.f47755a.userReport(str, str2);
    }
}
