package com.qennnsad.aknkaksd.presentation.ui.room.player.player;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.MutableLiveData;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.presentation.ui.main.index.DistrictType;
import com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;

/* compiled from: PkRightPlayerActivity.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b \u0010!J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\"\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014J\b\u0010\u000b\u001a\u00020\tH\u0014J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\fH\u0016J\b\u0010\u0012\u001a\u00020\tH\u0014J\u0010\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0002H\u0014J\u0012\u0010\u0017\u001a\u00020\t2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014J\u0010\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0002H\u0014R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;", "", "E5", "Landroid/content/Intent;", "intent", "isFromNewIntent", "Landroid/os/Bundle;", "savedInstanceState", "", "C0", "onPause", "", "currentPosition", "k", "j", "newPosition", "w", "H6", "byCloseButton", "G4", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "info", "h5", "bySwipe", "F5", "k3", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "userInfo", "l3", "Z", "finishingBySwipe", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class PkRightPlayerActivity extends Hilt_PkRightPlayerActivity {
    @m8.h

    /* renamed from: k3  reason: collision with root package name */
    private UserInfo f53639k3;

    /* renamed from: l3  reason: collision with root package name */
    private boolean f53640l3;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v7(PkRightPlayerActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.F5(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w7(PkRightPlayerActivity this$0, UserInfo userInfo, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.P6(userInfo, BaseUserInfoDialog.UserType.COMMON, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity, com.qennnsad.aknkaksd.presentation.ui.room.player.player.WebsocketActivity, com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity
    public void C0(@m8.g Intent intent, boolean z9, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.C0(intent, z9, bundle);
        PlayerViewModel L4 = L4();
        MutableLiveData<Boolean> d02 = L4 != null ? L4.d0() : null;
        if (d02 == null) {
            return;
        }
        d02.setValue(Boolean.TRUE);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity
    protected boolean E5() {
        return true;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity
    protected void F5(boolean z9) {
        HotAnchorSummary p9;
        MutableLiveData<Boolean> d02;
        this.f53640l3 = z9;
        C2();
        this.f53793y = true;
        finish();
        PlayerViewModel L4 = L4();
        if ((L4 == null || (d02 = L4.d0()) == null) ? false : Intrinsics.areEqual(d02.getValue(), Boolean.TRUE)) {
            UserInfo userInfo = this.f53639k3;
            Intrinsics.checkNotNull(userInfo);
            V6(userInfo, DistrictType.Hot);
            return;
        }
        UserInfo userInfo2 = this.f53639k3;
        if (userInfo2 == null || (p9 = b5.a.p(userInfo2)) == null) {
            return;
        }
        Intent a10 = PlayerActivity.f53641e3.a(this, p9, DistrictType.Hot);
        a10.putExtra(PlayerActivity.f53643g3, true);
        startActivity(a10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity
    public void G4(boolean z9) {
        if (z9) {
            finish();
        }
        super.G4(z9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity
    public void H6() {
        super.H6();
        p7();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity
    protected void h5(@m8.h final UserInfo userInfo) {
        List<? extends HotAnchorSummary> listOf;
        this.f53639k3 = userInfo;
        View findViewById = findViewById(R.id.lay_switch_to_right_competitor);
        View findViewById2 = findViewById.findViewById(R.id.img_user_avatar);
        Intrinsics.checkNotNull(findViewById2, "null cannot be cast to non-null type com.facebook.drawee.view.SimpleDraweeView");
        com.qennnsad.aknkaksd.data.repository.m mVar = this.T;
        Intrinsics.checkNotNull(userInfo);
        String avatar = userInfo.getAvatar();
        Intrinsics.checkNotNullExpressionValue(avatar, "info!!.avatar");
        ((SimpleDraweeView) findViewById2).setImageURI(mVar.j(avatar));
        View findViewById3 = findViewById.findViewById(R.id.tv_right_competitor_name);
        Intrinsics.checkNotNull(findViewById3, "null cannot be cast to non-null type android.widget.TextView");
        ((TextView) findViewById3).setText(userInfo.getNickname());
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PkRightPlayerActivity.v7(PkRightPlayerActivity.this, view);
            }
        };
        findViewById.findViewById(R.id.img_user_avatar).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PkRightPlayerActivity.w7(PkRightPlayerActivity.this, userInfo, view);
            }
        });
        findViewById.findViewById(R.id.tv_right_competitor_name).setOnClickListener(onClickListener);
        findViewById.findViewById(R.id.comp_switch_icon).setOnClickListener(onClickListener);
        HotAnchorSummary p9 = b5.a.p(userInfo);
        PlayerViewModel L4 = L4();
        if (L4 != null) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(p9);
            L4.J0(listOf);
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity, com.qennnsad.aknkaksd.util.ScrollableLayout.a
    public boolean j(int i4) {
        return i4 == 0;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity, com.qennnsad.aknkaksd.util.ScrollableLayout.a
    public boolean k(int i4) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity, com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (isFinishing()) {
            if (this.f53640l3) {
                overridePendingTransition(R.anim.fragment_slide_up_in, R.anim.fragment_slide_up_out);
            } else {
                overridePendingTransition(R.anim.fragment_slide_right_in, R.anim.fragment_slide_right_out);
            }
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity, com.qennnsad.aknkaksd.util.ScrollableLayout.a
    public void w(int i4) {
        if (i4 == 1) {
            Timber.f93860a.k("Jump to left", new Object[0]);
            F5(true);
            return;
        }
        super.w(i4);
    }
}
