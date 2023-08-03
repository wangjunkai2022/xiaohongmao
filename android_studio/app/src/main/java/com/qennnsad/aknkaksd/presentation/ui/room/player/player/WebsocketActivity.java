package com.qennnsad.aknkaksd.presentation.ui.room.player.player;

import android.app.Activity;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import androidx.appcompat.app.AlertDialog;
import androidx.viewbinding.ViewBinding;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.analytics.data.events.EventKt;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.data.bean.LiveSummary;
import com.qennnsad.aknkaksd.data.bean.pk.JoinPkSuccessMsg;
import com.qennnsad.aknkaksd.data.bean.pk.PkBroadcastMsg;
import com.qennnsad.aknkaksd.data.bean.pk.PkEmptyMsg;
import com.qennnsad.aknkaksd.data.bean.room.eyecatching.PinnedMessageBalanceEvent;
import com.qennnsad.aknkaksd.data.bean.room.eyecatching.PinnedMessageListEvent;
import com.qennnsad.aknkaksd.data.bean.websocket.AnchorCoinBean;
import com.qennnsad.aknkaksd.data.bean.websocket.BlockMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.ChargeTimeRoomMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.ChatNotification;
import com.qennnsad.aknkaksd.data.bean.websocket.DeleteTimeRoomMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.ErrorMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.FanInfoEvent;
import com.qennnsad.aknkaksd.data.bean.websocket.LegendHallWinMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LegendProfitMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LegendWinMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LiveAudienceListMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LocalRoomMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.NameCard;
import com.qennnsad.aknkaksd.data.bean.websocket.NameCardNews;
import com.qennnsad.aknkaksd.data.bean.websocket.NewFanEvent;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageJoinMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageLogin;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageProfitMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.PrivateRoomMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.PrivateTiMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.PrivateTimeMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.RoomPublicMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SendGiftMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SendGiftNewsMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SystemMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SystemWelcome;
import com.qennnsad.aknkaksd.data.bean.websocket.UpdateRoleBean;
import com.qennnsad.aknkaksd.data.bean.websocket.UserPublicMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.WsBleDeviceMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.WsExitMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.WsLoginOutMsg;
import com.qennnsad.aknkaksd.data.websocket.WebSocketService;
import com.qennnsad.aknkaksd.presentation.module.auth.AuthActivity;
import com.qennnsad.aknkaksd.presentation.ui.MainContainerActivity;
import com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity;
import com.qennnsad.aknkaksd.presentation.ui.main.LogoutCaller;
import com.qennnsad.aknkaksd.presentation.ui.room.BaseRoomActivity;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity;
import com.qennnsad.aknkaksd.presentation.ui.widget.a;

/* loaded from: classes3.dex */
public abstract class WebsocketActivity<VB extends ViewBinding> extends BaseRoomActivity<VB> implements WebSocketService.b {
    private com.qennnsad.aknkaksd.presentation.ui.widget.a A;
    private boolean B = false;
    Handler C = new a(Looper.myLooper());
    private final ServiceConnection D = new b();

    /* renamed from: y  reason: collision with root package name */
    protected boolean f53793y;

