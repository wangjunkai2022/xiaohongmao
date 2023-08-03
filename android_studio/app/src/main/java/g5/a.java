package g5;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.AdConfigBean;
import com.qennnsad.aknkaksd.data.bean.AppUpdateBean;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.ConfigDnsBean;
import com.qennnsad.aknkaksd.data.bean.DepositOption;
import com.qennnsad.aknkaksd.data.bean.GameCenter;
import com.qennnsad.aknkaksd.data.bean.LiveSummary;
import com.qennnsad.aknkaksd.data.bean.PeeragePriceBean;
import com.qennnsad.aknkaksd.data.bean.PinMessageConfig;
import com.qennnsad.aknkaksd.data.bean.PkConfig;
import com.qennnsad.aknkaksd.data.bean.fanclub.FanClubInfoBean;
import com.qennnsad.aknkaksd.data.bean.gift.Gift;
import com.qennnsad.aknkaksd.data.bean.me.UserMoney;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.bean.websocket.LocalRoomMsg;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper;
import com.qennnsad.aknkaksd.presentation.ui.login.CaptchaType;
import com.qennnsad.aknkaksd.presentation.ui.main.index.DistrictType;
import com.qennnsad.aknkaksd.util.o0;
import io.sentry.protocol.y;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.j0;
import kotlinx.coroutines.flow.t;

