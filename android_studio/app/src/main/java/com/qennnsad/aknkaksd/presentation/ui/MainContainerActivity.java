package com.qennnsad.aknkaksd.presentation.ui;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.view.LayoutInflater;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.navigation.fragment.NavHostFragment;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean;
import com.qennnsad.aknkaksd.data.bean.websocket.PopupWindowMsg;
import com.qennnsad.aknkaksd.data.websocket.WebSocketService;
import com.qennnsad.aknkaksd.data.websocket.i;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity;
import com.qennnsad.aknkaksd.presentation.ui.widget.a;
import com.qennnsad.aknkaksd.util.l;
import e5.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import timber.log.Timber;

/* compiled from: MainContainerActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cB\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0012\u0010\u0007\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016J\u0012\u0010\r\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014J\b\u0010\u000e\u001a\u00020\u0003H\u0014J\b\u0010\u000f\u001a\u00020\u0003H\u0014R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001d"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;", "Le5/h;", "", "p0", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;", "limitBean", "o0", "Landroid/view/LayoutInflater;", "layoutInflater", "n0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "onResume", "onDestroy", "Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;", "k", "Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;", "wsService", "Landroid/content/ServiceConnection;", "l", "Landroid/content/ServiceConnection;", "wsConnection", "<init>", "()V", "m", "a", "b", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class MainContainerActivity extends Hilt_MainContainerActivity<h> {
    @g

    /* renamed from: m  reason: collision with root package name */
    public static final a f52459m = new a(null);
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private WebSocketService f52460k;
    @g

    /* renamed from: l  reason: collision with root package name */
    private final ServiceConnection f52461l = new d();

    /* compiled from: MainContainerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0016\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0003H\u0007¨\u0006\t"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;", "", "Landroid/content/Context;", "", "singleTop", "", "b", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void c(a aVar, Context context, boolean z9, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                z9 = false;
            }
            aVar.b(context, z9);
        }

        @JvmStatic
        @JvmOverloads
        public final void a(@g Context context) {
            Intrinsics.checkNotNullParameter(context, "<this>");
            c(this, context, false, 1, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void b(@g Context context, boolean z9) {
            Intrinsics.checkNotNullParameter(context, "<this>");
            Intent intent = new Intent(context, MainContainerActivity.class);
            if (z9) {
                intent.setFlags(536870912);
            } else {
                intent.addFlags(268468224);
            }
            context.startActivity(intent);
        }
    }

    /* compiled from: MainContainerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\t"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$b;", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;", "dialog", "", "b", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static class b implements a.InterfaceC0456a {
        @Override // com.qennnsad.aknkaksd.presentation.ui.widget.a.InterfaceC0456a
        public void a(@m8.h com.qennnsad.aknkaksd.presentation.ui.widget.a aVar) {
            if (aVar != null) {
                aVar.dismiss();
            }
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.widget.a.InterfaceC0456a
        public void b(@m8.h com.qennnsad.aknkaksd.presentation.ui.widget.a aVar) {
            if (aVar == null || !aVar.isShowing()) {
                return;
            }
            aVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MainContainerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<PrivateLimitBean, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.h PrivateLimitBean privateLimitBean) {
            MainContainerActivity.this.o0(privateLimitBean);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(PrivateLimitBean privateLimitBean) {
            a(privateLimitBean);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: MainContainerActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\t"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$d", "Landroid/content/ServiceConnection;", "Landroid/content/ComponentName;", "name", "Landroid/os/IBinder;", NotificationCompat.CATEGORY_SERVICE, "", "onServiceConnected", "onServiceDisconnected", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d implements ServiceConnection {
        d() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(@g ComponentName name, @g IBinder service) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(service, "service");
            Timber.f93860a.a("Service connected.", new Object[0]);
            MainContainerActivity.this.f52460k = ((WebSocketService.c) service).a();
            MainContainerActivity.this.p0();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(@g ComponentName name) {
            Intrinsics.checkNotNullParameter(name, "name");
            Timber.f93860a.k("Service disconnected.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o0(PrivateLimitBean privateLimitBean) {
        PrivateLimitBean.AnchorBean anchor;
        if (privateLimitBean == null || (anchor = privateLimitBean.getAnchor()) == null) {
            return;
        }
        HotAnchorSummary hotAnchorSummary = new HotAnchorSummary();
        hotAnchorSummary.setAvatar(anchor.getAvatar());
        hotAnchorSummary.setSnap(anchor.getSnap());
        hotAnchorSummary.setCurrentRoomNum(anchor.getCurroomnum());
        hotAnchorSummary.setId(anchor.getIdX());
        hotAnchorSummary.setNickname(anchor.getNickname());
        PlayerActivity.a aVar = PlayerActivity.f53641e3;
        String id = hotAnchorSummary.getId();
        Intrinsics.checkNotNullExpressionValue(id, "id");
        aVar.b(this, hotAnchorSummary, z4.a.d(id));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p0() {
        WebSocketService webSocketService = this.f52460k;
        if (webSocketService != null) {
            webSocketService.F(com.qennnsad.aknkaksd.data.websocket.b.f47802b0, new i() { // from class: com.qennnsad.aknkaksd.presentation.ui.a
                @Override // com.qennnsad.aknkaksd.data.websocket.i
                public final void a(Object obj) {
                    MainContainerActivity.q0(MainContainerActivity.this, (PopupWindowMsg) obj);
                }
            });
            Timber.f93860a.k("Window Popup Listener registered.", new Object[0]);
            l.C(this, webSocketService);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(MainContainerActivity this$0, PopupWindowMsg msg) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(msg, "msg");
        this$0.d0(msg, new c());
    }

    @JvmStatic
    @JvmOverloads
    public static final void r0(@g Context context) {
        f52459m.a(context);
    }

    @JvmStatic
    @JvmOverloads
    public static final void s0(@g Context context, boolean z9) {
        f52459m.b(context, z9);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity
    @g
    /* renamed from: n0 */
    public h I(@g LayoutInflater layoutInflater) {
        Intrinsics.checkNotNullParameter(layoutInflater, "layoutInflater");
        h c10 = h.c(layoutInflater);
        Intrinsics.checkNotNullExpressionValue(c10, "inflate(layoutInflater)");
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@m8.h Bundle bundle) {
        super.onCreate(bundle);
        bindService(WebSocketService.q(this), this.f52461l, 1);
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.nav_host_fragment);
        Intrinsics.checkNotNull(findFragmentById, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment");
        b0(((NavHostFragment) findFragmentById).getNavController());
        S();
        l.t(this, P().F());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        WebSocketService webSocketService = this.f52460k;
        if (webSocketService != null) {
            webSocketService.E();
        }
        unbindService(this.f52461l);
        this.f52460k = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        p0();
    }
}
