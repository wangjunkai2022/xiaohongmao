package com.qennnsad.aknkaksd.presentation.ui.widget.userinfo;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog;
import com.qennnsad.aknkaksd.util.z0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UserInfoDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0015\u001a\u00020\u0011\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00060\u0016\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00060\u0016\u0012\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u001d"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/h;", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;", "", "Z", "Landroid/view/View;", "view", "", "f0", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "p1", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "user", "", "anchorId", "roomId", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;", "userType", "", "canShowOnlineButton", "isPkOpponentClicked", "isRecreated", "isRoomAdmin", "Lkotlin/Function1;", "sendReplyCallback", "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "goToStreamCallback", "roomManageCallback", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;ZZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class h extends d {
    @m8.g

    /* renamed from: p1  reason: collision with root package name */
    private UserInfo f54469p1;

    public /* synthetic */ h(UserInfo userInfo, String str, String str2, BaseUserInfoDialog.UserType userType, boolean z9, boolean z10, boolean z11, boolean z12, Function1 function1, Function1 function12, Function1 function13, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(userInfo, str, str2, userType, z9, z10, (i4 & 64) != 0 ? false : z11, z12, function1, function12, function13);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.l, com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog
    protected int Z() {
        return R.layout.dialog_userinfo_peerage;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.l, com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog
    public void f0(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.f0(view);
        ((ConstraintLayout) view.findViewById(R.id.user_info_peerage_layout)).setBackgroundResource(z0.g(this.f54469p1.getPeerage_id()));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(@m8.g UserInfo user, @m8.g String anchorId, @m8.g String roomId, @m8.g BaseUserInfoDialog.UserType userType, boolean z9, boolean z10, boolean z11, boolean z12, @m8.g Function1<? super String, Unit> sendReplyCallback, @m8.g Function1<? super HotAnchorSummary, Unit> goToStreamCallback, @m8.g Function1<? super UserInfo, Unit> roomManageCallback) {
        super(user, anchorId, roomId, userType, z9, z10, z11, z12, sendReplyCallback, goToStreamCallback, roomManageCallback);
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(anchorId, "anchorId");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(userType, "userType");
        Intrinsics.checkNotNullParameter(sendReplyCallback, "sendReplyCallback");
        Intrinsics.checkNotNullParameter(goToStreamCallback, "goToStreamCallback");
        Intrinsics.checkNotNullParameter(roomManageCallback, "roomManageCallback");
        this.f54469p1 = user;
    }
}
