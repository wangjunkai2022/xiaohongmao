package com.qennnsad.aknkaksd.presentation.ui.widget.userinfo;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentManager;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileActivity;
import com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog;
import com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.l;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.s1;
import com.wang.avi.AVLoadingIndicatorView;
import io.sentry.protocol.y;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringNumberConversionsKt;

/* compiled from: UserInfoDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0017\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u001c\u001a\u00020\u0003\u0012\u0006\u0010\u001d\u001a\u00020\u0003\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010$\u001a\u00020\"\u0012\u0006\u0010&\u001a\u00020\"\u0012\u0006\u0010(\u001a\u00020\"\u0012\u0006\u0010*\u001a\u00020\"\u0012\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050+\u0012\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020\u00050+\u0012\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050+¢\u0006\u0004\b]\u0010^J\u0014\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0014\u0010\b\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0003H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\u000fH\u0014J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0012\u0010\u0015\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\u0016\u001a\u00020\u0005H\u0016J\b\u0010\u0017\u001a\u00020\u0005H\u0016R\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u001bR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\u0010R\u0014\u0010&\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010\u0010R\u0014\u0010(\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010\u0010R\u0014\u0010*\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010\u0010R \u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R \u00101\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020\u00050+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010-R \u00103\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010-R\u0016\u00106\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010<\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b;\u00105R\u0016\u0010>\u001a\u0002078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b=\u00109R\u0016\u0010@\u001a\u0002078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b?\u00109R\u0016\u0010B\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bA\u00105R\u0016\u0010D\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bC\u00105R\u0016\u0010F\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bE\u00105R\u0016\u0010H\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bG\u00105R\u0016\u0010I\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u00105R\u0016\u0010K\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bJ\u00105R\u0016\u0010M\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bL\u00105R\u0016\u0010O\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bN\u00105R\u0016\u0010S\u001a\u00020P8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010W\u001a\u00020T8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bU\u0010VR\u0018\u0010Z\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0016\u0010\\\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\u0010¨\u0006_"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;", "Landroid/widget/TextView;", "", "count", "", "F0", "number", "A0", "z0", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "user", "E0", "", "D0", "", "Z", "Landroid/view/View;", "view", "f0", "info", "O", "g", "w", "u", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "v", "Ljava/lang/String;", "anchorId", "roomId", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;", y.b.f83919g, "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;", "userType", "", y.b.f83920h, "canShowOnlineButton", "z", "isPkOpponentClicked", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "isRecreated", "B", "isRoomAdmin", "Lkotlin/Function1;", "C", "Lkotlin/jvm/functions/Function1;", "sendReplyCallback", "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "D", "goToStreamCallback", ExifInterface.LONGITUDE_EAST, "roomManageCallback", "F", "Landroid/widget/TextView;", "tvOpenStream", "Landroid/widget/ImageView;", "G", "Landroid/widget/ImageView;", "ivUserAvatar", "H", "tvUserNickname", "I", "ivUserSex", "J", "ivUserLevel", "K", "tvOpenPeerage", "L", "tvUserSignature", "M", "tvFolloweesCount", "N", "tvFansCount", "tvSentCount", "P", "tvFollowButton", "Q", "tvReplyButton", "R", "tvMainPageButton", "Landroidx/constraintlayout/widget/Group;", ExifInterface.LATITUDE_SOUTH, "Landroidx/constraintlayout/widget/Group;", "bottomGroup", "Lcom/wang/avi/AVLoadingIndicatorView;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/wang/avi/AVLoadingIndicatorView;", "pbUserInfo", "U", "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "hotAnchorSummary", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "isUserFollowed", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;ZZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public class l extends com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.e {
    private final boolean A;
    private final boolean B;
    @m8.g
    private final Function1<String, Unit> C;
    @m8.g
    private final Function1<HotAnchorSummary, Unit> D;
    @m8.g
    private final Function1<UserInfo, Unit> E;
    private TextView F;
    private ImageView G;
    private TextView H;
    private ImageView I;
    private ImageView J;
    private TextView K;
    private TextView L;
    private TextView M;
    private TextView N;
    private TextView O;
    private TextView P;
    private TextView Q;
    private TextView R;
    private Group S;
    private AVLoadingIndicatorView T;
    @m8.h
    private HotAnchorSummary U;
    private boolean V;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private UserInfo f54474u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final String f54475v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final String f54476w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final BaseUserInfoDialog.UserType f54477x;

    /* renamed from: y  reason: collision with root package name */
    private final boolean f54478y;

    /* renamed from: z  reason: collision with root package name */
    private final boolean f54479z;

    /* compiled from: UserInfoDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f54480a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l f54481b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(TextView textView, l lVar) {
            super(0);
            this.f54480a = textView;
            this.f54481b = lVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Context context = this.f54480a.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            com.qennnsad.aknkaksd.util.l.g0(context, this.f54481b.d0(), this.f54481b.f54474u.getId());
            this.f54481b.dismiss();
        }
    }

    /* compiled from: UserInfoDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f54482a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l f54483b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(TextView textView, l lVar) {
            super(0);
            this.f54482a = textView;
            this.f54483b = lVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f54482a.setEnabled(false);
            if (this.f54483b.V) {
                p b02 = this.f54483b.b0();
                String id = this.f54483b.f54474u.getId();
                Intrinsics.checkNotNullExpressionValue(id, "user.id");
                b02.h(id, this.f54483b.f54476w);
                return;
            }
            p b03 = this.f54483b.b0();
            String id2 = this.f54483b.f54474u.getId();
            Intrinsics.checkNotNullExpressionValue(id2, "user.id");
            b03.c(id2, this.f54483b.f54476w);
        }
    }

    /* compiled from: UserInfoDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class c extends Lambda implements Function0<Unit> {
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
            Function1 function1 = l.this.C;
            String nickname = l.this.f54474u.getNickname();
            if (nickname == null) {
                nickname = "";
            }
            function1.invoke(nickname);
            l.this.dismiss();
        }
    }

    /* compiled from: UserInfoDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class d extends Lambda implements Function0<Unit> {
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
            UserProfileActivity.a aVar = UserProfileActivity.f51833l;
            Context requireContext = l.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            String id = l.this.f54474u.getId();
            Intrinsics.checkNotNullExpressionValue(id, "user.id");
            aVar.a(requireContext, id);
            l.this.dismiss();
        }
    }

    /* compiled from: UserInfoDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class e extends Lambda implements Function0<Unit> {
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
            HotAnchorSummary hotAnchorSummary = l.this.U;
            if (hotAnchorSummary != null) {
                l.this.D.invoke(hotAnchorSummary);
            }
            l.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserInfoDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class f extends Lambda implements Function0<Unit> {
        f() {
            super(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(l this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.dismiss();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            View requireView = l.this.requireView();
            final l lVar = l.this;
            requireView.postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.m
                @Override // java.lang.Runnable
                public final void run() {
                    l.f.b(l.this);
                }
            }, 100L);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public l(@m8.g UserInfo user, @m8.g String anchorId, @m8.g String roomId, @m8.g BaseUserInfoDialog.UserType userType, boolean z9, boolean z10, boolean z11, boolean z12, @m8.g Function1<? super String, Unit> sendReplyCallback, @m8.g Function1<? super HotAnchorSummary, Unit> goToStreamCallback, @m8.g Function1<? super UserInfo, Unit> roomManageCallback) {
        super(user, anchorId, roomId, userType, z10, roomManageCallback);
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(anchorId, "anchorId");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(userType, "userType");
        Intrinsics.checkNotNullParameter(sendReplyCallback, "sendReplyCallback");
        Intrinsics.checkNotNullParameter(goToStreamCallback, "goToStreamCallback");
        Intrinsics.checkNotNullParameter(roomManageCallback, "roomManageCallback");
        this.f54474u = user;
        this.f54475v = anchorId;
        this.f54476w = roomId;
        this.f54477x = userType;
        this.f54478y = z9;
        this.f54479z = z10;
        this.A = z11;
        this.B = z12;
        this.C = sendReplyCallback;
        this.D = goToStreamCallback;
        this.E = roomManageCallback;
    }

    private final void A0(final TextView textView, final String str) {
        textView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.j
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean B0;
                B0 = l.B0(textView, str, view);
                return B0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean B0(final TextView this_longClickToDisplayFullFollowCount, String number, View view) {
        Intrinsics.checkNotNullParameter(this_longClickToDisplayFullFollowCount, "$this_longClickToDisplayFullFollowCount");
        Intrinsics.checkNotNullParameter(number, "$number");
        final CharSequence currText = this_longClickToDisplayFullFollowCount.getText();
        Intrinsics.checkNotNullExpressionValue(currText, "currText");
        if (new Regex("[0-9]+").matches(currText)) {
            return false;
        }
        this_longClickToDisplayFullFollowCount.setText(number);
        this_longClickToDisplayFullFollowCount.postDelayed(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.k
            @Override // java.lang.Runnable
            public final void run() {
                l.C0(this_longClickToDisplayFullFollowCount, currText);
            }
        }, 1000L);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(TextView this_longClickToDisplayFullFollowCount, CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(this_longClickToDisplayFullFollowCount, "$this_longClickToDisplayFullFollowCount");
        this_longClickToDisplayFullFollowCount.setText(charSequence);
    }

    private final String D0(double d4) {
        int i4 = (int) d4;
        int i10 = i4 / 100000000;
        if (i10 > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(i10);
            sb.append((char) 20159);
            return sb.toString();
        }
        int i11 = i4 / 10000;
        if (i11 > 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i11);
            sb2.append((char) 19975);
            return sb2.toString();
        }
        return String.valueOf(i4);
    }

    private final void E0(UserInfo userInfo) {
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        FragmentManager parentFragmentManager = getParentFragmentManager();
        Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
        o.c(parentFragmentManager, userInfo, this.f54475v, this.f54476w, this.f54477x, this.B, this.f54478y, this.f54479z, true, this.C, this.D, this.E, new f());
    }

    private final void F0(TextView textView, String str) {
        textView.setText(D0(Double.parseDouble(str)));
        A0(textView, str);
    }

    private final void z0() {
        BaseUserInfoDialog.UserType userType = this.f54477x;
        if (userType == BaseUserInfoDialog.UserType.XI_BAO || userType == BaseUserInfoDialog.UserType.GAME_ANCHOR) {
            boolean areEqual = Intrinsics.areEqual(this.f54474u.getBroadcasting(), y.b.f83920h);
            boolean areEqual2 = Intrinsics.areEqual(this.f54474u.getBroadcasting(), "anchor");
            String Y = Y();
            o0.a(Y, "Is Streaming: " + areEqual + ", Is Anchor: " + areEqual2);
            TextView textView = this.F;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvOpenStream");
                textView = null;
            }
            textView.setVisibility(areEqual && !areEqual2 && this.f54478y ? 0 : 8);
            HotAnchorSummary hotAnchorSummary = new HotAnchorSummary();
            hotAnchorSummary.setAvatar(this.f54474u.getAvatar());
            hotAnchorSummary.setSnap(this.f54474u.getSnap());
            hotAnchorSummary.setCurrentRoomNum(this.f54474u.getCurrentRoomNum());
            hotAnchorSummary.setId(this.f54474u.getId());
            hotAnchorSummary.setNickname(this.f54474u.getNickname());
            hotAnchorSummary.setOnlineCount(0);
            hotAnchorSummary.setToyStatus(this.f54474u.getToy_status());
            this.U = hotAnchorSummary;
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.n
    public void O(@m8.h UserInfo userInfo) {
        Unit unit;
        AVLoadingIndicatorView aVLoadingIndicatorView = this.T;
        if (aVLoadingIndicatorView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pbUserInfo");
            aVLoadingIndicatorView = null;
        }
        aVLoadingIndicatorView.setVisibility(8);
        if (userInfo == null) {
            unit = null;
        } else if (userInfo.getPeerage_id() == this.f54474u.getPeerage_id() && userInfo.getIsMystery() == this.f54474u.getIsMystery()) {
            this.f54474u = userInfo;
            z0();
            String avatar = userInfo.getAvatar();
            if (avatar != null) {
                Intrinsics.checkNotNullExpressionValue(avatar, "avatar");
                ImageView imageView = this.G;
                if (imageView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("ivUserAvatar");
                    imageView = null;
                }
                com.qennnsad.aknkaksd.util.img.e.g(imageView, d0().j(avatar), true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
            }
            TextView textView = this.H;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvUserNickname");
                textView = null;
            }
            String nickname = userInfo.getNickname();
            if (nickname == null) {
                nickname = "";
            }
            textView.setText(nickname);
            ImageView imageView2 = this.I;
            if (imageView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("ivUserSex");
                imageView2 = null;
            }
            s1.w(imageView2, Integer.valueOf(userInfo.getSex()));
            ImageView imageView3 = this.J;
            if (imageView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("ivUserLevel");
                imageView3 = null;
            }
            s1.A(imageView3, userInfo.getLevel(), false);
            TextView textView2 = this.L;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvUserSignature");
                textView2 = null;
            }
            String intro = userInfo.getIntro();
            textView2.setText(intro != null ? intro : "");
            TextView textView3 = this.O;
            if (textView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvSentCount");
                textView3 = null;
            }
            textView3.setText(String.valueOf(userInfo.getTotalContribution()));
            TextView textView4 = this.M;
            if (textView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvFolloweesCount");
                textView4 = null;
            }
            String followeesCount = userInfo.getFolloweesCount();
            Intrinsics.checkNotNullExpressionValue(followeesCount, "it.followeesCount");
            F0(textView4, followeesCount);
            TextView textView5 = this.N;
            if (textView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvFansCount");
                textView5 = null;
            }
            String followersCount = userInfo.getFollowersCount();
            Intrinsics.checkNotNullExpressionValue(followersCount, "it.followersCount");
            F0(textView5, followersCount);
            TextView textView6 = this.P;
            if (textView6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("tvFollowButton");
                textView6 = null;
            }
            textView6.setText(getString(this.V ? R.string.un_star : R.string.star));
            unit = Unit.INSTANCE;
        } else {
            E0(userInfo);
            return;
        }
        if (unit == null) {
            com.qennnsad.aknkaksd.util.toast.a.m(R.string.userinfo_dialog_errorload, false, 2, null);
            dismiss();
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog
    protected int Z() {
        return R.layout.dialog_userinfo;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog
    public void f0(@m8.g View view) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        TextView textView5;
        List<String> follow_users;
        Intrinsics.checkNotNullParameter(view, "view");
        super.f0(view);
        View findViewById = view.findViewById(R.id.tv_open_stream);
        Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById(R.id.tv_open_stream)");
        this.F = (TextView) findViewById;
        View findViewById2 = view.findViewById(R.id.iv_user_avatar);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "view.findViewById(R.id.iv_user_avatar)");
        this.G = (ImageView) findViewById2;
        View findViewById3 = view.findViewById(R.id.tv_user_nickname);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "view.findViewById(R.id.tv_user_nickname)");
        this.H = (TextView) findViewById3;
        View findViewById4 = view.findViewById(R.id.iv_user_sex);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "view.findViewById(R.id.iv_user_sex)");
        this.I = (ImageView) findViewById4;
        View findViewById5 = view.findViewById(R.id.iv_user_level);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "view.findViewById(R.id.iv_user_level)");
        this.J = (ImageView) findViewById5;
        View findViewById6 = view.findViewById(R.id.tv_open_peerage);
        Intrinsics.checkNotNullExpressionValue(findViewById6, "view.findViewById(R.id.tv_open_peerage)");
        this.K = (TextView) findViewById6;
        View findViewById7 = view.findViewById(R.id.tv_user_signature);
        Intrinsics.checkNotNullExpressionValue(findViewById7, "view.findViewById(R.id.tv_user_signature)");
        this.L = (TextView) findViewById7;
        View findViewById8 = view.findViewById(R.id.tv_followees_count);
        Intrinsics.checkNotNullExpressionValue(findViewById8, "view.findViewById(R.id.tv_followees_count)");
        this.M = (TextView) findViewById8;
        View findViewById9 = view.findViewById(R.id.tv_fans_count);
        Intrinsics.checkNotNullExpressionValue(findViewById9, "view.findViewById(R.id.tv_fans_count)");
        this.N = (TextView) findViewById9;
        View findViewById10 = view.findViewById(R.id.tv_sent_count);
        Intrinsics.checkNotNullExpressionValue(findViewById10, "view.findViewById(R.id.tv_sent_count)");
        this.O = (TextView) findViewById10;
        View findViewById11 = view.findViewById(R.id.tv_follow_button);
        Intrinsics.checkNotNullExpressionValue(findViewById11, "view.findViewById(R.id.tv_follow_button)");
        this.P = (TextView) findViewById11;
        View findViewById12 = view.findViewById(R.id.tv_reply_button);
        Intrinsics.checkNotNullExpressionValue(findViewById12, "view.findViewById(R.id.tv_reply_button)");
        this.Q = (TextView) findViewById12;
        View findViewById13 = view.findViewById(R.id.tv_main_page_button);
        Intrinsics.checkNotNullExpressionValue(findViewById13, "view.findViewById(R.id.tv_main_page_button)");
        this.R = (TextView) findViewById13;
        View findViewById14 = view.findViewById(R.id.bottom_group);
        Intrinsics.checkNotNullExpressionValue(findViewById14, "view.findViewById(R.id.bottom_group)");
        this.S = (Group) findViewById14;
        View findViewById15 = view.findViewById(R.id.pb_user_info);
        Intrinsics.checkNotNullExpressionValue(findViewById15, "view.findViewById(R.id.pb_user_info)");
        this.T = (AVLoadingIndicatorView) findViewById15;
        TextView textView6 = this.K;
        AVLoadingIndicatorView aVLoadingIndicatorView = null;
        if (textView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvOpenPeerage");
            textView = null;
        } else {
            textView = textView6;
        }
        UserBean C = a0().C();
        textView.setVisibility(C != null && C.is_join_peerage() ? 0 : 8);
        s1.U(textView, 0L, new a(textView, this), 1, null);
        TextView textView7 = this.P;
        if (textView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvFollowButton");
            textView2 = null;
        } else {
            textView2 = textView7;
        }
        s1.U(textView2, 0L, new b(textView2, this), 1, null);
        TextView textView8 = this.Q;
        if (textView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvReplyButton");
            textView3 = null;
        } else {
            textView3 = textView8;
        }
        textView3.setVisibility(this.f54477x == BaseUserInfoDialog.UserType.COMMON ? 0 : 8);
        s1.U(textView3, 0L, new c(), 1, null);
        TextView textView9 = this.R;
        if (textView9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvMainPageButton");
            textView4 = null;
        } else {
            textView4 = textView9;
        }
        s1.U(textView4, 0L, new d(), 1, null);
        TextView textView10 = this.F;
        if (textView10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvOpenStream");
            textView5 = null;
        } else {
            textView5 = textView10;
        }
        s1.U(textView5, 0L, new e(), 1, null);
        UserBean C2 = a0().C();
        this.V = (C2 == null || (follow_users = C2.getFollow_users()) == null || !follow_users.contains(this.f54474u.getId())) ? false : true;
        Group group = this.S;
        if (group == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bottomGroup");
            group = null;
        }
        group.setVisibility(h0() ^ true ? 0 : 8);
        O(this.f54474u);
        if (this.A) {
            return;
        }
        p b02 = b0();
        String id = this.f54474u.getId();
        Intrinsics.checkNotNullExpressionValue(id, "user.id");
        b02.f(id);
        AVLoadingIndicatorView aVLoadingIndicatorView2 = this.T;
        if (aVLoadingIndicatorView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pbUserInfo");
        } else {
            aVLoadingIndicatorView = aVLoadingIndicatorView2;
        }
        aVLoadingIndicatorView.setVisibility(0);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.n
    public void g() {
        Integer intOrNull;
        TextView textView = null;
        com.qennnsad.aknkaksd.util.toast.a.m(R.string.follow_success, false, 2, null);
        TextView textView2 = this.P;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvFollowButton");
            textView2 = null;
        }
        textView2.setText(getString(R.string.un_star));
        textView2.setEnabled(true);
        this.V = true;
        g5.a a02 = a0();
        String id = this.f54474u.getId();
        Intrinsics.checkNotNullExpressionValue(id, "user.id");
        a02.t0(id, true);
        UserInfo userInfo = this.f54474u;
        String followersCount = userInfo.getFollowersCount();
        Intrinsics.checkNotNullExpressionValue(followersCount, "followersCount");
        intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(followersCount);
        userInfo.setFollowersCount(String.valueOf((intOrNull != null ? intOrNull.intValue() : 0) + 1));
        TextView textView3 = this.N;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvFansCount");
        } else {
            textView = textView3;
        }
        String followersCount2 = userInfo.getFollowersCount();
        Intrinsics.checkNotNullExpressionValue(followersCount2, "followersCount");
        F0(textView, followersCount2);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.n
    public void w() {
        Integer intOrNull;
        TextView textView = null;
        com.qennnsad.aknkaksd.util.toast.a.m(R.string.unfollow_success, false, 2, null);
        TextView textView2 = this.P;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvFollowButton");
            textView2 = null;
        }
        textView2.setText(getString(R.string.star));
        textView2.setEnabled(true);
        this.V = false;
        g5.a a02 = a0();
        String id = this.f54474u.getId();
        Intrinsics.checkNotNullExpressionValue(id, "user.id");
        a02.t0(id, false);
        UserInfo userInfo = this.f54474u;
        String followersCount = userInfo.getFollowersCount();
        Intrinsics.checkNotNullExpressionValue(followersCount, "followersCount");
        intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(followersCount);
        userInfo.setFollowersCount(String.valueOf((intOrNull != null ? intOrNull.intValue() : 0) - 1));
        TextView textView3 = this.N;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvFansCount");
        } else {
            textView = textView3;
        }
        String followersCount2 = userInfo.getFollowersCount();
        Intrinsics.checkNotNullExpressionValue(followersCount2, "followersCount");
        F0(textView, followersCount2);
    }
}
