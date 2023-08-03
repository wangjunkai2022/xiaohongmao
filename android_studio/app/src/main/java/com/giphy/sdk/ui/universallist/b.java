package com.giphy.sdk.ui.universallist;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.giphy.sdk.ui.GPHSettings;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.themes.GPHTheme;
import com.giphy.sdk.ui.universallist.e;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: NoResultsViewHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u000b"}, d2 = {"Lcom/giphy/sdk/ui/universallist/b;", "Lcom/giphy/sdk/ui/universallist/j;", "", "data", "", "b", "d", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class b extends j {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final C0142b f18858b = new C0142b(null);
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final Function2<ViewGroup, e.a, j> f18857a = a.f18859a;

    /* compiled from: NoResultsViewHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Landroid/view/ViewGroup;", "parent", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "adapterHelper", "Lcom/giphy/sdk/ui/universallist/b;", "a", "(Landroid/view/ViewGroup;Lcom/giphy/sdk/ui/universallist/e$a;)Lcom/giphy/sdk/ui/universallist/b;"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class a extends Lambda implements Function2<ViewGroup, e.a, b> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18859a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final b invoke(@m8.g ViewGroup parent, @m8.g e.a adapterHelper) {
            GPHTheme theme;
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(adapterHelper, "adapterHelper");
            View itemView = LayoutInflater.from(parent.getContext()).inflate(p.m.f18107l0, parent, false);
            GPHSettings e4 = adapterHelper.e();
            i2.e themeResources$giphy_ui_2_1_9_release = (e4 == null || (theme = e4.getTheme()) == null) ? null : theme.getThemeResources$giphy_ui_2_1_9_release(parent.getContext());
            if (themeResources$giphy_ui_2_1_9_release != null) {
                ((TextView) itemView.findViewById(p.j.f17906j1)).setTextColor(themeResources$giphy_ui_2_1_9_release.m());
            }
            Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
            return new b(itemView);
        }
    }

    /* compiled from: NoResultsViewHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011RO\u0010\f\u001a:\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0017\u0012\u00150\u0007R\u00020\b¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0002j\u0002`\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/giphy/sdk/ui/universallist/b$b;", "", "Lkotlin/Function2;", "Landroid/view/ViewGroup;", "Lkotlin/ParameterName;", "name", "parent", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "adapterHelper", "Lcom/giphy/sdk/ui/universallist/j;", "Lcom/giphy/sdk/ui/universallist/OnCreateViewHolder;", "createViewHolder", "Lkotlin/jvm/functions/Function2;", "a", "()Lkotlin/jvm/functions/Function2;", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.giphy.sdk.ui.universallist.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0142b {
        private C0142b() {
        }

        @m8.g
        public final Function2<ViewGroup, e.a, j> a() {
            return b.f18857a;
        }

        public /* synthetic */ C0142b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@m8.g View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @Override // com.giphy.sdk.ui.universallist.j
    public void b(@m8.h Object obj) {
        if (!(obj instanceof String)) {
            obj = null;
        }
        String str = (String) obj;
        if (str != null) {
            TextView textView = (TextView) this.itemView.findViewById(p.j.f17906j1);
            Intrinsics.checkNotNullExpressionValue(textView, "textView");
            textView.setText(str);
        }
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
        RecyclerView.LayoutParams layoutParams4 = layoutParams3 instanceof RecyclerView.LayoutParams ? layoutParams3 : null;
        if (layoutParams4 != null) {
            Resources system = Resources.getSystem();
            Intrinsics.checkNotNullExpressionValue(system, "Resources.getSystem()");
            ((ViewGroup.MarginLayoutParams) layoutParams4).width = system.getDisplayMetrics().widthPixels;
        }
    }

    @Override // com.giphy.sdk.ui.universallist.j
    public void d() {
    }
}
