package com.qennnsad.aknkaksd.presentation.ui.room.manage;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.room.RoomAdminInfo;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.bean.websocket.LocalRoomMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.RoomRole;
import com.qennnsad.aknkaksd.data.bean.websocket.WsRoomManageRequest;
import com.qennnsad.aknkaksd.presentation.ui.room.manage.AdminListActivity;
import com.qennnsad.aknkaksd.util.s1;
import io.sentry.protocol.y;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: RoomManageDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001`B;\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010!\u001a\u00020\u001c\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00050&¢\u0006\u0004\b^\u0010_J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0018\u0010\u0017\u001a\u00020\u00052\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014H\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001eR\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R \u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00050&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\"\u00101\u001a\u00020*8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00107\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b6\u00104R\u0016\u00109\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b8\u00104R\u0016\u0010;\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b:\u00104R\u0016\u0010=\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b<\u00104R\u0016\u0010?\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b>\u00104R\u0016\u0010A\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b@\u00104R\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bC\u0010DR\u001e\u0010H\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u001b\u0010N\u001a\u00020I8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010MR\u001b\u0010R\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bO\u0010K\u001a\u0004\bP\u0010QR\u0014\u0010T\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010$R\u0016\u0010V\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010$R\"\u0010X\u001a\u00020W8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bX\u0010Y\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]¨\u0006a"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;", "Landroidx/fragment/app/DialogFragment;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;", "Landroid/view/View;", "view", "", "k0", "n0", "p0", "Landroid/content/Context;", "b", "", "getTheme", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/os/Bundle;", "savedInstanceState", "onCreateView", "", "Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;", "list", ExifInterface.LATITUDE_SOUTH, "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "f", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "selectedUser", "", "g", "Ljava/lang/String;", "roomAnchorId", "h", "roomId", "", ContextChain.TAG_INFRA, "Z", "isPkOpponentClicked", "Lkotlin/Function1;", "j", "Lkotlin/jvm/functions/Function1;", "wsActionCallback", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "l", "Lcom/qennnsad/aknkaksd/data/websocket/j;", "j0", "()Lcom/qennnsad/aknkaksd/data/websocket/j;", "o0", "(Lcom/qennnsad/aknkaksd/data/websocket/j;)V", "wsObjectPool", "Landroid/widget/Button;", "m", "Landroid/widget/Button;", "btnAddManager", "n", "btnMuteUser", "o", "btnKickUser", "p", "btnManagerList", "q", "btnWarnUser", "r", "btnReportUser", "s", "btnCancel", "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;", "t", "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;", "presenter", "u", "Ljava/util/List;", "adminList", "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;", "v", "Lkotlin/Lazy;", "i0", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;", "myAdminRole", "w", "l0", "()Z", "isMyRoom", y.b.f83919g, "isAnchorSelected", y.b.f83920h, "isSelectedUserAdmin", "Lg5/a;", "localDataManager", "Lg5/a;", "h0", "()Lg5/a;", "m0", "(Lg5/a;)V", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V", "AdminRole", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class RoomManageDialog extends com.qennnsad.aknkaksd.presentation.ui.room.manage.j implements n {
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final UserInfo f53503f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final String f53504g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final String f53505h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f53506i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final Function1<String, Unit> f53507j;
    @u7.a

    /* renamed from: k  reason: collision with root package name */
    public g5.a f53508k;
    @u7.a

    /* renamed from: l  reason: collision with root package name */
    public com.qennnsad.aknkaksd.data.websocket.j f53509l;

    /* renamed from: m  reason: collision with root package name */
    private Button f53510m;

    /* renamed from: n  reason: collision with root package name */
    private Button f53511n;

    /* renamed from: o  reason: collision with root package name */
    private Button f53512o;

    /* renamed from: p  reason: collision with root package name */
    private Button f53513p;

    /* renamed from: q  reason: collision with root package name */
    private Button f53514q;

    /* renamed from: r  reason: collision with root package name */
    private Button f53515r;

    /* renamed from: s  reason: collision with root package name */
    private Button f53516s;

    /* renamed from: t  reason: collision with root package name */
    private o f53517t;
    @m8.h

    /* renamed from: u  reason: collision with root package name */
    private List<RoomAdminInfo> f53518u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final Lazy f53519v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final Lazy f53520w;

    /* renamed from: x  reason: collision with root package name */
    private final boolean f53521x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f53522y;

    /* compiled from: RoomManageDialog.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;", "", "(Ljava/lang/String;I)V", "NONE", "ROOM_ADMIN", "SUPER_ADMIN", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum AdminRole {
        NONE,
        ROOM_ADMIN,
        SUPER_ADMIN
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomManageDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function0<Unit> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            RoomManageDialog.this.f53507j.invoke(!RoomManageDialog.this.f53522y ? WsRoomManageRequest.ADMINER : WsRoomManageRequest.REMOVERADMINER);
            RoomManageDialog.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomManageDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Context requireContext = RoomManageDialog.this.requireContext();
            AdminListActivity.a aVar = AdminListActivity.f53487i;
            Context requireContext2 = RoomManageDialog.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext()");
            requireContext.startActivity(aVar.a(requireContext2, RoomManageDialog.this.f53518u));
            RoomManageDialog.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomManageDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Unit> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            RoomManageDialog.this.f53507j.invoke(WsRoomManageRequest.DISABLEMSG);
            RoomManageDialog.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomManageDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function0<Unit> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            RoomManageDialog.this.f53507j.invoke(WsRoomManageRequest.TYPE_KICK);
            RoomManageDialog.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomManageDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class e extends Lambda implements Function0<Unit> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            RoomManageDialog.this.p0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomManageDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function0<Unit> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            RoomManageDialog.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomManageDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class g extends Lambda implements Function0<Unit> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            o oVar = RoomManageDialog.this.f53517t;
            if (oVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("presenter");
                oVar = null;
            }
            String id = RoomManageDialog.this.f53503f.getId();
            Intrinsics.checkNotNullExpressionValue(id, "selectedUser.id");
            String say = RoomManageDialog.this.f53503f.getSay();
            if (say == null) {
                say = "";
            }
            oVar.f(id, say);
            RoomManageDialog.this.dismiss();
        }
    }

    /* compiled from: RoomManageDialog.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class h extends Lambda implements Function0<Boolean> {
        h() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Boolean invoke() {
            UserBean C = RoomManageDialog.this.h0().C();
            return Boolean.valueOf(Intrinsics.areEqual(C != null ? C.getId() : null, RoomManageDialog.this.f53504g));
        }
    }

    /* compiled from: RoomManageDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;", "a", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class i extends Lambda implements Function0<AdminRole> {

        /* compiled from: RoomManageDialog.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[RoomRole.values().length];
                iArr[RoomRole.RoomAdmin.ordinal()] = 1;
                iArr[RoomRole.SuperAdmin.ordinal()] = 2;
                iArr[RoomRole.ShowAdmin.ordinal()] = 3;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final AdminRole invoke() {
            LocalRoomMsg q9 = RoomManageDialog.this.h0().q();
            if (Intrinsics.areEqual(q9 != null ? q9.getRoomId() : null, RoomManageDialog.this.f53505h)) {
                int i4 = a.$EnumSwitchMapping$0[q9.getRole().ordinal()];
                if (i4 != 1) {
                    if (i4 != 2 && i4 != 3) {
                        return AdminRole.NONE;
                    }
                    return AdminRole.SUPER_ADMIN;
                }
                return AdminRole.ROOM_ADMIN;
            }
            return AdminRole.NONE;
        }
    }

    /* compiled from: RoomManageDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J$\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\n"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$j", "Landroid/widget/TextView$OnEditorActionListener;", "Landroid/widget/TextView;", "v", "", "actionId", "Landroid/view/KeyEvent;", "event", "", "onEditorAction", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class j implements TextView.OnEditorActionListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f53533a;

        j(TextView textView) {
            this.f53533a = textView;
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(@m8.h TextView textView, int i4, @m8.h KeyEvent keyEvent) {
            if (i4 == 6) {
                this.f53533a.performClick();
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomManageDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class k extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Dialog f53534a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(Dialog dialog) {
            super(0);
            this.f53534a = dialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f53534a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoomManageDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class l extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ EditText f53535a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ EditText f53536b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ RoomManageDialog f53537c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Dialog f53538d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(EditText editText, EditText editText2, RoomManageDialog roomManageDialog, Dialog dialog) {
            super(0);
            this.f53535a = editText;
            this.f53536b = editText2;
            this.f53537c = roomManageDialog;
            this.f53538d = dialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            CharSequence trim;
            CharSequence trim2;
            trim = StringsKt__StringsKt.trim((CharSequence) this.f53535a.getText().toString());
            String obj = trim.toString();
            trim2 = StringsKt__StringsKt.trim((CharSequence) this.f53536b.getText().toString());
            String obj2 = trim2.toString();
            o oVar = null;
            if (obj.length() == 0) {
                com.qennnsad.aknkaksd.util.toast.a.n("请输入时间", false, 2, null);
                return;
            }
            if (obj2.length() == 0) {
                com.qennnsad.aknkaksd.util.toast.a.n("请输入原因", false, 2, null);
                return;
            }
            int parseInt = Integer.parseInt(obj) * 60;
            o oVar2 = this.f53537c.f53517t;
            if (oVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("presenter");
            } else {
                oVar = oVar2;
            }
            oVar.e(this.f53537c.f53504g, this.f53537c.f53505h, String.valueOf(parseInt), obj2);
            this.f53538d.dismiss();
            this.f53537c.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RoomManageDialog(@m8.g UserInfo selectedUser, @m8.g String roomAnchorId, @m8.g String roomId, boolean z9, @m8.g Function1<? super String, Unit> wsActionCallback) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(selectedUser, "selectedUser");
        Intrinsics.checkNotNullParameter(roomAnchorId, "roomAnchorId");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(wsActionCallback, "wsActionCallback");
        this.f53503f = selectedUser;
        this.f53504g = roomAnchorId;
        this.f53505h = roomId;
        this.f53506i = z9;
        this.f53507j = wsActionCallback;
        lazy = LazyKt__LazyJVMKt.lazy(new i());
        this.f53519v = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new h());
        this.f53520w = lazy2;
        this.f53521x = Intrinsics.areEqual(selectedUser.getId(), roomAnchorId);
    }

    private final AdminRole i0() {
        return (AdminRole) this.f53519v.getValue();
    }

    private final void k0(View view) {
        Button button;
        Button button2;
        Button button3;
        Button button4;
        Button button5;
        Button button6;
        Button button7;
        View findViewById = view.findViewById(R.id.btn_add_manager);
        Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById(R.id.btn_add_manager)");
        this.f53510m = (Button) findViewById;
        View findViewById2 = view.findViewById(R.id.btn_manager_list);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "view.findViewById(R.id.btn_manager_list)");
        this.f53513p = (Button) findViewById2;
        View findViewById3 = view.findViewById(R.id.btn_mute_user);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "view.findViewById(R.id.btn_mute_user)");
        this.f53511n = (Button) findViewById3;
        View findViewById4 = view.findViewById(R.id.btn_kick_user);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "view.findViewById(R.id.btn_kick_user)");
        this.f53512o = (Button) findViewById4;
        View findViewById5 = view.findViewById(R.id.btn_warn_user);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "view.findViewById(R.id.btn_warn_user)");
        this.f53514q = (Button) findViewById5;
        View findViewById6 = view.findViewById(R.id.btn_report_user);
        Intrinsics.checkNotNullExpressionValue(findViewById6, "view.findViewById(R.id.btn_report_user)");
        this.f53515r = (Button) findViewById6;
        View findViewById7 = view.findViewById(R.id.btn_cancel);
        Intrinsics.checkNotNullExpressionValue(findViewById7, "view.findViewById(R.id.btn_cancel)");
        this.f53516s = (Button) findViewById7;
        Button button8 = this.f53510m;
        if (button8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnAddManager");
            button = null;
        } else {
            button = button8;
        }
        s1.U(button, 0L, new a(), 1, null);
        Button button9 = this.f53513p;
        if (button9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnManagerList");
            button2 = null;
        } else {
            button2 = button9;
        }
        s1.U(button2, 0L, new b(), 1, null);
        Button button10 = this.f53511n;
        if (button10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnMuteUser");
            button3 = null;
        } else {
            button3 = button10;
        }
        s1.U(button3, 0L, new c(), 1, null);
        Button button11 = this.f53512o;
        if (button11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnKickUser");
            button4 = null;
        } else {
            button4 = button11;
        }
        s1.U(button4, 0L, new d(), 1, null);
        Button button12 = this.f53514q;
        if (button12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnWarnUser");
            button5 = null;
        } else {
            button5 = button12;
        }
        s1.U(button5, 0L, new e(), 1, null);
        Button button13 = this.f53516s;
        if (button13 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnCancel");
            button6 = null;
        } else {
            button6 = button13;
        }
        s1.U(button6, 0L, new f(), 1, null);
        Button button14 = this.f53515r;
        if (button14 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnReportUser");
            button7 = null;
        } else {
            button7 = button14;
        }
        s1.U(button7, 0L, new g(), 1, null);
        n0();
    }

    private final boolean l0() {
        return ((Boolean) this.f53520w.getValue()).booleanValue();
    }

    private final void n0() {
        Button button = this.f53510m;
        Button button2 = null;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnAddManager");
            button = null;
        }
        button.setVisibility(l0() ? 0 : 8);
        if (this.f53522y) {
            Button button3 = this.f53510m;
            if (button3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("btnAddManager");
                button3 = null;
            }
            button3.setText(R.string.room_live_manage_manage_cancel);
        }
        Button button4 = this.f53513p;
        if (button4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnManagerList");
            button4 = null;
        }
        button4.setVisibility(l0() ? 0 : 8);
        boolean z9 = true;
        boolean z10 = !this.f53506i && (l0() || (!(i0() != AdminRole.ROOM_ADMIN || this.f53522y || this.f53521x) || (i0() == AdminRole.SUPER_ADMIN && !this.f53521x)));
        Button button5 = this.f53511n;
        if (button5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnMuteUser");
            button5 = null;
        }
        button5.setVisibility(z10 ? 0 : 8);
        Button button6 = this.f53512o;
        if (button6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnKickUser");
            button6 = null;
        }
        button6.setVisibility(z10 ? 0 : 8);
        Button button7 = this.f53514q;
        if (button7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("btnWarnUser");
        } else {
            button2 = button7;
        }
        button2.setVisibility((this.f53521x && i0() == AdminRole.SUPER_ADMIN) ? false : false ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p0() {
        final Dialog dialog = new Dialog(requireContext(), R.style.TransparentBgDialog);
        dialog.setContentView(R.layout.dialog_room_warn);
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.manage.k
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                RoomManageDialog.q0(dialog, this, dialogInterface);
            }
        });
        Window window = dialog.getWindow();
        if (window != null) {
            window.setSoftInputMode(4);
        }
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(Dialog this_apply, RoomManageDialog this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditText editText = (EditText) this_apply.findViewById(R.id.dialog_warn_note);
        TextView textView = (TextView) this_apply.findViewById(R.id.dialog_warn_sure);
        Intrinsics.checkNotNullExpressionValue(textView, "");
        s1.U(textView, 0L, new l((EditText) this_apply.findViewById(R.id.dialog_warn_edit_time), editText, this$0, this_apply), 1, null);
        editText.setOnEditorActionListener(new j(textView));
        View findViewById = this_apply.findViewById(R.id.dialog_warn_cancel);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById<TextView>(R.id.dialog_warn_cancel)");
        s1.U(findViewById, 0L, new k(this_apply), 1, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
        if (r2.contains(r4.f53503f.getId()) == true) goto L12;
     */
    @Override // com.qennnsad.aknkaksd.presentation.ui.room.manage.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void S(@m8.h java.util.List<com.qennnsad.aknkaksd.data.bean.room.RoomAdminInfo> r5) {
        /*
            r4 = this;
            if (r5 != 0) goto L6
            java.util.List r5 = kotlin.collections.CollectionsKt.emptyList()
        L6:
            r4.f53518u = r5
            r0 = 1
            r1 = 0
            if (r5 == 0) goto L3c
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 10
            int r3 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r5, r3)
            r2.<init>(r3)
            java.util.Iterator r5 = r5.iterator()
        L1b:
            boolean r3 = r5.hasNext()
            if (r3 == 0) goto L2f
            java.lang.Object r3 = r5.next()
            com.qennnsad.aknkaksd.data.bean.room.RoomAdminInfo r3 = (com.qennnsad.aknkaksd.data.bean.room.RoomAdminInfo) r3
            java.lang.String r3 = r3.getId()
            r2.add(r3)
            goto L1b
        L2f:
            com.qennnsad.aknkaksd.data.bean.me.UserInfo r5 = r4.f53503f
            java.lang.String r5 = r5.getId()
            boolean r5 = r2.contains(r5)
            if (r5 != r0) goto L3c
            goto L3d
        L3c:
            r0 = 0
        L3d:
            r4.f53522y = r0
            r4.n0()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.room.manage.RoomManageDialog.S(java.util.List):void");
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.manage.n
    @m8.g
    public Context b() {
        Context applicationContext = requireContext().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "requireContext().applicationContext");
        return applicationContext;
    }

    @Override // androidx.fragment.app.DialogFragment
    public int getTheme() {
        return R.style.BottomWideDialogStyle;
    }

    @m8.g
    public final g5.a h0() {
        g5.a aVar = this.f53508k;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.websocket.j j0() {
        com.qennnsad.aknkaksd.data.websocket.j jVar = this.f53509l;
        if (jVar != null) {
            return jVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("wsObjectPool");
        return null;
    }

    public final void m0(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f53508k = aVar;
    }

    public final void o0(@m8.g com.qennnsad.aknkaksd.data.websocket.j jVar) {
        Intrinsics.checkNotNullParameter(jVar, "<set-?>");
        this.f53509l = jVar;
    }

    @Override // androidx.fragment.app.Fragment
    @m8.h
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = getLayoutInflater().inflate(R.layout.dialog_room_manage, viewGroup, false);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setGravity(80);
            window.addFlags(2);
            window.setDimAmount(0.6f);
        }
        o oVar = new o(this);
        this.f53517t = oVar;
        oVar.d(this.f53504g);
        Intrinsics.checkNotNullExpressionValue(inflate, "this");
        k0(inflate);
        return inflate;
    }
}
