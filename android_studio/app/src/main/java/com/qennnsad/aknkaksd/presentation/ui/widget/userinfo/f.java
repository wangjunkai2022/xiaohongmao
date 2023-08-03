package com.qennnsad.aknkaksd.presentation.ui.widget.userinfo;

import android.view.View;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UserInfoDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0016\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0012\u0010\n\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\u000b\u001a\u00020\u0006H\u0016J\b\u0010\f\u001a\u00020\u0006H\u0016R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0003¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/f;", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;", "", "Z", "Landroid/view/View;", "view", "", "f0", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "info", "O", "g", "w", "", "u", "isRoomAdmin", "user", "", "anchorId", "roomId", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;", "userType", "isPkOpponentClicked", "Lkotlin/Function1;", "roomManageCallback", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;ZZLkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class f extends c {

    /* renamed from: u  reason: collision with root package name */
    private final boolean f54468u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(@m8.g UserInfo user, @m8.g String anchorId, @m8.g String roomId, @m8.g BaseUserInfoDialog.UserType userType, boolean z9, boolean z10, @m8.g Function1<? super UserInfo, Unit> roomManageCallback) {
        super(user, anchorId, roomId, userType, z9, roomManageCallback);
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(anchorId, "anchorId");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(userType, "userType");
        Intrinsics.checkNotNullParameter(roomManageCallback, "roomManageCallback");
        this.f54468u = z10;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.n
    public void O(@m8.h UserInfo userInfo) {
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog
    protected int Z() {
        return R.layout.dialog_userinfo_mystery;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog
    public void f0(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.f0(view);
        e0().setVisibility(this.f54468u ? 0 : 8);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.n
    public void g() {
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.n
    public void w() {
    }
}