    /* renamed from: z  reason: collision with root package name */
    private Activity f53794z;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        private void a() {
            if (WebsocketActivity.this.f53794z != null) {
                WebsocketActivity.this.J1();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1 && !WebsocketActivity.this.B) {
                a();
            } else if (message.what == 77) {
                a();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements ServiceConnection {
        b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            com.qennnsad.aknkaksd.util.o0.a(WebsocketActivity.this.f52467h, "Service connected.");
            ((BaseStreamActivity) WebsocketActivity.this).f52480u = ((WebSocketService.c) iBinder).a();
            ((BaseStreamActivity) WebsocketActivity.this).f52480u.L(WebsocketActivity.this);
            WebsocketActivity.this.R1();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            com.qennnsad.aknkaksd.util.o0.a(WebsocketActivity.this.f52467h, "Service disconnected.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements com.qennnsad.aknkaksd.data.websocket.i<ErrorMsg> {

        /* renamed from: a  reason: collision with root package name */
        private AlertDialog f53797a;

        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(DialogInterface dialogInterface, int i4) {
            this.f53797a.dismiss();
            this.f53797a = null;
            MainContainerActivity.s0(WebsocketActivity.this, true);
        }

        @Override // com.qennnsad.aknkaksd.data.websocket.i
        /* renamed from: c */
        public void a(ErrorMsg errorMsg) {
            com.qennnsad.aknkaksd.util.toast.a.k(TextUtils.isEmpty(errorMsg.getContent()) ? errorMsg.getType() : errorMsg.getContent());
            AlertDialog alertDialog = this.f53797a;
            if (alertDialog != null) {
                alertDialog.dismiss();
                this.f53797a = null;
                com.qennnsad.aknkaksd.util.o0.g("alertDialog", "alertDialog!=null--1");
            }
            if (this.f53797a == null) {
                com.qennnsad.aknkaksd.util.o0.g("alertDialog", "alertDialog=null;");
                WebsocketActivity.this.C.sendEmptyMessageDelayed(1, 5000L);
                this.f53797a = new AlertDialog.Builder(WebsocketActivity.this.f53794z).setCancelable(false).setMessage(errorMsg.getContent() + "五秒后自动退出").setPositiveButton(WebsocketActivity.this.getString(R.string.room_live_immediately_outroom), new DialogInterface.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.l3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i4) {
                        WebsocketActivity.c.this.d(dialogInterface, i4);
                    }
                }).create();
                if (WebsocketActivity.this.f53794z != null) {
                    this.f53797a.show();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements a.InterfaceC0456a {
        d() {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.widget.a.InterfaceC0456a
        public void a(com.qennnsad.aknkaksd.presentation.ui.widget.a aVar) {
            aVar.dismiss();
            aVar.cancel();
            WebsocketActivity.this.C.removeMessages(77);
            WebsocketActivity.this.C2();
            MainContainerActivity.s0(WebsocketActivity.this, true);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.widget.a.InterfaceC0456a
        public void b(com.qennnsad.aknkaksd.presentation.ui.widget.a aVar) {
            if (aVar != null && aVar.isShowing()) {
                aVar.dismiss();
            }
            aVar.dismiss();
            aVar.cancel();
            WebsocketActivity.this.C.removeMessages(77);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements com.qennnsad.aknkaksd.data.websocket.i<ErrorMsg> {

        /* renamed from: a  reason: collision with root package name */
        private AlertDialog f53800a;

        e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(DialogInterface dialogInterface, int i4) {
            WebsocketActivity.this.B = true;
            this.f53800a.dismiss();
            this.f53800a = null;
            WebsocketActivity.this.J1();
        }

        @Override // com.qennnsad.aknkaksd.data.websocket.i
        /* renamed from: c */
        public void a(ErrorMsg errorMsg) {
            String content;
            String content2;
            if (com.qennnsad.aknkaksd.data.websocket.b.f47827o.equalsIgnoreCase(errorMsg.getType())) {
                if (errorMsg.getRoom_id() != null && !errorMsg.getRoom_id().equals(WebsocketActivity.this.O1())) {
                    com.qennnsad.aknkaksd.util.o0.g(WebsocketActivity.this.f52467h, "websocket---roomid:" + errorMsg.getRoom_id() + "---mRoomid:" + WebsocketActivity.this.O1());
                    return;
                }
                com.qennnsad.aknkaksd.util.o0.g(WebsocketActivity.this.f52467h, "websocket---roomid:" + errorMsg.getRoom_id() + "---mRoomid:" + WebsocketActivity.this.O1());
                if (this.f53800a == null) {
                    BaseStreamActivity baseStreamActivity = (BaseStreamActivity) WebsocketActivity.this.f53794z;
                    if (TextUtils.isEmpty(errorMsg.getContent())) {
                        content2 = WebsocketActivity.this.getString(R.string.room_live_eliminate_user);
                    } else {
                        content2 = errorMsg.getContent();
                    }
                    WebsocketActivity.this.C.sendEmptyMessageDelayed(1, 5000L);
                    this.f53800a = new AlertDialog.Builder(baseStreamActivity).setCancelable(false).setMessage(content2 + WebsocketActivity.this.getString(R.string.room_live_eliminate_outtime)).setPositiveButton(WebsocketActivity.this.getString(R.string.room_live_immediately_outroom), new DialogInterface.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.m3
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i4) {
                            WebsocketActivity.e.this.d(dialogInterface, i4);
                        }
                    }).create();
                    if (WebsocketActivity.this.f53794z != null) {
                        this.f53800a.show();
                    }
                }
            } else if (com.qennnsad.aknkaksd.data.websocket.b.f47829p.equalsIgnoreCase(errorMsg.getType())) {
                com.qennnsad.aknkaksd.util.toast.a.k(errorMsg.getContent());
                if (WebsocketActivity.this.f53794z != null) {
                    com.qennnsad.aknkaksd.util.l.M(WebsocketActivity.this.f53794z, LogoutCaller.SocketAuth);
                }
            } else if (com.qennnsad.aknkaksd.data.websocket.b.f47825n.equalsIgnoreCase(errorMsg.getType())) {
                if (WebsocketActivity.this.f53794z != null) {
                    if (errorMsg.getContent().contains(com.qennnsad.aknkaksd.data.websocket.b.f47842v0)) {
                        ((BaseStreamActivity) WebsocketActivity.this).f52480u.N();
                        return;
                    }
                    if (TextUtils.isEmpty(errorMsg.getContent())) {
                        content = "插座:" + WebsocketActivity.this.getString(R.string.msg_unknown_error);
                    } else {
                        content = errorMsg.getContent();
                    }
                    WebsocketActivity.this.r(content);
                }
            } else {
                com.qennnsad.aknkaksd.util.toast.a.k(TextUtils.isEmpty(errorMsg.getContent()) ? errorMsg.getType() : errorMsg.getContent());
                com.qennnsad.aknkaksd.util.o0.e(WebsocketActivity.this.f52467h, "Unsupported error type:%s", errorMsg.getType());
            }
        }
    }

    private boolean H1(String str, boolean z9) {
        boolean equals = O1().equals(str);
        if (!equals && z9) {
            com.qennnsad.aknkaksd.util.o0.g(this.f52467h, "notnow-roomid");
            this.f52480u.H(this.f52473n.g(str, N1(), M1()));
        }
        return equals;
    }

    private void Q1() {
        this.f53794z = this;
        bindService(WebSocketService.q(this), this.D, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S1(NameCardNews nameCardNews) {
        if (H1(nameCardNews.getRoom_id(), true)) {
            F2(nameCardNews);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T1(NameCard nameCard) {
        if (H1(nameCard.getRoom_id(), true)) {
            com.qennnsad.aknkaksd.presentation.ui.room.player.player.b.f0(getSupportFragmentManager(), nameCard.getContent());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U1(SystemMsg systemMsg) {
        String str = this.f52467h;
        com.qennnsad.aknkaksd.util.o0.g(str, "rollmsg:" + systemMsg.getContent());
        w1(systemMsg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V1(SystemWelcome systemWelcome) {
        if (H1(systemWelcome.getRoom_id() + "", true)) {
            F2(systemWelcome);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void W1(PrivateTimeMsg privateTimeMsg) {
        com.qennnsad.aknkaksd.util.toast.a.k(privateTimeMsg.getContent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean X1(DialogInterface dialogInterface, int i4, KeyEvent keyEvent) {
        return (i4 == 4 && keyEvent.getRepeatCount() == 0) || i4 == 84;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y1(PrivateTiMsg privateTiMsg) {
        String str;
        com.qennnsad.aknkaksd.util.toast.a.k(privateTiMsg.getContent());
        com.qennnsad.aknkaksd.util.o0.g(this.f52467h, "websocket---privateTimeMsg:" + privateTiMsg.toString());
        int money = privateTiMsg.getMoney();
        BaseBeautyApplication.getInstance().setMoney(money);
        if (privateTiMsg.getPtid() == 2) {
            str = "本房间将在35秒后切换为门票房\n门票价格:" + privateTiMsg.getMoney() + com.qennnsad.aknkaksd.e.f48515g;
        } else {
            str = "本房间将在35秒后切换为计时房\n计费价格:" + privateTiMsg.getMoney() + getString(R.string.fen_bi);
        }
        if (money == 0) {
            return;
        }
        com.qennnsad.aknkaksd.presentation.ui.widget.a aVar = new com.qennnsad.aknkaksd.presentation.ui.widget.a(this.f53794z);
        this.A = aVar;
        aVar.i(str);
        this.A.g("继续观看");
        this.A.e("立即退出");
        this.A.setCancelable(false);
        this.A.setCanceledOnTouchOutside(false);
        this.A.j(new d());
        this.A.setOnKeyListener(w1.f54031a);
        this.A.show();
        this.C.sendEmptyMessageDelayed(77, 30000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z1(PrivateTiMsg privateTiMsg) {
        if (privateTiMsg.getAction() != null && privateTiMsg.getAction().equals(com.qennnsad.aknkaksd.data.websocket.b.E)) {
            int prerequisite = privateTiMsg.getPrerequisite();
            int I1 = I1();
            String str = this.f52467h;
            com.qennnsad.aknkaksd.util.o0.a(str, "Charge room price: " + prerequisite);
            String str2 = this.f52467h;
            com.qennnsad.aknkaksd.util.o0.a(str2, "Current user balance: " + I1);
            if (I1 < prerequisite) {
                com.qennnsad.aknkaksd.util.toast.a.h(R.string.msg_insufficient_balance_error);
                this.C.removeMessages(77);
                C2();
                MainContainerActivity.s0(this, true);
                return;
            } else if (privateTiMsg.getPtid() == 4) {
                v1(true, "已花费" + prerequisite + com.qennnsad.aknkaksd.e.f48515g);
                if (privateTiMsg.getPlid() != null) {
                    p1(g5.h.f67840d, Integer.parseInt(privateTiMsg.getPlid()));
                }
            } else if (privateTiMsg.getPtid() == 2 && privateTiMsg.getPlid() != null) {
                p1("2", Integer.parseInt(privateTiMsg.getPlid()));
            }
        }
        if (privateTiMsg.getAction() != null && privateTiMsg.getAction().equals(com.qennnsad.aknkaksd.data.websocket.b.F)) {
            if (privateTiMsg.getPtid() == 4) {
                s1(true);
            } else if (privateTiMsg.getPtid() == 2) {
                s1(true);
            }
        }
        com.qennnsad.aknkaksd.util.toast.a.k(privateTiMsg.getContent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a2(PrivateRoomMsg privateRoomMsg) {
        com.qennnsad.aknkaksd.util.o0.g("这里有好多钱", "" + privateRoomMsg.getData().getMoney());
        String valueOf = String.valueOf(privateRoomMsg.getData().getMoney());
        v1(true, "已花费" + valueOf + getString(R.string.gold));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b2(PrivateRoomMsg privateRoomMsg) {
        com.qennnsad.aknkaksd.util.o0.g("这里有好多时间", "" + privateRoomMsg.getData().getMoney());
        int point = privateRoomMsg.getData().getPoint();
        int i4 = point >= 60 ? point / 60 : 0;
        v1(false, "已花费" + i4 + "分钟");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c2(DeleteTimeRoomMsg deleteTimeRoomMsg) {
        com.qennnsad.aknkaksd.util.o0.g("Money deduct: ", "" + deleteTimeRoomMsg.toString());
        y1(deleteTimeRoomMsg.getContent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d2(DeleteTimeRoomMsg deleteTimeRoomMsg) {
        com.qennnsad.aknkaksd.util.o0.g("这里是时间更新的数据", "" + deleteTimeRoomMsg.toString());
        z1(deleteTimeRoomMsg.getContent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e2(BlockMsg blockMsg) {
        if (H1(blockMsg.getRoom_id(), false)) {
            String str = this.f52467h;
            com.qennnsad.aknkaksd.util.o0.g(str, "BlockMsg:" + blockMsg.toString());
            G1(blockMsg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f2(WsBleDeviceMsg wsBleDeviceMsg) {
        com.qennnsad.aknkaksd.util.o0.g("Bluetooth data accepted here", "" + wsBleDeviceMsg.toString());
        r1(wsBleDeviceMsg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g2(WsLoginOutMsg wsLoginOutMsg) {
        com.qennnsad.aknkaksd.util.o0.g("mrl", "wsLoginOutMsg" + wsLoginOutMsg);
        if (wsLoginOutMsg.getUser_id() == null || !K1().equals(wsLoginOutMsg.getUser_id()) || K1().equals(this.f52469j.C().getId())) {
            return;
        }
        E2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h2(WsExitMsg wsExitMsg) {
        this.f52475p = true;
        com.qennnsad.aknkaksd.util.toast.a.k(wsExitMsg.getMessage());
        AuthActivity.k0(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i2(UserPublicMsg userPublicMsg) {
        if (H1(userPublicMsg.getRoomId() + "", true)) {
            F2(userPublicMsg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j2(LiveAudienceListMsg liveAudienceListMsg) {
        String str = this.f52467h;
        com.qennnsad.aknkaksd.util.o0.g(str, "LiveAudienceListMsg-roomid:" + liveAudienceListMsg.getRoom_id() + "---mRoomid:" + O1());
        if (H1(liveAudienceListMsg.getRoom_id() + "", true)) {
            t1(liveAudienceListMsg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k2(AnchorCoinBean anchorCoinBean) {
        if (H1(anchorCoinBean.getRoom_id() + "", true)) {
            ChargeTimeRoomMsg chargeTimeRoomMsg = new ChargeTimeRoomMsg();
            chargeTimeRoomMsg.setBeanorignal(anchorCoinBean.getAmount());
            x1(chargeTimeRoomMsg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l2(UpdateRoleBean updateRoleBean) {
        LocalRoomMsg q9;
        if (!H1(updateRoleBean.getRoom_id() + "", true) || (q9 = this.f52469j.q()) == null) {
            return;
        }
        q9.setRole(updateRoleBean.getRole());
        x2(q9);
        F2(updateRoleBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m2(LocalRoomMsg localRoomMsg) {
        if (H1(localRoomMsg.getRoomId() + "", true)) {
            String str = this.f52467h;
            com.qennnsad.aknkaksd.util.o0.g(str, "LocalRoomMsg:" + localRoomMsg.toString());
            LocalRoomMsg q9 = this.f52469j.q();
            if (q9 == null) {
                String str2 = this.f52467h;
                com.qennnsad.aknkaksd.util.o0.g(str2, "LocalRoomMsg-setlcoal:" + localRoomMsg.toString());
                q9 = localRoomMsg;
            } else {
                String str3 = this.f52467h;
                com.qennnsad.aknkaksd.util.o0.g(str3, "LocalRoomMsg-lcoal:" + q9.toString());
            }
            q9.setRoomAd(localRoomMsg.getRoomAd());
            q9.setRole(localRoomMsg.getRole());
            q9.setRoomId(localRoomMsg.getRoomId());
            if (localRoomMsg.getPromptTime() != 0) {
                q9.setPromptTime(localRoomMsg.getPromptTime());
                q9.setPromptContent(localRoomMsg.getPromptContent().trim());
            }
            if (localRoomMsg.getRollmsgTime() != 0) {
                q9.setRollmsgTime(localRoomMsg.getRollmsgTime());
                q9.setRollmsgContent(localRoomMsg.getRollmsgContent());
            }
            q9.setHasNamecard(localRoomMsg.getHasNamecard());
            x2(q9);
            SystemMsg systemMsg = new SystemMsg();
            systemMsg.setRoom_ad(q9.getRoomAd());
            systemMsg.setRollmsg_content(q9.getRollmsgContent());
            systemMsg.setRoom_id(q9.getRoomId());
            w1(systemMsg);
            SystemMsg systemMsg2 = new SystemMsg();
            systemMsg2.setContent(q9.getPromptContent().trim());
            systemMsg2.setRoom_id(q9.getRoomId());
            F2(systemMsg2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n2(PinnedMessageBalanceEvent pinnedMessageBalanceEvent) {
        s2(pinnedMessageBalanceEvent.getAnchorBalance());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o2(PkEmptyMsg pkEmptyMsg) {
        v2(pkEmptyMsg.getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p2(PkEmptyMsg pkEmptyMsg) {
        u2(pkEmptyMsg.getType());
        if (TextUtils.isEmpty(pkEmptyMsg.getContent())) {
            return;
        }
        com.qennnsad.aknkaksd.util.toast.a.k(pkEmptyMsg.getContent());
    }

    protected void A2() {
        if (this.f52480u != null) {
            com.qennnsad.aknkaksd.data.websocket.i iVar = new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.d3
                @Override // com.qennnsad.aknkaksd.data.websocket.i
                public final void a(Object obj) {
                    WebsocketActivity.this.o2((PkEmptyMsg) obj);
                }
            };
            this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47824m0, iVar);
            this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47826n0, iVar);
            this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47828o0, iVar);
            com.qennnsad.aknkaksd.data.websocket.i iVar2 = new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.f3
                @Override // com.qennnsad.aknkaksd.data.websocket.i
                public final void a(Object obj) {
                    WebsocketActivity.this.p2((PkEmptyMsg) obj);
                }
            };
            this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47822l0, iVar2);
            this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47820k0, iVar2);
            this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47818j0, iVar2);
            this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47834r0, iVar2);
            this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47830p0, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.s2
                @Override // com.qennnsad.aknkaksd.data.websocket.i
                public final void a(Object obj) {
                    WebsocketActivity.this.w2((PkBroadcastMsg) obj);
                }
            });
            this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47816i0, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.h2
                @Override // com.qennnsad.aknkaksd.data.websocket.i
                public final void a(Object obj) {
                    WebsocketActivity.this.r2((JoinPkSuccessMsg) obj);
                }
            });
            com.qennnsad.aknkaksd.util.o0.a(this.f52467h, "PK listeners registered!");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void B2() {
        String str = this.f52467h;
        StringBuilder sb = new StringBuilder();
        sb.append("xxx Sending login Request. isKicked: ");
        sb.append(this.f52475p);
        sb.append(" isSocketAlive: ");
        sb.append(this.f52480u != null);
        com.qennnsad.aknkaksd.util.o0.a(str, sb.toString());
        if (this.f52480u != null) {
            String O1 = O1();
            this.f52480u.H(this.f52473n.e(O1));
            this.f52470k.d(EventSignature.APP_ENTER_ROOM, O1, K1(), EventKt.roomTypeToName(P1()));
            return;
        }
        this.f52475p = true;
        com.qennnsad.aknkaksd.util.toast.a.k(com.qennnsad.aknkaksd.data.websocket.b.f47842v0);
        com.qennnsad.aknkaksd.util.l.M(this, LogoutCaller.SocketOffline);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity
    public void C0(Intent intent, boolean z9, Bundle bundle) {
        super.C0(intent, z9, bundle);
        WebSocketService webSocketService = this.f52480u;
        if (webSocketService != null) {
            webSocketService.L(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void C2() {
        String str = this.f52467h;
        StringBuilder sb = new StringBuilder();
        sb.append("xxx Sending logout Request. isKicked: ");
        sb.append(this.f52475p);
        sb.append(" isSocketAlive: ");
        sb.append(this.f52480u != null);
        com.qennnsad.aknkaksd.util.o0.a(str, sb.toString());
        if (this.f52475p || this.f52480u == null) {
            return;
        }
        String O1 = O1();
        long M1 = M1();
        this.f52480u.H(this.f52473n.g(O1(), N1(), M1));
        if (M1 > 0) {
            this.f52470k.d(EventSignature.APP_LEAVE_ROOM, String.valueOf(M1), O1, K1(), EventKt.roomTypeToName(P1()));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void D2(Integer num) {
        String str = this.f52467h;
        StringBuilder sb = new StringBuilder();
        sb.append("xxx Sending reduce free preview. isKicked: ");
        sb.append(this.f52475p);
        sb.append(" isSocketAlive: ");
        sb.append(this.f52480u != null);
        com.qennnsad.aknkaksd.util.o0.a(str, sb.toString());
        WebSocketService webSocketService = this.f52480u;
        if (webSocketService != null) {
            webSocketService.H(this.f52473n.l(num));
            return;
        }
        this.f52475p = true;
        com.qennnsad.aknkaksd.util.toast.a.k(com.qennnsad.aknkaksd.data.websocket.b.f47842v0);
        com.qennnsad.aknkaksd.util.l.M(this, LogoutCaller.SocketOffline);
    }

    abstract void E2();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void F2(RoomPublicMsg roomPublicMsg);

    protected abstract void G1(BlockMsg blockMsg);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void G2(SendGiftMsg sendGiftMsg);

    protected abstract int I1();

    protected abstract void J1();

    protected abstract String K1();

    protected abstract LiveSummary L1();

    protected abstract long M1();

    protected abstract String N1();

    protected abstract String O1();

    abstract int P1();

    /* JADX INFO: Access modifiers changed from: protected */
    public void R1() {
        com.qennnsad.aknkaksd.util.o0.a(this.f52467h, "Init websocket listeners...");
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.N, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.j2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.S1((NameCardNews) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.O, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.i2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.T1((NameCard) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.T, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.j3
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.e2((BlockMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47821l, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.c3
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.g2((WsLoginOutMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47831q, new c());
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47843w, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.b3
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.h2((WsExitMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47833r, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.a2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.q1((ErrorMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47803c, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.z2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.i2((UserPublicMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47837t, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.f2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.j2((LiveAudienceListMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47813h, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.v2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.F2((SystemMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.Y, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.l2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.F2((PeerageJoinMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.Z, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.n2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.F2((PeerageProfitMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47800a0, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.i3
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.k2((AnchorCoinBean) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.X, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.m2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.u1((PeerageLogin) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.R, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.v2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.F2((SystemMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.Q, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.y2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.l2((UpdateRoleBean) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.P, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.g2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.m2((LocalRoomMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47815i, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.w2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.U1((SystemMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47819k, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.x2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.V1((SystemWelcome) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.A, e3.f53862a);
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.D, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.q2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.Y1((PrivateTiMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.G, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.r2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.Z1((PrivateTiMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47825n, new e());
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.B, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.o2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.a2((PrivateRoomMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.C, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.p2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.b2((PrivateRoomMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47823m, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.t2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.G2((SendGiftMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47805d, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.u2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.F2((SendGiftNewsMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.U, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.e2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.F2((LegendWinMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.V, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.c2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.F2((LegendHallWinMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.W, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.d2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.F2((LegendProfitMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.H, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.k3
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.x1((ChargeTimeRoomMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.I, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.z1
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.c2((DeleteTimeRoomMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.J, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.y1
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.d2((DeleteTimeRoomMsg) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47840u0, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.x1
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.F2((ChatNotification) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47807e, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.a3
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.f2((WsBleDeviceMsg) obj);
            }
        });
        E0();
        A2();
        if (this.f52469j.G()) {
            z2();
        }
        y2();
        com.qennnsad.aknkaksd.util.o0.a(this.f52467h, "xxx All Sockets registered!");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i4, int i10, Intent intent) {
        String str = this.f52467h;
        com.qennnsad.aknkaksd.util.o0.j(str, "--- onActivityResult --- requestCode=" + i4 + ",resultCode=" + i10 + ", data=" + intent);
        super.onActivityResult(i4, i10, intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity, com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Q1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        WebSocketService webSocketService = this.f52480u;
        if (webSocketService != null) {
            if (this.f53793y) {
                com.qennnsad.aknkaksd.util.o0.a(this.f52467h, "Socket Listeners Preserved!");
            } else {
                webSocketService.G();
            }
        }
        ServiceConnection serviceConnection = this.D;
        if (serviceConnection != null) {
            unbindService(serviceConnection);
        }
        com.qennnsad.aknkaksd.presentation.ui.widget.a aVar = this.A;
        if (aVar != null && aVar.isShowing()) {
            this.A.dismiss();
        }
        Handler handler = this.C;
        if (handler != null) {
            handler.removeMessages(1);
            this.C.removeMessages(77);
        }
        this.f53794z = null;
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        com.qennnsad.aknkaksd.util.o0.g("IntentX", "New intent");
        super.onNewIntent(intent);
        if (this instanceof PlayerActivity) {
            C0(intent, true, null);
        } else {
            B0(intent, true);
        }
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        com.qennnsad.aknkaksd.util.o0.j(this.f52467h, "----- onRestoreInstanceState -----");
        super.onRestoreInstanceState(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        com.qennnsad.aknkaksd.util.o0.j(this.f52467h, "----- onSaveInstanceState -----");
        super.onSaveInstanceState(bundle);
    }

    protected abstract void p1(String str, int i4);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void q1(ErrorMsg errorMsg);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void q2(FanInfoEvent fanInfoEvent);

    protected abstract void r1(WsBleDeviceMsg wsBleDeviceMsg);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void r2(JoinPkSuccessMsg joinPkSuccessMsg);

    protected abstract void s1(boolean z9);

    protected abstract void s2(int i4);

    protected abstract void t1(LiveAudienceListMsg liveAudienceListMsg);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void t2(PinnedMessageListEvent pinnedMessageListEvent);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void u1(PeerageLogin peerageLogin);

    protected abstract void u2(String str);

    protected abstract void v1(boolean z9, String str);

    protected abstract void v2(String str);

    protected abstract void w1(SystemMsg systemMsg);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void w2(PkBroadcastMsg pkBroadcastMsg);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void x1(ChargeTimeRoomMsg chargeTimeRoomMsg);

    /* JADX INFO: Access modifiers changed from: protected */
    public void x2(LocalRoomMsg localRoomMsg) {
        this.f52469j.i0(localRoomMsg);
    }

    protected abstract void y1(int i4);

    protected void y2() {
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47804c0, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.k2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.F2((NewFanEvent) obj);
            }
        });
        this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47806d0, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.b2
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                WebsocketActivity.this.q2((FanInfoEvent) obj);
            }
        });
    }

    protected abstract void z1(int i4);

    protected void z2() {
        if (this.f52480u != null) {
            this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47836s0, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.h3
                @Override // com.qennnsad.aknkaksd.data.websocket.i
                public final void a(Object obj) {
                    WebsocketActivity.this.t2((PinnedMessageListEvent) obj);
                }
            });
            this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47838t0, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.g3
                @Override // com.qennnsad.aknkaksd.data.websocket.i
                public final void a(Object obj) {
                    WebsocketActivity.this.n2((PinnedMessageBalanceEvent) obj);
                }
            });
        }
    }
}
