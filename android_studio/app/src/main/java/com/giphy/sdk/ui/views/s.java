package com.giphy.sdk.ui.views;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.DialogFragment;
import com.giphy.sdk.core.models.User;
import com.giphy.sdk.ui.p;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UserProfileInfoDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 #2\u00020\u0001:\u0001\u0012B\u0007¢\u0006\u0004\b!\u0010\"J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0002H\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006$"}, d2 = {"Lcom/giphy/sdk/ui/views/s;", "Landroidx/fragment/app/DialogFragment;", "", "Y", "", "getTheme", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Lcom/giphy/sdk/core/models/User;", "a", "Lcom/giphy/sdk/core/models/User;", "user", "Lcom/giphy/sdk/ui/views/u;", "b", "Lcom/giphy/sdk/ui/views/u;", "profileLoader", "Lcom/giphy/sdk/ui/views/t;", "d", "Lcom/giphy/sdk/ui/views/t;", "X", "()Lcom/giphy/sdk/ui/views/t;", "Z", "(Lcom/giphy/sdk/ui/views/t;)V", "closeListener", "<init>", "()V", "f", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class s extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private User f19217a;

    /* renamed from: b  reason: collision with root package name */
    private u f19218b;

    /* renamed from: c  reason: collision with root package name */
    private h2.o f19219c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private t f19220d;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    public static final a f19216f = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private static final String f19215e = "user";

    /* compiled from: UserProfileInfoDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/giphy/sdk/ui/views/s$a;", "", "Lcom/giphy/sdk/core/models/User;", "user", "Lcom/giphy/sdk/ui/views/s;", "a", "", "USER_KEY", "Ljava/lang/String;", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        @m8.g
        public final s a(@m8.g User user) {
            Intrinsics.checkNotNullParameter(user, "user");
            s sVar = new s();
            Bundle bundle = new Bundle();
            bundle.putParcelable(s.f19215e, user);
            Unit unit = Unit.INSTANCE;
            sVar.setArguments(bundle);
            return sVar;
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: UserProfileInfoDialog.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0016¨\u0006\u000b"}, d2 = {"com/giphy/sdk/ui/views/s$b", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;", "Landroid/view/View;", "bottomSheet", "", "newState", "", "onStateChanged", "", "slideOffset", "onSlide", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b extends BottomSheetBehavior.BottomSheetCallback {
        b() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(@m8.g View bottomSheet, float f10) {
            Intrinsics.checkNotNullParameter(bottomSheet, "bottomSheet");
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(@m8.g View bottomSheet, int i4) {
            Intrinsics.checkNotNullParameter(bottomSheet, "bottomSheet");
            if (i4 == 5) {
                t X = s.this.X();
                if (X != null) {
                    X.a();
                }
                s.this.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UserProfileInfoDialog.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            h2.o V = s.V(s.this);
            TextView channelDescription = V.f69012d;
            Intrinsics.checkNotNullExpressionValue(channelDescription, "channelDescription");
            channelDescription.setMaxLines(Integer.MAX_VALUE);
            BottomSheetBehavior from = BottomSheetBehavior.from(V.f69010b);
            Intrinsics.checkNotNullExpressionValue(from, "BottomSheetBehavior.from(body)");
            NestedScrollView body = V.f69010b;
            Intrinsics.checkNotNullExpressionValue(body, "body");
            from.setPeekHeight(body.getHeight());
            BottomSheetBehavior from2 = BottomSheetBehavior.from(V.f69010b);
            Intrinsics.checkNotNullExpressionValue(from2, "BottomSheetBehavior.from(body)");
            from2.setState(3);
        }
    }

    /* compiled from: UserProfileInfoDialog.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005¨\u0006\u0006"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick", "com/giphy/sdk/ui/views/UserProfileInfoDialog$onViewCreated$1$1"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            t X = s.this.X();
            if (X != null) {
                X.a();
            }
            s.this.dismiss();
        }
    }

    public static final /* synthetic */ h2.o V(s sVar) {
        h2.o oVar = sVar.f19219c;
        if (oVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("userProfileInfoDialogBinding");
        }
        return oVar;
    }

    private final void Y() {
        h2.o oVar = this.f19219c;
        if (oVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("userProfileInfoDialogBinding");
        }
        BottomSheetBehavior from = BottomSheetBehavior.from(oVar.f69010b);
        Intrinsics.checkNotNullExpressionValue(from, "BottomSheetBehavior.from…leInfoDialogBinding.body)");
        from.addBottomSheetCallback(new b());
        View view = getView();
        if (view != null) {
            view.postDelayed(new c(), 100L);
        }
    }

    @m8.h
    public final t X() {
        return this.f19220d;
    }

    public final void Z(@m8.h t tVar) {
        this.f19220d = tVar;
    }

    @Override // androidx.fragment.app.DialogFragment
    public int getTheme() {
        return p.C0138p.U3;
    }

    @Override // androidx.fragment.app.Fragment
    @m8.h
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        h2.o d4 = h2.o.d(LayoutInflater.from(getContext()), viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "GphUserProfileInfoDialog…          false\n        )");
        this.f19219c = d4;
        if (d4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("userProfileInfoDialogBinding");
        }
        NestedScrollView body = d4.f69010b;
        Intrinsics.checkNotNullExpressionValue(body, "body");
        Drawable background = body.getBackground();
        com.giphy.sdk.ui.l lVar = com.giphy.sdk.ui.l.f17075f;
        background.setColorFilter(lVar.m().d(), PorterDuff.Mode.SRC_ATOP);
        d4.f69017i.setTextColor(lVar.m().k());
        d4.f69013e.setTextColor(lVar.m().k());
        d4.f69012d.setTextColor(lVar.m().k());
        h2.o oVar = this.f19219c;
        if (oVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("userProfileInfoDialogBinding");
        }
        return oVar.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f19220d = null;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Parcelable parcelable = requireArguments().getParcelable(f19215e);
        Intrinsics.checkNotNull(parcelable);
        this.f19217a = (User) parcelable;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        User user = this.f19217a;
        if (user == null) {
            Intrinsics.throwUninitializedPropertyAccessException("user");
        }
        this.f19218b = new u(requireContext, user);
        h2.o oVar = this.f19219c;
        if (oVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("userProfileInfoDialogBinding");
        }
        u uVar = this.f19218b;
        if (uVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileLoader");
        }
        TextView userName = oVar.f69017i;
        Intrinsics.checkNotNullExpressionValue(userName, "userName");
        TextView channelName = oVar.f69013e;
        Intrinsics.checkNotNullExpressionValue(channelName, "channelName");
        ImageView verifiedBadge = oVar.f69018j;
        Intrinsics.checkNotNullExpressionValue(verifiedBadge, "verifiedBadge");
        GifView userChannelGifAvatar = oVar.f69016h;
        Intrinsics.checkNotNullExpressionValue(userChannelGifAvatar, "userChannelGifAvatar");
        uVar.e(userName, channelName, verifiedBadge, userChannelGifAvatar);
        u uVar2 = this.f19218b;
        if (uVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileLoader");
        }
        TextView channelDescription = oVar.f69012d;
        Intrinsics.checkNotNullExpressionValue(channelDescription, "channelDescription");
        TextView websiteUrl = oVar.f69019k;
        Intrinsics.checkNotNullExpressionValue(websiteUrl, "websiteUrl");
        LinearLayout socialContainer = oVar.f69015g;
        Intrinsics.checkNotNullExpressionValue(socialContainer, "socialContainer");
        uVar2.f(channelDescription, websiteUrl, socialContainer);
        oVar.f69014f.setOnClickListener(new d());
        Y();
    }
}
