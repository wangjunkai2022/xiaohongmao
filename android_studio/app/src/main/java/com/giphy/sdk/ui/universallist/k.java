package com.giphy.sdk.ui.universallist;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.giphy.sdk.core.models.User;
import com.giphy.sdk.ui.GPHSettings;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.themes.GPHTheme;
import com.giphy.sdk.ui.universallist.e;
import com.giphy.sdk.ui.views.GifView;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: UserProfileViewHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u000b"}, d2 = {"Lcom/giphy/sdk/ui/universallist/k;", "Lcom/giphy/sdk/ui/universallist/j;", "", "data", "", "b", "d", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class k extends j {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final b f18908b = new b(null);
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final Function2<ViewGroup, e.a, j> f18907a = a.f18909a;

    /* compiled from: UserProfileViewHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Landroid/view/ViewGroup;", "parent", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "adapterHelper", "Lcom/giphy/sdk/ui/universallist/k;", "a", "(Landroid/view/ViewGroup;Lcom/giphy/sdk/ui/universallist/e$a;)Lcom/giphy/sdk/ui/universallist/k;"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class a extends Lambda implements Function2<ViewGroup, e.a, k> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18909a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final k invoke(@m8.g ViewGroup parent, @m8.g e.a adapterHelper) {
            GPHTheme theme;
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(adapterHelper, "adapterHelper");
            View view = LayoutInflater.from(parent.getContext()).inflate(p.m.f18128s0, parent, false);
            GPHSettings e4 = adapterHelper.e();
            i2.e themeResources$giphy_ui_2_1_9_release = (e4 == null || (theme = e4.getTheme()) == null) ? null : theme.getThemeResources$giphy_ui_2_1_9_release(parent.getContext());
            if (themeResources$giphy_ui_2_1_9_release != null) {
                h2.p d4 = h2.p.d(LayoutInflater.from(parent.getContext()), parent, false);
                d4.f69030k.setTextColor(themeResources$giphy_ui_2_1_9_release.k());
                d4.f69024e.setTextColor(themeResources$giphy_ui_2_1_9_release.k());
            }
            Intrinsics.checkNotNullExpressionValue(view, "view");
            return new k(view);
        }
    }

    /* compiled from: UserProfileViewHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011RO\u0010\f\u001a:\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0017\u0012\u00150\u0007R\u00020\b¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0002j\u0002`\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/giphy/sdk/ui/universallist/k$b;", "", "Lkotlin/Function2;", "Landroid/view/ViewGroup;", "Lkotlin/ParameterName;", "name", "parent", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "adapterHelper", "Lcom/giphy/sdk/ui/universallist/j;", "Lcom/giphy/sdk/ui/universallist/OnCreateViewHolder;", "createViewHolder", "Lkotlin/jvm/functions/Function2;", "a", "()Lkotlin/jvm/functions/Function2;", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        @m8.g
        public final Function2<ViewGroup, e.a, j> a() {
            return k.f18907a;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(@m8.g View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @Override // com.giphy.sdk.ui.universallist.j
    public void b(@m8.h Object obj) {
        View itemView = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        ViewGroup.LayoutParams layoutParams = itemView.getLayoutParams();
        if (!(layoutParams instanceof StaggeredGridLayoutManager.LayoutParams)) {
            layoutParams = null;
        }
        StaggeredGridLayoutManager.LayoutParams layoutParams2 = (StaggeredGridLayoutManager.LayoutParams) layoutParams;
        if (layoutParams2 != null) {
            layoutParams2.setFullSpan(true);
        }
        View itemView2 = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView2, "itemView");
        ViewGroup.LayoutParams layoutParams3 = itemView2.getLayoutParams();
        if (!(layoutParams3 instanceof RecyclerView.LayoutParams)) {
            layoutParams3 = null;
        }
        RecyclerView.LayoutParams layoutParams4 = (RecyclerView.LayoutParams) layoutParams3;
        if (layoutParams4 != null) {
            Resources system = Resources.getSystem();
            Intrinsics.checkNotNullExpressionValue(system, "Resources.getSystem()");
            ((ViewGroup.MarginLayoutParams) layoutParams4).width = system.getDisplayMetrics().widthPixels;
        }
        if (!(obj instanceof User)) {
            obj = null;
        }
        User user = (User) obj;
        if (user != null) {
            h2.p a10 = h2.p.a(this.itemView);
            TextView userName = a10.f69030k;
            Intrinsics.checkNotNullExpressionValue(userName, "userName");
            userName.setText(user.getDisplayName());
            TextView channelName = a10.f69024e;
            Intrinsics.checkNotNullExpressionValue(channelName, "channelName");
            channelName.setText('@' + user.getUsername());
            ImageView verifiedBadge = a10.f69031l;
            Intrinsics.checkNotNullExpressionValue(verifiedBadge, "verifiedBadge");
            verifiedBadge.setVisibility(user.getVerified() ? 0 : 8);
            a10.f69022c.v(user.getBannerUrl());
            a10.f69029j.v(user.getAvatarUrl());
        }
    }

    @Override // com.giphy.sdk.ui.universallist.j
    public void d() {
        List<GifView> listOf;
        h2.p a10 = h2.p.a(this.itemView);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new GifView[]{a10.f69022c, a10.f69029j});
        for (GifView gifView : listOf) {
            gifView.setGifCallback(null);
            gifView.E();
        }
    }
}
