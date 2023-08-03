package com.qennnsad.aknkaksd.data.websocket;

import android.util.SparseArray;
import androidx.core.app.FrameMetricsAggregator;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.bean.websocket.LocalRoomMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SendPrivate;
import com.qennnsad.aknkaksd.data.bean.websocket.SendPublic;
import com.qennnsad.aknkaksd.data.bean.websocket.ToyPlayMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.WsLoginRequest;
import com.qennnsad.aknkaksd.data.bean.websocket.WsLoginServerRequest;
import com.qennnsad.aknkaksd.data.bean.websocket.WsLogoutRequest;
import com.qennnsad.aknkaksd.data.bean.websocket.WsPongRequest;
import com.qennnsad.aknkaksd.data.bean.websocket.WsPublicMsgRequest;
import com.qennnsad.aknkaksd.data.bean.websocket.WsReduceFreePreviewRequest;
import com.qennnsad.aknkaksd.data.bean.websocket.WsRequest;
import com.qennnsad.aknkaksd.data.bean.websocket.WsRoomManageRequest;
import com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper;
import com.qennnsad.aknkaksd.util.o0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WsObjectPool.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u00106\u001a\u000204\u0012\u0006\u0010E\u001a\u00020D¢\u0006\u0004\bF\u0010GJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J&\u0010\t\u001a\u0004\u0018\u00018\u0000\"\n\b\u0000\u0010\u0006*\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0082\u0002¢\u0006\u0004\b\t\u0010\nJ\u0006\u0010\f\u001a\u00020\u000bJ$\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u000fJ$\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0014\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0019\u001a\u00020\u0018J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000fJ\b\u0010 \u001a\u0004\u0018\u00010\u001fJ\u0006\u0010\"\u001a\u00020!J\u0006\u0010$\u001a\u00020#J\u0006\u0010&\u001a\u00020%J&\u0010+\u001a\u0004\u0018\u00010*2\b\u0010'\u001a\u0004\u0018\u00010\u000f2\b\u0010(\u001a\u0004\u0018\u00010\u000f2\b\u0010)\u001a\u0004\u0018\u00010\u000fJ.\u0010-\u001a\u00020*2\b\u0010,\u001a\u0004\u0018\u00010\u000f2\b\u0010(\u001a\u0004\u0018\u00010\u000f2\b\u0010)\u001a\u0004\u0018\u00010\u000f2\b\u0010'\u001a\u0004\u0018\u00010\u000fJ\b\u0010/\u001a\u0004\u0018\u00010.J\u001b\u00102\u001a\u0004\u0018\u0001012\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b2\u00103R\u0014\u00106\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00105R\u001c\u00109\u001a\n 7*\u0004\u0018\u00010\u000f0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u00108R\u001e\u0010=\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0018\u0010>\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u00108R\u0018\u0010?\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00108R\u0018\u0010@\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u00108R\u0018\u0010A\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u00108R\u0016\u0010C\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010B¨\u0006H"}, d2 = {"Lcom/qennnsad/aknkaksd/data/websocket/j;", "", "", "a", "r", "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;", ExifInterface.GPS_DIRECTION_TRUE, "", "index", "b", "(I)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;", "", "q", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "loginInfo", "", "jwtToken", "Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;", "localRoomMsg", "c", "roomId", "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginRequest;", "e", "status", "", "seconds", "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLogoutRequest;", "g", "content", "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPublicMsgRequest;", "j", "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;", "h", "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPrivate;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendPublic;", "k", "Lcom/qennnsad/aknkaksd/data/bean/websocket/ToyPlayMsg;", "p", "type", "targetUserId", "targetUsername", "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRoomManageRequest;", "n", "method", "o", "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsLoginServerRequest;", "f", com.qennnsad.aknkaksd.domain.usecase.anchor.j.f47980a, "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsReduceFreePreviewRequest;", "l", "(Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsReduceFreePreviewRequest;", "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;", "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;", "prefsHelper", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "LOG_TAG", "Landroid/util/SparseArray;", "d", "Landroid/util/SparseArray;", "requestArray", "nickname", "userId", "token", "ucuid", "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPongRequest;", "PONG_INSTANCE", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final PrefsHelper f47855a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f47856b;

    /* renamed from: c  reason: collision with root package name */
    private final String f47857c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private SparseArray<WsRequest> f47858d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private String f47859e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private String f47860f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private String f47861g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private String f47862h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private WsPongRequest f47863i;

    @u7.a
    public j(@m8.g PrefsHelper prefsHelper, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(prefsHelper, "prefsHelper");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f47855a = prefsHelper;
        this.f47856b = localDataManager;
        this.f47857c = j.class.getSimpleName();
        WsPongRequest wsPongRequest = new WsPongRequest();
        wsPongRequest.setMethod(b.f47839u);
        wsPongRequest.setDevice("android");
        this.f47863i = wsPongRequest;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002a, code lost:
        if (r0.size() == 0) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean a() {
        /*
            r6 = this;
            java.lang.String r0 = r6.f47859e
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            if (r0 != 0) goto L2c
            java.lang.String r0 = r6.f47860f
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L2c
            java.lang.String r0 = r6.f47861g
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L2c
            java.lang.String r0 = r6.f47862h
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L2c
            android.util.SparseArray<com.qennnsad.aknkaksd.data.bean.websocket.WsRequest> r0 = r6.f47858d
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            int r0 = r0.size()
            if (r0 != 0) goto L50
        L2c:
            java.lang.String r0 = r6.f47857c
            r2 = 4
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.String r3 = r6.f47859e
            r4 = 0
            r2[r4] = r3
            java.lang.String r3 = r6.f47860f
            r2[r1] = r3
            r3 = 2
            java.lang.String r5 = r6.f47861g
            r2[r3] = r5
            r3 = 3
            android.util.SparseArray<com.qennnsad.aknkaksd.data.bean.websocket.WsRequest> r5 = r6.f47858d
            r2[r3] = r5
            java.lang.String r3 = "un=%s, userId=%s, token=%s, array=%s"
            com.qennnsad.aknkaksd.util.o0.h(r0, r3, r2)
            boolean r0 = r6.r()
            if (r0 != 0) goto L50
            return r4
        L50:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.data.websocket.j.a():boolean");
    }

    private final <T extends WsRequest> T b(int i4) {
        SparseArray<WsRequest> sparseArray = this.f47858d;
        if (sparseArray != null) {
            Intrinsics.checkNotNull(sparseArray);
            return (T) sparseArray.get(i4);
        }
        return null;
    }

    public static /* synthetic */ void d(j jVar, UserBean userBean, String str, LocalRoomMsg localRoomMsg, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            localRoomMsg = null;
        }
        jVar.c(userBean, str, localRoomMsg);
    }

    public static /* synthetic */ WsReduceFreePreviewRequest m(j jVar, Integer num, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            num = null;
        }
        return jVar.l(num);
    }

    private final boolean r() {
        UserBean C = this.f47856b.C();
        String str = this.f47857c;
        Object[] objArr = new Object[1];
        objArr[0] = Boolean.valueOf(C != null);
        o0.b(str, "Trying to restore ws object pool: login info not empty: ", objArr);
        if (C != null) {
            c(C, this.f47856b.o(), this.f47856b.q());
            o0.g(this.f47857c, "Ws object pool has been restored successfully.");
            return true;
        }
        return false;
    }

    public final void c(@m8.g UserBean loginInfo, @m8.h String str, @m8.h LocalRoomMsg localRoomMsg) {
        Intrinsics.checkNotNullParameter(loginInfo, "loginInfo");
        String nickname = loginInfo.getNickname();
        String id = loginInfo.getId();
        this.f47861g = str;
        this.f47860f = id;
        this.f47859e = nickname;
        this.f47862h = this.f47862h;
        this.f47858d = new SparseArray<>();
        WsLoginRequest wsLoginRequest = new WsLoginRequest();
        wsLoginRequest.setMethod(b.f47819k);
        wsLoginRequest.setUserName(nickname);
        wsLoginRequest.setToken(str);
        wsLoginRequest.setUserId(id);
        wsLoginRequest.setDeviceId(this.f47855a.getImei());
        LocalRoomMsg localRoomMsg2 = localRoomMsg == null ? new LocalRoomMsg(null, null, null, 0, null, 0, null, 0, null, FrameMetricsAggregator.EVERY_DURATION, null) : localRoomMsg;
        wsLoginRequest.setRollmsg_time(localRoomMsg2.getRollmsgTime());
        wsLoginRequest.setPrompt_time(localRoomMsg2.getPromptTime());
        if (loginInfo.getEmceelevel() != null) {
            wsLoginRequest.setLevelId(loginInfo.getEmceelevel());
        } else {
            wsLoginRequest.setLevelId("1");
        }
        wsLoginRequest.setUcuid(this.f47862h);
        SparseArray<WsRequest> sparseArray = this.f47858d;
        Intrinsics.checkNotNull(sparseArray);
        sparseArray.put(1, wsLoginRequest);
        WsLogoutRequest wsLogoutRequest = new WsLogoutRequest();
        wsLogoutRequest.setMethod(b.f47821l);
        wsLogoutRequest.setUserName(nickname);
        wsLogoutRequest.setToken(str);
        wsLogoutRequest.setUserId(id);
        SparseArray<WsRequest> sparseArray2 = this.f47858d;
        Intrinsics.checkNotNull(sparseArray2);
        sparseArray2.put(2, wsLogoutRequest);
        WsPublicMsgRequest wsPublicMsgRequest = new WsPublicMsgRequest();
        wsPublicMsgRequest.setMethod(b.f47803c);
        wsPublicMsgRequest.setChecksum("");
        SparseArray<WsRequest> sparseArray3 = this.f47858d;
        Intrinsics.checkNotNull(sparseArray3);
        sparseArray3.put(3, wsPublicMsgRequest);
        WsRoomManageRequest wsRoomManageRequest = new WsRoomManageRequest();
        wsRoomManageRequest.setMethod("Manage");
        SparseArray<WsRequest> sparseArray4 = this.f47858d;
        Intrinsics.checkNotNull(sparseArray4);
        sparseArray4.put(4, wsRoomManageRequest);
        WsLoginServerRequest wsLoginServerRequest = new WsLoginServerRequest();
        wsLoginServerRequest.setMethod(b.f47845y);
        wsLoginServerRequest.setUserId(id);
        wsLoginServerRequest.setDeviceId(this.f47855a.getImei());
        wsLoginServerRequest.setToken(str);
        wsLoginServerRequest.setPlat("android");
        wsLoginServerRequest.setVer(com.qennnsad.aknkaksd.e.f48514f);
        wsLoginServerRequest.setIssued(com.qennnsad.aknkaksd.e.f48531w);
        wsLoginServerRequest.setLob(Integer.valueOf(loginInfo.getLob_no()));
        wsLoginServerRequest.setRid(1);
        SparseArray<WsRequest> sparseArray5 = this.f47858d;
        Intrinsics.checkNotNull(sparseArray5);
        sparseArray5.put(6, wsLoginServerRequest);
        SendPrivate sendPrivate = new SendPrivate();
        sendPrivate.set_method_(b.f47809f);
        SparseArray<WsRequest> sparseArray6 = this.f47858d;
        Intrinsics.checkNotNull(sparseArray6);
        sparseArray6.put(7, sendPrivate);
        SendPublic sendPublic = new SendPublic();
        sendPublic.set_method_(b.f47811g);
        SparseArray<WsRequest> sparseArray7 = this.f47858d;
        Intrinsics.checkNotNull(sparseArray7);
        sparseArray7.put(8, sendPublic);
        ToyPlayMsg toyPlayMsg = new ToyPlayMsg();
        toyPlayMsg.set_method_("toyPlayEnd");
        SparseArray<WsRequest> sparseArray8 = this.f47858d;
        Intrinsics.checkNotNull(sparseArray8);
        sparseArray8.put(9, toyPlayMsg);
    }

    @m8.h
    public final WsLoginRequest e(@m8.h String str) {
        UserBean C = this.f47856b.C();
        if (a()) {
            WsRequest b10 = b(1);
            Intrinsics.checkNotNull(b10);
            WsLoginRequest wsLoginRequest = (WsLoginRequest) b10;
            wsLoginRequest.setRoomId(str);
            if (C != null) {
                wsLoginRequest.setAvatartime(C.getAvatartime());
            }
            return wsLoginRequest;
        }
        return null;
    }

    @m8.h
    public final WsLoginServerRequest f() {
        return (WsLoginServerRequest) b(6);
    }

    @m8.h
    public final WsLogoutRequest g(@m8.h String str, @m8.h String str2, long j4) {
        if (a()) {
            WsRequest b10 = b(2);
            Intrinsics.checkNotNull(b10);
            WsLogoutRequest wsLogoutRequest = (WsLogoutRequest) b10;
            wsLogoutRequest.setRoomId(str);
            wsLogoutRequest.setPlay_status(str2);
            wsLogoutRequest.setPlay_seconds(j4 / 1000);
            return wsLogoutRequest;
        }
        return null;
    }

    @m8.h
    public final WsPongRequest h() {
        return this.f47863i;
    }

    @m8.g
    public final SendPrivate i() {
        WsRequest b10 = b(7);
        Intrinsics.checkNotNull(b10);
        return (SendPrivate) b10;
    }

    @m8.h
    public final WsPublicMsgRequest j(@m8.h String str) {
        if (a()) {
            WsRequest b10 = b(3);
            Intrinsics.checkNotNull(b10);
            WsPublicMsgRequest wsPublicMsgRequest = (WsPublicMsgRequest) b10;
            wsPublicMsgRequest.setContent(str);
            return wsPublicMsgRequest;
        }
        return null;
    }

    @m8.g
    public final SendPublic k() {
        WsRequest b10 = b(8);
        Intrinsics.checkNotNull(b10);
        return (SendPublic) b10;
    }

    @m8.h
    public final WsReduceFreePreviewRequest l(@m8.h Integer num) {
        if (a()) {
            return new WsReduceFreePreviewRequest(null, num, 1, null);
        }
        return null;
    }

    @m8.h
    public final WsRoomManageRequest n(@m8.h String str, @m8.h String str2, @m8.h String str3) {
        if (a()) {
            WsRequest b10 = b(4);
            Intrinsics.checkNotNull(b10);
            WsRoomManageRequest wsRoomManageRequest = (WsRoomManageRequest) b10;
            wsRoomManageRequest.setType(str);
            wsRoomManageRequest.setTargetUserId(str2);
            wsRoomManageRequest.setTargetUsername(str3);
            return wsRoomManageRequest;
        }
        return null;
    }

    @m8.g
    public final WsRoomManageRequest o(@m8.h String str, @m8.h String str2, @m8.h String str3, @m8.h String str4) {
        WsRequest b10 = b(4);
        Intrinsics.checkNotNull(b10);
        WsRoomManageRequest wsRoomManageRequest = (WsRoomManageRequest) b10;
        wsRoomManageRequest.setMethod(str);
        wsRoomManageRequest.setType(str4);
        wsRoomManageRequest.setTargetUserId(str2);
        wsRoomManageRequest.setTargetUsername(str3);
        return wsRoomManageRequest;
    }

    @m8.g
    public final ToyPlayMsg p() {
        WsRequest b10 = b(9);
        Intrinsics.checkNotNull(b10);
        return (ToyPlayMsg) b10;
    }

    public final void q() {
        this.f47859e = null;
        this.f47861g = null;
        this.f47860f = null;
        SparseArray<WsRequest> sparseArray = this.f47858d;
        if (sparseArray != null) {
            Intrinsics.checkNotNull(sparseArray);
            sparseArray.clear();
            this.f47858d = null;
        }
    }
}
