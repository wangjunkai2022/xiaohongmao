package com.qennnsad.aknkaksd.presentation.ui.widget.userinfo;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.fragment.app.DialogFragment;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.util.h1;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: UserInfoDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u00002\u00020\u00012\u00020\u0002:\u0001aBC\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001b\u0012\u0006\u0010\u001f\u001a\u00020\u001b\u0012\u0006\u0010#\u001a\u00020 \u0012\u0006\u0010&\u001a\u00020$\u0012\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00100'¢\u0006\u0004\b_\u0010`J\b\u0010\u0004\u001a\u00020\u0003H%J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J&\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u000eH\u0016J\u0018\u0010\u0016\u001a\u00020\u00102\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0014H\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010&\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010\u0004R \u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00100'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u00107\u001a\n 3*\u0004\u0018\u00010\u001b0\u001b8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b4\u0010\u001c\u001a\u0004\b5\u00106R\"\u0010?\u001a\u0002088\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u0016\u0010C\u001a\u00020@8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bA\u0010BR\u0016\u0010E\u001a\u00020@8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bD\u0010BR\"\u0010K\u001a\u00020@8\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\bF\u0010B\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u001b\u0010P\u001a\u00020$8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010OR*\u0010W\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR\"\u0010Y\u001a\u00020X8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^¨\u0006b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;", "Landroidx/fragment/app/DialogFragment;", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;", "", "Z", "getTheme", "Landroid/content/Context;", "b", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "", "onStart", "view", "f0", "Lkotlin/Function0;", "onShow", "D", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "a", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "user", "", "Ljava/lang/String;", "anchorId", "c", "roomId", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;", "d", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;", "userType", "", "e", "isPkOpponentClicked", "Lkotlin/Function1;", "f", "Lkotlin/jvm/functions/Function1;", "roomManageCallback", "Lcom/qennnsad/aknkaksd/data/repository/m;", "h", "Lcom/qennnsad/aknkaksd/data/repository/m;", "d0", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "l0", "(Lcom/qennnsad/aknkaksd/data/repository/m;)V", "sourceFactory", "kotlin.jvm.PlatformType", ContextChain.TAG_INFRA, "Y", "()Ljava/lang/String;", "LOG_TAG", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;", "j", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;", "b0", "()Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;", "j0", "(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;)V", "presenter", "Landroid/widget/TextView;", "k", "Landroid/widget/TextView;", "tvComplaint", "l", "tvSendNameCard", "m", "e0", "()Landroid/widget/TextView;", "m0", "(Landroid/widget/TextView;)V", "tvUserId", "n", "Lkotlin/Lazy;", "h0", "()Z", "isOwnInfoCard", "o", "Lkotlin/jvm/functions/Function0;", "c0", "()Lkotlin/jvm/functions/Function0;", "k0", "(Lkotlin/jvm/functions/Function0;)V", "showListener", "Lg5/a;", "localDataManager", "Lg5/a;", "a0", "()Lg5/a;", "i0", "(Lg5/a;)V", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;ZLkotlin/jvm/functions/Function1;)V", "UserType", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class BaseUserInfoDialog extends DialogFragment implements n {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private UserInfo f54431a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final String f54432b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final String f54433c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final UserType f54434d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f54435e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Function1<UserInfo, Unit> f54436f;
    @u7.a

    /* renamed from: g  reason: collision with root package name */
    public g5.a f54437g;
    @u7.a

    /* renamed from: h  reason: collision with root package name */
    public com.qennnsad.aknkaksd.data.repository.m f54438h;

    /* renamed from: i  reason: collision with root package name */
    private final String f54439i;

    /* renamed from: j  reason: collision with root package name */
    protected p f54440j;

    /* renamed from: k  reason: collision with root package name */
    private TextView f54441k;

    /* renamed from: l  reason: collision with root package name */
    private TextView f54442l;

    /* renamed from: m  reason: collision with root package name */
    protected TextView f54443m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final Lazy f54444n;
    @m8.h

    /* renamed from: o  reason: collision with root package name */
    private Function0<Unit> f54445o;

    /* compiled from: UserInfoDialog.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;", "", "(Ljava/lang/String;I)V", "COMMON", "XI_BAO", "GAME_ANCHOR", "GAME_USER", "PEERAGE_INFO", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum UserType {
        COMMON,
        XI_BAO,
        GAME_ANCHOR,
        GAME_USER,
        PEERAGE_INFO
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserInfoDialog.kt */
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
            BaseUserInfoDialog.this.f54436f.invoke(BaseUserInfoDialog.this.f54431a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserInfoDialog.kt */
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
            p b02 = BaseUserInfoDialog.this.b0();
            String id = BaseUserInfoDialog.this.f54431a.getId();
            Intrinsics.checkNotNullExpressionValue(id, "user.id");
            b02.g(id, BaseUserInfoDialog.this.f54433c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserInfoDialog.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f54449a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BaseUserInfoDialog f54450b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(TextView textView, BaseUserInfoDialog baseUserInfoDialog) {
            super(0);
            this.f54449a = textView;
            this.f54450b = baseUserInfoDialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Context context = this.f54449a.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            String id = this.f54450b.f54431a.getId();
            Intrinsics.checkNotNullExpressionValue(id, "user.id");
            h1.e(context, id, null, null, 6, null);
        }
    }

    /* compiled from: UserInfoDialog.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class d extends Lambda implements Function0<Boolean> {
        d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Boolean invoke() {
            UserBean C = BaseUserInfoDialog.this.a0().C();
            boolean z9 = false;
            if (C != null) {
                BaseUserInfoDialog baseUserInfoDialog = BaseUserInfoDialog.this;
                if (Intrinsics.areEqual(baseUserInfoDialog.f54431a.getId(), C.getId()) || Intrinsics.areEqual(baseUserInfoDialog.f54431a.getId(), C.getMysteryId())) {
                    z9 = true;
                }
            }
            return Boolean.valueOf(z9);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BaseUserInfoDialog(@m8.g UserInfo user, @m8.g String anchorId, @m8.g String roomId, @m8.g UserType userType, boolean z9, @m8.g Function1<? super UserInfo, Unit> roomManageCallback) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(anchorId, "anchorId");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(userType, "userType");
        Intrinsics.checkNotNullParameter(roomManageCallback, "roomManageCallback");
        this.f54431a = user;
        this.f54432b = anchorId;
        this.f54433c = roomId;
        this.f54434d = userType;
        this.f54435e = z9;
        this.f54436f = roomManageCallback;
        this.f54439i = getClass().getSimpleName();
        this.f54444n = LazyKt.lazy(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean g0(TextView this_apply, BaseUserInfoDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context context = this_apply.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        String id = this$0.f54431a.getId();
        Intrinsics.checkNotNullExpressionValue(id, "user.id");
        h1.e(context, id, null, null, 6, null);
        return true;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.n
    public void D(@m8.h Function0<Unit> function0) {
        this.f54445o = function0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String Y() {
        return this.f54439i;
    }

    @LayoutRes
    protected abstract int Z();

    @m8.g
    public final g5.a a0() {
        g5.a aVar = this.f54437g;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.n
    @m8.g
    public Context b() {
        Context applicationContext = requireContext().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "requireContext().applicationContext");
        return applicationContext;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final p b0() {
        p pVar = this.f54440j;
        if (pVar != null) {
            return pVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("presenter");
        return null;
    }

    @m8.h
    public final Function0<Unit> c0() {
        return this.f54445o;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m d0() {
        com.qennnsad.aknkaksd.data.repository.m mVar = this.f54438h;
        if (mVar != null) {
            return mVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sourceFactory");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final TextView e0() {
        TextView textView = this.f54443m;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvUserId");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void f0(@m8.g android.view.View r18) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog.f0(android.view.View):void");
    }

    @Override // androidx.fragment.app.DialogFragment
    public int getTheme() {
        return R.style.BottomWideDialogStyle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean h0() {
        return ((Boolean) this.f54444n.getValue()).booleanValue();
    }

    public final void i0(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f54437g = aVar;
    }

    protected final void j0(@m8.g p pVar) {
        Intrinsics.checkNotNullParameter(pVar, "<set-?>");
        this.f54440j = pVar;
    }

    public final void k0(@m8.h Function0<Unit> function0) {
        this.f54445o = function0;
    }

    public final void l0(@m8.g com.qennnsad.aknkaksd.data.repository.m mVar) {
        Intrinsics.checkNotNullParameter(mVar, "<set-?>");
        this.f54438h = mVar;
    }

    protected final void m0(@m8.g TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.f54443m = textView;
    }

    @Override // androidx.fragment.app.Fragment
    @m8.h
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = getLayoutInflater().inflate(Z(), viewGroup, false);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setGravity(80);
        }
        j0(new p(this));
        Intrinsics.checkNotNullExpressionValue(inflate, "this");
        f0(inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Function0<Unit> function0 = this.f54445o;
        if (function0 != null) {
            function0.invoke();
        }
    }
}