/* compiled from: LocalDataManager.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000Ø\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001B\u0013\b\u0007\u0012\u0006\u0010|\u001a\u00020{¢\u0006\u0006\b\u0095\u0001\u0010\u0096\u0001J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u000b\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fJ\b\u0010\u000f\u001a\u0004\u0018\u00010\fJ\u000e\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0002J\b\u0010\u0014\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u0016\u001a\u00020\u0015J\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\f0\u00192\u0006\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0015J\u000e\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0004J\u000e\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0004J\u0006\u0010\u001e\u001a\u00020\u0015J\u0006\u0010\u001f\u001a\u00020\u0015J\u000e\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 J/\u0010&\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u00042\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b&\u0010'J\b\u0010(\u001a\u0004\u0018\u00010 J \u0010.\u001a\u00020\u00022\u0006\u0010*\u001a\u00020)2\u0010\u0010-\u001a\f\u0012\b\b\u0000\u0012\u0004\u0018\u00010,0+J \u0010/\u001a\u00020\u00022\u0006\u0010*\u001a\u00020)2\u0010\u0010-\u001a\f\u0012\b\b\u0000\u0012\u0004\u0018\u00010 0+J\u0010\u00102\u001a\u00020\u00022\b\u00101\u001a\u0004\u0018\u000100J\u0006\u00103\u001a\u000200J\b\u00104\u001a\u0004\u0018\u00010,J\u0010\u00106\u001a\u00020\u00022\b\u00105\u001a\u0004\u0018\u00010,J\u0006\u00108\u001a\u000207J\u0010\u00109\u001a\u00020\u00022\b\u00105\u001a\u0004\u0018\u000107J\u0006\u0010;\u001a\u00020:J\u0010\u0010<\u001a\u00020\u00022\b\u00105\u001a\u0004\u0018\u00010:J\b\u0010>\u001a\u0004\u0018\u00010=J\u000e\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020=J\u000e\u0010B\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u0015J\u000e\u0010D\u001a\u00020\u00022\u0006\u00101\u001a\u00020CJ\u0006\u0010E\u001a\u00020CJ\u0014\u0010H\u001a\u00020\u00022\f\u0010G\u001a\b\u0012\u0004\u0012\u00020F0\u0019J\f\u0010I\u001a\b\u0012\u0004\u0012\u00020F0\u0019J\u0014\u0010L\u001a\u00020\u00022\f\u0010K\u001a\b\u0012\u0004\u0012\u00020J0\u0019J\f\u0010M\u001a\b\u0012\u0004\u0012\u00020J0\u0019J\u0016\u0010Q\u001a\u00020\u00022\u0006\u0010N\u001a\u00020\u00042\u0006\u0010P\u001a\u00020OJ\u0006\u0010R\u001a\u00020\u0004J\u0006\u0010S\u001a\u00020OJ\u0018\u0010V\u001a\u00020\u00022\u0006\u0010T\u001a\u00020\f2\b\u0010U\u001a\u0004\u0018\u00010\fJ\u000e\u0010W\u001a\u00020\f2\u0006\u0010T\u001a\u00020\fJ\u000e\u0010Y\u001a\u00020\u00022\u0006\u0010X\u001a\u00020OJ\u0006\u0010Z\u001a\u00020OJ\u0006\u0010[\u001a\u00020\u0015J\u0010\u0010]\u001a\u00020\u00022\b\u0010\\\u001a\u0004\u0018\u00010\fJ\b\u0010^\u001a\u0004\u0018\u00010\fJ\u0006\u0010_\u001a\u00020\u0015J\u000e\u0010a\u001a\u00020\u00022\u0006\u00105\u001a\u00020`J\b\u0010b\u001a\u0004\u0018\u00010`J\u000e\u0010d\u001a\u00020\u00022\u0006\u0010c\u001a\u00020\u0015J\u0006\u0010e\u001a\u00020\u0015J\u0006\u0010f\u001a\u00020\u0015J\u000e\u0010g\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u0015J\u0006\u0010h\u001a\u00020\u0015J\u0010\u0010j\u001a\u00020\u00022\b\u0010i\u001a\u0004\u0018\u00010\fJ\b\u0010k\u001a\u0004\u0018\u00010\fJ\u0010\u0010n\u001a\u00020\u00022\b\u0010m\u001a\u0004\u0018\u00010lJ\b\u0010o\u001a\u0004\u0018\u00010lJ\u000e\u0010q\u001a\n\u0012\u0004\u0012\u00020p\u0018\u00010\u0019J\u0016\u0010r\u001a\u00020\u00022\u000e\u00105\u001a\n\u0012\u0004\u0012\u00020p\u0018\u00010\u0019J\u0010\u0010t\u001a\u00020\u00022\b\u00105\u001a\u0004\u0018\u00010sJ\b\u0010u\u001a\u0004\u0018\u00010sJ\u000e\u0010w\u001a\u00020\u00022\u0006\u0010v\u001a\u00020OJ\u0006\u0010x\u001a\u00020OJ\u0006\u0010y\u001a\u00020\u0002J\u0006\u0010z\u001a\u00020\u0015R\u0017\u0010|\u001a\u00020{8\u0006¢\u0006\f\n\u0004\b|\u0010}\u001a\u0004\b~\u0010\u007fR)\u0010\u0081\u0001\u001a\u00020O2\u0007\u0010\u0080\u0001\u001a\u00020O8\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0005\b\u0081\u0001\u0010[\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001R#\u0010\u0085\u0001\u001a\t\u0012\u0004\u0012\u00020\u00040\u0084\u00018\u0006¢\u0006\u0010\n\u0006\b\u0085\u0001\u0010\u0086\u0001\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001RB\u0010\u008c\u0001\u001a\u001b\u0012\u0004\u0012\u00020\u0015\u0012\u0007\u0012\u0005\u0018\u00010\u008a\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u008b\u00010\u0089\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008c\u0001\u0010\u008d\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001\"\u0006\b\u0090\u0001\u0010\u0091\u0001R\u0014\u0010\u0094\u0001\u001a\u00020\u00158F¢\u0006\b\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001¨\u0006\u0097\u0001"}, d2 = {"Lg5/a;", "", "", "M", "", "role", "g0", "n", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;", m.c.f86932f, "c0", "j", "", "token", "h0", "o", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "user", ExifInterface.GPS_DIRECTION_TRUE, "a", "C", "", "y0", "followeeId", "add", "", "t0", "mode", "q0", "p0", "L", "K", "Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;", "money", "U", "coinBalance", "remainingNextLevel", "pointBalance", "w0", "(ILjava/lang/Integer;Ljava/lang/Integer;)V", "D", "Landroidx/lifecycle/LifecycleOwner;", "lifecycle", "Landroidx/lifecycle/Observer;", "Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;", "observer", "r0", "s0", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedServerType;", "type", "b0", ContextChain.TAG_INFRA, "e", "bean", "X", "Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;", "g", "a0", "Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;", "b", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;", "q", "msg", "i0", "allowed", "j0", "Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;", "n0", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;", "data", "f0", "m", "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;", "list", "Z", "f", k4.b.f84734a, "", "startTime", "Y", y.b.f83919g, "z", "aId", "ticket", "R", "u", "timeMillis", ExifInterface.LATITUDE_SOUTH, "w", "J", com.ksyun.media.player.d.d.A, "o0", "B", "G", "Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;", "d0", "k", "isReady", "Q", ExifInterface.LONGITUDE_EAST, "H", "m0", "I", "intro", "l0", "s", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;", "info", "O", "h", "Lcom/qennnsad/aknkaksd/data/bean/PeeragePriceBean;", "r", "k0", "Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;", "N", "c", "id", ExifInterface.LONGITUDE_WEST, "d", "P", "p", "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;", "prefsHelper", "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;", "t", "()Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;", "<set-?>", "serverDate", "v", "()J", "Lkotlinx/coroutines/flow/t;", "streamChatId", "Lkotlinx/coroutines/flow/t;", y.b.f83920h, "()Lkotlinx/coroutines/flow/t;", "Lkotlin/Triple;", "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;", "gameHallStreamPendingsState", "Lkotlin/Triple;", "l", "()Lkotlin/Triple;", "e0", "(Lkotlin/Triple;)V", "F", "()Z", "isCurrentUserAdmin", "<init>", "(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final PrefsHelper f67815a;

    /* renamed from: b  reason: collision with root package name */
    private long f67816b;

    /* renamed from: c  reason: collision with root package name */
    private long f67817c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private String f67818d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private LocalRoomMsg f67819e;
    @JvmField
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    public final t<Boolean> f67820f;
    @JvmField
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    public final t<UserBean> f67821g;
    @JvmField
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    public final t<List<Gift>> f67822h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final t<List<DepositOption>> f67823i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final t<Integer> f67824j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private Triple<Boolean, ? extends LiveSummary, ? extends DistrictType> f67825k;

    @u7.a
    public a(@m8.g PrefsHelper prefsHelper) {
        List emptyList;
        List emptyList2;
        Intrinsics.checkNotNullParameter(prefsHelper, "prefsHelper");
        this.f67815a = prefsHelper;
        this.f67820f = j0.a(Boolean.valueOf(prefsHelper.getNameCardAllowed()));
        this.f67821g = j0.a(prefsHelper.getUserInfo());
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f67822h = j0.a(emptyList);
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.f67823i = j0.a(emptyList2);
        this.f67824j = j0.a(Integer.valueOf(prefsHelper.getStreamChatId()));
        this.f67825k = new Triple<>(Boolean.FALSE, null, null);
    }

    public static /* synthetic */ void x0(a aVar, int i4, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        if ((i10 & 4) != 0) {
            num2 = null;
        }
        aVar.w0(i4, num, num2);
    }

    @m8.g
    public final CaptchaType A() {
        return this.f67815a.getTestServerCaptchaType();
    }

    @m8.h
    public final String B() {
        return this.f67815a.getTestServerDomain();
    }

    @m8.h
    public final UserBean C() {
        return this.f67821g.getValue();
    }

    @m8.h
    public final UserMoney D() {
        return this.f67815a.getUserMoney();
    }

    public final boolean E() {
        UserBean userInfo = this.f67815a.getUserInfo();
        return userInfo != null && userInfo.getInteractionReady() == 1;
    }

    public final boolean F() {
        UserBean C = C();
        Intrinsics.checkNotNull(C);
        return C.isAdmin() > 0;
    }

    public final boolean G() {
        PinMessageConfig pinMessage;
        ConfigBean e4 = e();
        return (e4 == null || (pinMessage = e4.getPinMessage()) == null || !pinMessage.getEnable()) ? false : true;
    }

    public final boolean H() {
        PkConfig pk;
        ConfigBean e4 = e();
        if (e4 == null || (pk = e4.getPk()) == null) {
            return false;
        }
        return Intrinsics.areEqual(pk.getEnable(), Boolean.TRUE);
    }

    public final boolean I() {
        return true;
    }

    public final boolean J() {
        return i() == DnsResolver.ForcedServerType.TEST;
    }

    public final boolean K() {
        return this.f67815a.getTranslationModeText() == 1;
    }

    public final boolean L() {
        return this.f67815a.getTranslationModeVoice() == 1;
    }

    public final void M() {
        this.f67825k = new Triple<>(Boolean.FALSE, null, null);
    }

    public final void N(@m8.h AppUpdateBean appUpdateBean) {
        this.f67815a.setAppUpdateBean(appUpdateBean);
    }

    public final void O(@m8.h FanClubInfoBean fanClubInfoBean) {
        this.f67815a.saveFanClubInfo(fanClubInfoBean);
    }

    public final void P() {
        this.f67815a.saveKeepOldAppVersion();
    }

    public final void Q(boolean z9) {
        UserBean copy;
        UserBean userInfo = this.f67815a.getUserInfo();
        if (userInfo != null) {
            PrefsHelper prefsHelper = this.f67815a;
            copy = userInfo.copy((r86 & 1) != 0 ? userInfo.id : null, (r86 & 2) != 0 ? userInfo.sex : 0, (r86 & 4) != 0 ? userInfo.intro : null, (r86 & 8) != 0 ? userInfo.nickname : null, (r86 & 16) != 0 ? userInfo.city : null, (r86 & 32) != 0 ? userInfo.avatartime : null, (r86 & 64) != 0 ? userInfo.birthday : null, (r86 & 128) != 0 ? userInfo.professional : null, (r86 & 256) != 0 ? userInfo.emotion : null, (r86 & 512) != 0 ? userInfo.province : null, (r86 & 1024) != 0 ? userInfo.peerage_id : 0, (r86 & 2048) != 0 ? userInfo.avatar : null, (r86 & 4096) != 0 ? userInfo.snap : null, (r86 & 8192) != 0 ? userInfo.follow_users : null, (r86 & 16384) != 0 ? userInfo.followers_cnt : null, (r86 & 32768) != 0 ? userInfo.followees_cnt : null, (r86 & 65536) != 0 ? userInfo.emceelevel : null, (r86 & 131072) != 0 ? userInfo.familyLevel : null, (r86 & 262144) != 0 ? userInfo.age : 0, (r86 & 524288) != 0 ? userInfo.beanorignal : 0, (r86 & 1048576) != 0 ? userInfo.spendcoin : 0, (r86 & 2097152) != 0 ? userInfo.broadcasting : null, (r86 & 4194304) != 0 ? userInfo.curroomnum : null, (r86 & 8388608) != 0 ? userInfo.toy_enabled : null, (r86 & 16777216) != 0 ? userInfo.toy_status : null, (r86 & 33554432) != 0 ? userInfo.approveid : null, (r86 & 67108864) != 0 ? userInfo.approvetype : 0, (r86 & 134217728) != 0 ? userInfo.is_attention : 0, (r86 & 268435456) != 0 ? userInfo.isHit : 0, (r86 & 536870912) != 0 ? userInfo.name_card : null, (r86 & 1073741824) != 0 ? userInfo.lob_no : 0, (r86 & Integer.MIN_VALUE) != 0 ? userInfo.mysteryId : null, (r87 & 1) != 0 ? userInfo.isMystery : 0, (r87 & 2) != 0 ? userInfo.isGuest : false, (r87 & 4) != 0 ? userInfo.isanchor : false, (r87 & 8) != 0 ? userInfo.iswithdraw : false, (r87 & 16) != 0 ? userInfo.is_lounge_vip : false, (r87 & 32) != 0 ? userInfo.is_subscribe_notify : 0, (r87 & 64) != 0 ? userInfo.is_single_conversation : 0, (r87 & 128) != 0 ? userInfo.is_group_conversation : 0, (r87 & 256) != 0 ? userInfo.is_im : 0, (r87 & 512) != 0 ? userInfo.is_anchor_rank : false, (r87 & 1024) != 0 ? userInfo.is_family : false, (r87 & 2048) != 0 ? userInfo.is_deposit_chip : false, (r87 & 4096) != 0 ? userInfo.is_withdraw_chip : false, (r87 & 8192) != 0 ? userInfo.is_legend : false, (r87 & 16384) != 0 ? userInfo.is_legend_withdraw : false, (r87 & 32768) != 0 ? userInfo.is_join_peerage : false, (r87 & 65536) != 0 ? userInfo.isAdmin : 0, (r87 & 131072) != 0 ? userInfo.interactionReady : z9 ? 1 : 0, (r87 & 262144) != 0 ? userInfo.showLevel : 0, (r87 & 524288) != 0 ? userInfo.showFamilyLevel : 0, (r87 & 1048576) != 0 ? userInfo.showPeerage : 0, (r87 & 2097152) != 0 ? userInfo.showJapanese : 0, (r87 & 4194304) != 0 ? userInfo.realtimeTranslationEnable : null, (r87 & 8388608) != 0 ? userInfo.realtimeTranslationType : null, (r87 & 16777216) != 0 ? userInfo.realtimeSubtitlesOn : 0, (r87 & 33554432) != 0 ? userInfo.menus : null, (r87 & 67108864) != 0 ? userInfo.username : null, (r87 & 134217728) != 0 ? userInfo.iswithdraw_promotion : null, (r87 & 268435456) != 0 ? userInfo.settings : null);
            prefsHelper.setUserInfo(copy);
        }
    }

    public final void R(@m8.g String aId, @m8.h String str) {
        Intrinsics.checkNotNullParameter(aId, "aId");
        this.f67815a.saveRoomTicketJwt(aId, str);
    }

    public final void S(long j4) {
        this.f67816b = j4;
        this.f67817c = SystemClock.elapsedRealtime();
    }

    public final void T(@m8.g UserBean user) {
        UserBean userBean;
        Intrinsics.checkNotNullParameter(user, "user");
        if (this.f67821g.getValue() != null) {
            UserBean value = this.f67821g.getValue();
            boolean z9 = false;
            if (value != null && value.isAdmin() == 0) {
                z9 = true;
            }
            if (!z9) {
                UserBean value2 = this.f67821g.getValue();
                Intrinsics.checkNotNull(value2);
                userBean = user.copy((r86 & 1) != 0 ? user.id : null, (r86 & 2) != 0 ? user.sex : 0, (r86 & 4) != 0 ? user.intro : null, (r86 & 8) != 0 ? user.nickname : null, (r86 & 16) != 0 ? user.city : null, (r86 & 32) != 0 ? user.avatartime : null, (r86 & 64) != 0 ? user.birthday : null, (r86 & 128) != 0 ? user.professional : null, (r86 & 256) != 0 ? user.emotion : null, (r86 & 512) != 0 ? user.province : null, (r86 & 1024) != 0 ? user.peerage_id : 0, (r86 & 2048) != 0 ? user.avatar : null, (r86 & 4096) != 0 ? user.snap : null, (r86 & 8192) != 0 ? user.follow_users : null, (r86 & 16384) != 0 ? user.followers_cnt : null, (r86 & 32768) != 0 ? user.followees_cnt : null, (r86 & 65536) != 0 ? user.emceelevel : null, (r86 & 131072) != 0 ? user.familyLevel : null, (r86 & 262144) != 0 ? user.age : 0, (r86 & 524288) != 0 ? user.beanorignal : 0, (r86 & 1048576) != 0 ? user.spendcoin : 0, (r86 & 2097152) != 0 ? user.broadcasting : null, (r86 & 4194304) != 0 ? user.curroomnum : null, (r86 & 8388608) != 0 ? user.toy_enabled : null, (r86 & 16777216) != 0 ? user.toy_status : null, (r86 & 33554432) != 0 ? user.approveid : null, (r86 & 67108864) != 0 ? user.approvetype : 0, (r86 & 134217728) != 0 ? user.is_attention : 0, (r86 & 268435456) != 0 ? user.isHit : 0, (r86 & 536870912) != 0 ? user.name_card : null, (r86 & 1073741824) != 0 ? user.lob_no : 0, (r86 & Integer.MIN_VALUE) != 0 ? user.mysteryId : null, (r87 & 1) != 0 ? user.isMystery : 0, (r87 & 2) != 0 ? user.isGuest : false, (r87 & 4) != 0 ? user.isanchor : false, (r87 & 8) != 0 ? user.iswithdraw : false, (r87 & 16) != 0 ? user.is_lounge_vip : false, (r87 & 32) != 0 ? user.is_subscribe_notify : 0, (r87 & 64) != 0 ? user.is_single_conversation : 0, (r87 & 128) != 0 ? user.is_group_conversation : 0, (r87 & 256) != 0 ? user.is_im : 0, (r87 & 512) != 0 ? user.is_anchor_rank : false, (r87 & 1024) != 0 ? user.is_family : false, (r87 & 2048) != 0 ? user.is_deposit_chip : false, (r87 & 4096) != 0 ? user.is_withdraw_chip : false, (r87 & 8192) != 0 ? user.is_legend : false, (r87 & 16384) != 0 ? user.is_legend_withdraw : false, (r87 & 32768) != 0 ? user.is_join_peerage : false, (r87 & 65536) != 0 ? user.isAdmin : value2.isAdmin(), (r87 & 131072) != 0 ? user.interactionReady : 0, (r87 & 262144) != 0 ? user.showLevel : 0, (r87 & 524288) != 0 ? user.showFamilyLevel : 0, (r87 & 1048576) != 0 ? user.showPeerage : 0, (r87 & 2097152) != 0 ? user.showJapanese : 0, (r87 & 4194304) != 0 ? user.realtimeTranslationEnable : null, (r87 & 8388608) != 0 ? user.realtimeTranslationType : null, (r87 & 16777216) != 0 ? user.realtimeSubtitlesOn : 0, (r87 & 33554432) != 0 ? user.menus : null, (r87 & 67108864) != 0 ? user.username : null, (r87 & 134217728) != 0 ? user.iswithdraw_promotion : null, (r87 & 268435456) != 0 ? user.settings : null);
                this.f67821g.setValue(user);
                this.f67815a.setUserInfo(userBean);
            }
        }
        userBean = user;
        this.f67821g.setValue(user);
        this.f67815a.setUserInfo(userBean);
    }

    public final void U(@m8.g UserMoney money) {
        Intrinsics.checkNotNullParameter(money, "money");
        this.f67815a.setUserMoney(money);
    }

    public final void V(@m8.h AdConfigBean adConfigBean) {
        PrefsHelper prefsHelper = this.f67815a;
        Intrinsics.checkNotNull(adConfigBean);
        prefsHelper.setAdConfig(adConfigBean);
    }

    public final void W(long j4) {
        this.f67815a.setAppUpdateDownloadId(j4);
    }

    public final void X(@m8.h ConfigBean configBean) {
        PrefsHelper prefsHelper = this.f67815a;
        Intrinsics.checkNotNull(configBean);
        prefsHelper.setConfig(configBean);
    }

    public final void Y(int i4, long j4) {
        this.f67824j.setValue(Integer.valueOf(i4));
        this.f67815a.setStreamChatId(i4);
        this.f67815a.setStreamChatStartTime(j4);
    }

    public final void Z(@m8.g List<DepositOption> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.f67823i.setValue(list);
    }

    public final void a() {
        List<Gift> emptyList;
        List<DepositOption> emptyList2;
        o0.a("LocalDataManager", "Clear User Info!");
        this.f67821g.setValue(null);
        this.f67818d = null;
        t<List<Gift>> tVar = this.f67822h;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        tVar.setValue(emptyList);
        t<List<DepositOption>> tVar2 = this.f67823i;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        tVar2.setValue(emptyList2);
        this.f67824j.setValue(0);
        this.f67815a.removeUserInfo();
    }

    public final void a0(@m8.h ConfigDnsBean configDnsBean) {
        this.f67815a.setDnsConfig(configDnsBean);
    }

    @m8.g
    public final AdConfigBean b() {
        AdConfigBean adConfig = this.f67815a.getAdConfig();
        return adConfig == null ? new AdConfigBean(null, null, null, null, null, null, null, null, null, null, null, 2047, null) : adConfig;
    }

    public final void b0(@m8.h DnsResolver.ForcedServerType forcedServerType) {
        this.f67815a.setForcedServer(forcedServerType);
    }

    @m8.h
    public final AppUpdateBean c() {
        return this.f67815a.getAppUpdateBean();
    }

    public final void c0(@m8.g DnsResolver.ForcedDnsResolutionHost host) {
        Intrinsics.checkNotNullParameter(host, "host");
        this.f67815a.setForcedDnsResolutionHost(host);
    }

    public final long d() {
        return this.f67815a.getAppUpdateDownloadId();
    }

    public final void d0(@m8.g GameCenter.GetUrlBean bean) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        this.f67815a.setGameCenterBean(bean);
    }

    @m8.h
    public final ConfigBean e() {
        return this.f67815a.getConfig();
    }

    public final void e0(@m8.g Triple<Boolean, ? extends LiveSummary, ? extends DistrictType> triple) {
        Intrinsics.checkNotNullParameter(triple, "<set-?>");
        this.f67825k = triple;
    }

    @m8.g
    public final List<DepositOption> f() {
        return this.f67823i.getValue();
    }

    public final void f0(@m8.g List<? extends Gift> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        o0.a("LocalDataManager", "Gift Data Cache Set: " + data.size());
        this.f67822h.setValue(data);
    }

    @m8.g
    public final ConfigDnsBean g() {
        ConfigDnsBean dnsCofig = this.f67815a.getDnsCofig();
        return dnsCofig == null ? new ConfigDnsBean() : dnsCofig;
    }

    public final void g0(int i4) {
        this.f67815a.setImRole(i4);
    }

    @m8.h
    public final FanClubInfoBean h() {
        return this.f67815a.getFanClubInfo();
    }

    public final void h0(@m8.g String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.f67818d = token;
        this.f67815a.setJwtToken(token);
    }

    @m8.g
    public final DnsResolver.ForcedServerType i() {
        return DnsResolver.ForcedServerType.NONE;
    }

    public final void i0(@m8.g LocalRoomMsg msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        this.f67819e = msg;
        this.f67815a.setLocalRoomMsg(msg);
    }

    @m8.g
    public final DnsResolver.ForcedDnsResolutionHost j() {
        return DnsResolver.ForcedDnsResolutionHost.PROD;
    }

    public final void j0(boolean z9) {
        this.f67820f.setValue(Boolean.valueOf(z9));
        this.f67815a.setNameCardAllowed(z9);
    }

    @m8.h
    public final GameCenter.GetUrlBean k() {
        return this.f67815a.getGameCenterBean();
    }

    public final void k0(@m8.h List<PeeragePriceBean> list) {
        this.f67815a.setPeeragePrices(list);
    }

    @m8.g
    public final Triple<Boolean, LiveSummary, DistrictType> l() {
        return this.f67825k;
    }

    public final void l0(@m8.h String str) {
        this.f67815a.setPinnedMessageIntro(str);
    }

    @m8.g
    public final List<Gift> m() {
        return this.f67822h.getValue();
    }

    public final void m0(boolean z9) {
        this.f67815a.setStreamContinueInBackground(z9);
    }

    public final int n() {
        return this.f67815a.getImRole();
    }

    public final void n0(@m8.g CaptchaType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.f67815a.setTestServerCaptchaType(type);
    }

    @m8.h
    public final String o() {
        if (TextUtils.isEmpty(this.f67818d)) {
            this.f67818d = this.f67815a.getJwtToken();
        }
        return this.f67818d;
    }

    public final void o0(@m8.h String str) {
        this.f67815a.setTestServerDomain(str);
    }

    public final boolean p() {
        return this.f67815a.getKeepOldAppVersion();
    }

    public final void p0(int i4) {
        this.f67815a.setTranslationModeText(i4);
    }

    @m8.h
    public final LocalRoomMsg q() {
        if (this.f67819e == null) {
            LocalRoomMsg localRoomMsg = this.f67815a.getLocalRoomMsg();
            if (localRoomMsg == null) {
                return null;
            }
            this.f67819e = localRoomMsg;
        }
        return this.f67819e;
    }

    public final void q0(int i4) {
        this.f67815a.setTranslationModeVoice(i4);
    }

    @m8.h
    public final List<PeeragePriceBean> r() {
        return this.f67815a.getPeeragePrices();
    }

    public final void r0(@m8.g LifecycleOwner lifecycle, @m8.g Observer<? super ConfigBean> observer) {
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(observer, "observer");
        this.f67815a.subscribeConfig(lifecycle, observer);
        observer.onChanged(e());
    }

    @m8.h
    public final String s() {
        return this.f67815a.getPinnedMessageIntro();
    }

    public final void s0(@m8.g LifecycleOwner lifecycle, @m8.g Observer<? super UserMoney> observer) {
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(observer, "observer");
        this.f67815a.subscribeUserMoney(lifecycle, observer);
        observer.onChanged(D());
    }

    @m8.g
    public final PrefsHelper t() {
        return this.f67815a;
    }

    @m8.g
    public final List<String> t0(@m8.g String followeeId, boolean z9) {
        List<String> mutableList;
        UserBean copy;
        Intrinsics.checkNotNullParameter(followeeId, "followeeId");
        UserBean C = C();
        Intrinsics.checkNotNull(C);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) C.getFollow_users());
        if (z9) {
            mutableList.add(followeeId);
        } else {
            mutableList.remove(followeeId);
        }
        copy = C.copy((r86 & 1) != 0 ? C.id : null, (r86 & 2) != 0 ? C.sex : 0, (r86 & 4) != 0 ? C.intro : null, (r86 & 8) != 0 ? C.nickname : null, (r86 & 16) != 0 ? C.city : null, (r86 & 32) != 0 ? C.avatartime : null, (r86 & 64) != 0 ? C.birthday : null, (r86 & 128) != 0 ? C.professional : null, (r86 & 256) != 0 ? C.emotion : null, (r86 & 512) != 0 ? C.province : null, (r86 & 1024) != 0 ? C.peerage_id : 0, (r86 & 2048) != 0 ? C.avatar : null, (r86 & 4096) != 0 ? C.snap : null, (r86 & 8192) != 0 ? C.follow_users : mutableList, (r86 & 16384) != 0 ? C.followers_cnt : null, (r86 & 32768) != 0 ? C.followees_cnt : null, (r86 & 65536) != 0 ? C.emceelevel : null, (r86 & 131072) != 0 ? C.familyLevel : null, (r86 & 262144) != 0 ? C.age : 0, (r86 & 524288) != 0 ? C.beanorignal : 0, (r86 & 1048576) != 0 ? C.spendcoin : 0, (r86 & 2097152) != 0 ? C.broadcasting : null, (r86 & 4194304) != 0 ? C.curroomnum : null, (r86 & 8388608) != 0 ? C.toy_enabled : null, (r86 & 16777216) != 0 ? C.toy_status : null, (r86 & 33554432) != 0 ? C.approveid : null, (r86 & 67108864) != 0 ? C.approvetype : 0, (r86 & 134217728) != 0 ? C.is_attention : 0, (r86 & 268435456) != 0 ? C.isHit : 0, (r86 & 536870912) != 0 ? C.name_card : null, (r86 & 1073741824) != 0 ? C.lob_no : 0, (r86 & Integer.MIN_VALUE) != 0 ? C.mysteryId : null, (r87 & 1) != 0 ? C.isMystery : 0, (r87 & 2) != 0 ? C.isGuest : false, (r87 & 4) != 0 ? C.isanchor : false, (r87 & 8) != 0 ? C.iswithdraw : false, (r87 & 16) != 0 ? C.is_lounge_vip : false, (r87 & 32) != 0 ? C.is_subscribe_notify : 0, (r87 & 64) != 0 ? C.is_single_conversation : 0, (r87 & 128) != 0 ? C.is_group_conversation : 0, (r87 & 256) != 0 ? C.is_im : 0, (r87 & 512) != 0 ? C.is_anchor_rank : false, (r87 & 1024) != 0 ? C.is_family : false, (r87 & 2048) != 0 ? C.is_deposit_chip : false, (r87 & 4096) != 0 ? C.is_withdraw_chip : false, (r87 & 8192) != 0 ? C.is_legend : false, (r87 & 16384) != 0 ? C.is_legend_withdraw : false, (r87 & 32768) != 0 ? C.is_join_peerage : false, (r87 & 65536) != 0 ? C.isAdmin : 0, (r87 & 131072) != 0 ? C.interactionReady : 0, (r87 & 262144) != 0 ? C.showLevel : 0, (r87 & 524288) != 0 ? C.showFamilyLevel : 0, (r87 & 1048576) != 0 ? C.showPeerage : 0, (r87 & 2097152) != 0 ? C.showJapanese : 0, (r87 & 4194304) != 0 ? C.realtimeTranslationEnable : null, (r87 & 8388608) != 0 ? C.realtimeTranslationType : null, (r87 & 16777216) != 0 ? C.realtimeSubtitlesOn : 0, (r87 & 33554432) != 0 ? C.menus : null, (r87 & 67108864) != 0 ? C.username : null, (r87 & 134217728) != 0 ? C.iswithdraw_promotion : null, (r87 & 268435456) != 0 ? C.settings : null);
        T(copy);
        return mutableList;
    }

    @m8.g
    public final String u(@m8.g String aId) {
        Intrinsics.checkNotNullParameter(aId, "aId");
        return this.f67815a.getRoomTicketJwt(aId);
    }

    @JvmOverloads
    public final void u0(int i4) {
        x0(this, i4, null, null, 6, null);
    }

    public final long v() {
        return this.f67816b;
    }

    @JvmOverloads
    public final void v0(int i4, @m8.h Integer num) {
        x0(this, i4, num, null, 4, null);
    }

    public final long w() {
        return this.f67816b + (SystemClock.elapsedRealtime() - this.f67817c);
    }

    @JvmOverloads
    public final void w0(int i4, @m8.h Integer num, @m8.h Integer num2) {
        UserMoney userMoney = this.f67815a.getUserMoney();
        if (userMoney == null) {
            return;
        }
        userMoney.setCoinbalance(i4);
        if (num != null) {
            userMoney.setRemainForNextLev(num.intValue());
        }
        if (num2 != null) {
            userMoney.setPointbalance(num2.intValue());
        }
        U(userMoney);
    }

    public final int x() {
        return this.f67824j.getValue().intValue();
    }

    @m8.g
    public final t<Integer> y() {
        return this.f67824j;
    }

    public final boolean y0() {
        return this.f67815a.wasUserGuest();
    }

    public final long z() {
        return this.f67815a.getStreamChatStartTime();
    }
}
