package com.qennnsad.aknkaksd.presentation.ui.room.manage;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.view.View;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.room.RoomAdminInfo;
import com.qennnsad.aknkaksd.data.bean.websocket.RemoveAdminerBean;
import com.qennnsad.aknkaksd.data.bean.websocket.WsRoomManageRequest;
import com.qennnsad.aknkaksd.data.websocket.WebSocketService;
import com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileActivity;
import com.qennnsad.aknkaksd.util.f1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: AdminListActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 %2\u00020\u0001:\u0001&B\u0007¢\u0006\u0004\b#\u0010$J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0015J\b\u0010\n\u001a\u00020\u0002H\u0014R\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!¨\u0006'"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "", "U", "", "id", ExifInterface.LONGITUDE_WEST, "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "onDestroy", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "d", "Lcom/qennnsad/aknkaksd/data/websocket/j;", ExifInterface.LATITUDE_SOUTH, "()Lcom/qennnsad/aknkaksd/data/websocket/j;", "Y", "(Lcom/qennnsad/aknkaksd/data/websocket/j;)V", "wsObjectPool", "Landroid/widget/TextView;", "e", "Landroid/widget/TextView;", "emptyListView", "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/f;", "f", "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/f;", "adapter", "Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;", "g", "Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;", "wsService", "Landroid/content/ServiceConnection;", "h", "Landroid/content/ServiceConnection;", "wsConnection", "<init>", "()V", ContextChain.TAG_INFRA, "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class AdminListActivity extends Hilt_AdminListActivity {
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    public static final a f53487i = new a(null);
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private static final String f53488j = "key_admins";
    @u7.a

    /* renamed from: d  reason: collision with root package name */
    public com.qennnsad.aknkaksd.data.websocket.j f53489d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f53490e;

    /* renamed from: f  reason: collision with root package name */
    private f f53491f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private WebSocketService f53492g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final ServiceConnection f53493h = new d();

    /* compiled from: AdminListActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$a;", "", "Landroid/content/Context;", "context", "", "Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;", "adminInfoList", "Landroid/content/Intent;", "a", "", "KEY_ADMINS", "Ljava/lang/String;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final Intent a(@m8.g Context context, @m8.h List<RoomAdminInfo> list) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, AdminListActivity.class);
            intent.putParcelableArrayListExtra(AdminListActivity.f53488j, (ArrayList) list);
            return intent;
        }
    }

    /* compiled from: AdminListActivity.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function1<String, Unit> {
        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            UserProfileActivity.f51833l.a(AdminListActivity.this, it);
        }
    }

    /* compiled from: AdminListActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class c extends Lambda implements Function1<RoomAdminInfo, Unit> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AdminListActivity.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "confirm", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function1<Boolean, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ AdminListActivity f53496a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ RoomAdminInfo f53497b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(AdminListActivity adminListActivity, RoomAdminInfo roomAdminInfo) {
                super(1);
                this.f53496a = adminListActivity;
                this.f53497b = roomAdminInfo;
            }

            public final void a(boolean z9) {
                WebSocketService webSocketService;
                if (!z9 || (webSocketService = this.f53496a.f53492g) == null) {
                    return;
                }
                webSocketService.H(this.f53496a.S().o("Manage", this.f53497b.getId(), this.f53497b.getNickname(), WsRoomManageRequest.REMOVERADMINER));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                a(bool.booleanValue());
                return Unit.INSTANCE;
            }
        }

        c() {
            super(1);
        }

        public final void a(@m8.g RoomAdminInfo it) {
            Intrinsics.checkNotNullParameter(it, "it");
            AdminListActivity adminListActivity = AdminListActivity.this;
            com.qennnsad.aknkaksd.util.l.P(adminListActivity, null, adminListActivity.getString(R.string.remove_admin_confirmation_message), null, null, new a(AdminListActivity.this, it), null, 45, null);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(RoomAdminInfo roomAdminInfo) {
            a(roomAdminInfo);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: AdminListActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\t"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity$d", "Landroid/content/ServiceConnection;", "Landroid/content/ComponentName;", "name", "Landroid/os/IBinder;", NotificationCompat.CATEGORY_SERVICE, "", "onServiceConnected", "onServiceDisconnected", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d implements ServiceConnection {
        d() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(@m8.g ComponentName name, @m8.g IBinder service) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(service, "service");
            AdminListActivity.this.f53492g = ((WebSocketService.c) service).a();
            AdminListActivity.this.U();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(@m8.g ComponentName name) {
            Intrinsics.checkNotNullParameter(name, "name");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U() {
        com.qennnsad.aknkaksd.data.websocket.i iVar = new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.manage.a
            @Override // com.qennnsad.aknkaksd.data.websocket.i
            public final void a(Object obj) {
                AdminListActivity.V(AdminListActivity.this, (RemoveAdminerBean) obj);
            }
        };
        WebSocketService webSocketService = this.f53492g;
        if (webSocketService != null) {
            webSocketService.F(com.qennnsad.aknkaksd.data.websocket.b.M, iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(AdminListActivity this$0, RemoveAdminerBean removeAdminerBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String user_id = removeAdminerBean.getUser_id();
        Intrinsics.checkNotNullExpressionValue(user_id, "removeAdminerBean.user_id");
        this$0.W(user_id);
    }

    private final void W(String str) {
        List mutableList;
        f fVar = this.f53491f;
        TextView textView = null;
        if (fVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            fVar = null;
        }
        List<RoomAdminInfo> currentList = fVar.getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "adapter.currentList");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) currentList);
        ArrayList arrayList = new ArrayList();
        for (Object obj : mutableList) {
            if (!Intrinsics.areEqual(((RoomAdminInfo) obj).getId(), str)) {
                arrayList.add(obj);
            }
        }
        f fVar2 = this.f53491f;
        if (fVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            fVar2 = null;
        }
        fVar2.submitList(arrayList);
        TextView textView2 = this.f53490e;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("emptyListView");
        } else {
            textView = textView2;
        }
        textView.setVisibility(arrayList.isEmpty() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(AdminListActivity this$0, Unit unit) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onBackPressed();
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.websocket.j S() {
        com.qennnsad.aknkaksd.data.websocket.j jVar = this.f53489d;
        if (jVar != null) {
            return jVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("wsObjectPool");
        return null;
    }

    public final void Y(@m8.g com.qennnsad.aknkaksd.data.websocket.j jVar) {
        Intrinsics.checkNotNullParameter(jVar, "<set-?>");
        this.f53489d = jVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @SuppressLint({"CheckResult"})
    public void onCreate(@m8.h Bundle bundle) {
        ArrayList arrayList;
        super.onCreate(bundle);
        setContentView(R.layout.activity_admin_list);
        boolean z9 = true;
        bindService(WebSocketService.q(this), this.f53493h, 1);
        View findViewById = findViewById(R.id.imgbtn_toolbar_back);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.imgbtn_toolbar_back)");
        f1.b(findViewById).M6(50L, TimeUnit.MILLISECONDS).a6(new q7.g() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.manage.b
            @Override // q7.g
            public final void accept(Object obj) {
                AdminListActivity.X(AdminListActivity.this, (Unit) obj);
            }
        });
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra(f53488j);
        if (parcelableArrayListExtra != null) {
            arrayList = new ArrayList();
            for (Object obj : parcelableArrayListExtra) {
                if (!((RoomAdminInfo) obj).getShowAdmin()) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.recycler);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        f fVar = new f();
        fVar.h(new b());
        fVar.i(new c());
        fVar.submitList(arrayList);
        this.f53491f = fVar;
        recyclerView.setAdapter(fVar);
        View findViewById2 = findViewById(R.id.tv_empty_list);
        TextView textView = (TextView) findViewById2;
        Intrinsics.checkNotNullExpressionValue(textView, "");
        if (arrayList != null && !arrayList.isEmpty()) {
            z9 = false;
        }
        textView.setVisibility(z9 ? 0 : 8);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById<TextView?>(…isNullOrEmpty()\n        }");
        this.f53490e = textView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unbindService(this.f53493h);
    }
}
