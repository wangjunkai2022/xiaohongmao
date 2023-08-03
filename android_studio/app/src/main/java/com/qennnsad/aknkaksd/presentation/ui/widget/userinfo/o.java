package com.qennnsad.aknkaksd.presentation.ui.widget.userinfo;

import android.util.Range;
import androidx.fragment.app.FragmentManager;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog;
import com.qennnsad.aknkaksd.util.z0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UserInfoDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u009c\u0001\u0010\u0015\u001a\u00020\u000e*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\b2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\r2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000e0\r2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000e0\r2\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0013H\u0007¨\u0006\u0016"}, d2 = {"Landroidx/fragment/app/FragmentManager;", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "user", "", "anchorId", "roomId", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;", "userType", "", "isRoomAdmin", "canShowOnlineButton", "isPkOpponentClicked", "isRecreated", "Lkotlin/Function1;", "", "sendReplyCallback", "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "goToStreamCallback", "roomManageCallback", "Lkotlin/Function0;", "onShowListener", "c", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class o {
    @JvmOverloads
    public static final void a(@m8.g FragmentManager fragmentManager, @m8.g UserInfo user, @m8.g String anchorId, @m8.g String roomId, @m8.g BaseUserInfoDialog.UserType userType, boolean z9, boolean z10, boolean z11, @m8.g Function1<? super String, Unit> sendReplyCallback, @m8.g Function1<? super HotAnchorSummary, Unit> goToStreamCallback, @m8.g Function1<? super UserInfo, Unit> roomManageCallback) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(anchorId, "anchorId");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(userType, "userType");
        Intrinsics.checkNotNullParameter(sendReplyCallback, "sendReplyCallback");
        Intrinsics.checkNotNullParameter(goToStreamCallback, "goToStreamCallback");
        Intrinsics.checkNotNullParameter(roomManageCallback, "roomManageCallback");
        d(fragmentManager, user, anchorId, roomId, userType, z9, z10, z11, false, sendReplyCallback, goToStreamCallback, roomManageCallback, null, 2176, null);
    }

    @JvmOverloads
    public static final void b(@m8.g FragmentManager fragmentManager, @m8.g UserInfo user, @m8.g String anchorId, @m8.g String roomId, @m8.g BaseUserInfoDialog.UserType userType, boolean z9, boolean z10, boolean z11, boolean z12, @m8.g Function1<? super String, Unit> sendReplyCallback, @m8.g Function1<? super HotAnchorSummary, Unit> goToStreamCallback, @m8.g Function1<? super UserInfo, Unit> roomManageCallback) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(anchorId, "anchorId");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(userType, "userType");
        Intrinsics.checkNotNullParameter(sendReplyCallback, "sendReplyCallback");
        Intrinsics.checkNotNullParameter(goToStreamCallback, "goToStreamCallback");
        Intrinsics.checkNotNullParameter(roomManageCallback, "roomManageCallback");
        d(fragmentManager, user, anchorId, roomId, userType, z9, z10, z11, z12, sendReplyCallback, goToStreamCallback, roomManageCallback, null, 2048, null);
    }

    @JvmOverloads
    public static final void c(@m8.g FragmentManager fragmentManager, @m8.g UserInfo user, @m8.g String anchorId, @m8.g String roomId, @m8.g BaseUserInfoDialog.UserType userType, boolean z9, boolean z10, boolean z11, boolean z12, @m8.g Function1<? super String, Unit> sendReplyCallback, @m8.g Function1<? super HotAnchorSummary, Unit> goToStreamCallback, @m8.g Function1<? super UserInfo, Unit> roomManageCallback, @m8.h Function0<Unit> function0) {
        BaseUserInfoDialog lVar;
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(anchorId, "anchorId");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(userType, "userType");
        Intrinsics.checkNotNullParameter(sendReplyCallback, "sendReplyCallback");
        Intrinsics.checkNotNullParameter(goToStreamCallback, "goToStreamCallback");
        Intrinsics.checkNotNullParameter(roomManageCallback, "roomManageCallback");
        if (user.getId() == null) {
            com.qennnsad.aknkaksd.util.toast.a.m(R.string.userinfo_dialog_errorid, false, 2, null);
            return;
        }
        UserInfo k10 = b5.a.k(user);
        if (k10.isMystery()) {
            lVar = new f(k10, anchorId, roomId, userType, z11, z9, roomManageCallback);
        } else if (z0.f55131a.contains((Range<Integer>) Integer.valueOf(k10.getPeerage_id()))) {
            lVar = new h(k10, anchorId, roomId, userType, z10, z11, z12, z9, sendReplyCallback, goToStreamCallback, roomManageCallback);
        } else {
            lVar = new l(k10, anchorId, roomId, userType, z10, z11, z12, z9, sendReplyCallback, goToStreamCallback, roomManageCallback);
        }
        lVar.D(function0);
        lVar.show(fragmentManager, (String) null);
    }

    public static /* synthetic */ void d(FragmentManager fragmentManager, UserInfo userInfo, String str, String str2, BaseUserInfoDialog.UserType userType, boolean z9, boolean z10, boolean z11, boolean z12, Function1 function1, Function1 function12, Function1 function13, Function0 function0, int i4, Object obj) {
        c(fragmentManager, userInfo, str, str2, userType, z9, z10, z11, (i4 & 128) != 0 ? false : z12, function1, function12, function13, (i4 & 2048) != 0 ? null : function0);
    }
}
