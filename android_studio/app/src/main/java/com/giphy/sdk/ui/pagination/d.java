package com.giphy.sdk.ui.pagination;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.airbnb.lottie.LottieAnimationView;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.universallist.e;
import com.giphy.sdk.ui.universallist.j;
import h2.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: NetworkStateItemViewHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00132\u00020\u0001:\u0001\tB\u001d\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016R\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lcom/giphy/sdk/ui/pagination/d;", "Lcom/giphy/sdk/ui/universallist/j;", "Lcom/giphy/sdk/ui/pagination/c;", "networkState", "", "h", ContextChain.TAG_INFRA, "", "data", "b", "d", "Lkotlin/Function0;", "a", "Lkotlin/jvm/functions/Function0;", "retryCallback", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V", "c", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class d extends j {

    /* renamed from: a  reason: collision with root package name */
    private Function0<Unit> f18810a;
    @g

    /* renamed from: c  reason: collision with root package name */
    public static final b f18809c = new b(null);
    @g

    /* renamed from: b  reason: collision with root package name */
    private static final Function2<ViewGroup, e.a, j> f18808b = a.f18811a;

    /* compiled from: NetworkStateItemViewHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Landroid/view/ViewGroup;", "parent", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "<anonymous parameter 1>", "Lcom/giphy/sdk/ui/pagination/d;", "a", "(Landroid/view/ViewGroup;Lcom/giphy/sdk/ui/universallist/e$a;)Lcom/giphy/sdk/ui/pagination/d;"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class a extends Lambda implements Function2<ViewGroup, e.a, d> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18811a = new a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: NetworkStateItemViewHolder.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* renamed from: com.giphy.sdk.ui.pagination.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0139a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            public static final C0139a f18812a = new C0139a();

            C0139a() {
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
            }
        }

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @g
        /* renamed from: a */
        public final d invoke(@g ViewGroup parent, @g e.a aVar) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(aVar, "<anonymous parameter 1>");
            View inflate = LayoutInflater.from(parent.getContext()).inflate(p.m.f18104k0, parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "layoutInflater.inflate(\n…  false\n                )");
            return new d(inflate, C0139a.f18812a);
        }
    }

    /* compiled from: NetworkStateItemViewHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002RO\u0010\u0010\u001a:\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0017\u0012\u00150\u000bR\u00020\f¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e0\u0006j\u0002`\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/giphy/sdk/ui/pagination/d$b;", "", "", "constraint", "", "b", "Lkotlin/Function2;", "Landroid/view/ViewGroup;", "Lkotlin/ParameterName;", "name", "parent", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "adapterHelper", "Lcom/giphy/sdk/ui/universallist/j;", "Lcom/giphy/sdk/ui/universallist/OnCreateViewHolder;", "createViewHolder", "Lkotlin/jvm/functions/Function2;", "a", "()Lkotlin/jvm/functions/Function2;", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        @g
        public final Function2<ViewGroup, e.a, j> a() {
            return d.f18808b;
        }

        public final int b(boolean z9) {
            return z9 ? 0 : 8;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkStateItemViewHolder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005¨\u0006\u0006"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick", "com/giphy/sdk/ui/pagination/NetworkStateItemViewHolder$bindTo$1$1"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class c implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.giphy.sdk.ui.pagination.c f18814b;

        c(com.giphy.sdk.ui.pagination.c cVar) {
            this.f18814b = cVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            d.this.f18810a.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(@g View view, @g Function0<Unit> retryCallback) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(retryCallback, "retryCallback");
        this.f18810a = retryCallback;
    }

    private final void h(com.giphy.sdk.ui.pagination.c cVar) {
        boolean z9;
        LottieAnimationView loadingAnimation = h.a(this.itemView).f68987c;
        Intrinsics.checkNotNullExpressionValue(loadingAnimation, "loadingAnimation");
        b bVar = f18809c;
        if ((cVar != null ? cVar.k() : null) != Status.RUNNING) {
            if ((cVar != null ? cVar.k() : null) != Status.RUNNING_INITIAL) {
                z9 = false;
                loadingAnimation.setVisibility(bVar.b(z9));
            }
        }
        z9 = true;
        loadingAnimation.setVisibility(bVar.b(z9));
    }

    @Override // com.giphy.sdk.ui.universallist.j
    public void b(@m8.h Object obj) {
        if (obj instanceof com.giphy.sdk.ui.pagination.c) {
            com.giphy.sdk.ui.pagination.c cVar = (com.giphy.sdk.ui.pagination.c) obj;
            Function0<Unit> i4 = cVar.i();
            if (i4 != null) {
                this.f18810a = i4;
            }
            i(cVar);
        }
    }

    @Override // com.giphy.sdk.ui.universallist.j
    public void d() {
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void i(@m8.h com.giphy.sdk.ui.pagination.c r10) {
        /*
            r9 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "networkState="
            r0.append(r1)
            r0.append(r10)
            java.lang.String r0 = r0.toString()
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]
            timber.log.Timber.e(r0, r2)
            android.view.View r0 = r9.itemView
            java.lang.String r2 = "itemView"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            boolean r3 = r0 instanceof androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams
            r4 = 0
            if (r3 != 0) goto L28
            r0 = r4
        L28:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LayoutParams r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) r0
            r3 = 1
            if (r0 == 0) goto L30
            r0.setFullSpan(r3)
        L30:
            android.view.View r0 = r9.itemView
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            boolean r5 = r0 instanceof androidx.recyclerview.widget.RecyclerView.LayoutParams
            if (r5 != 0) goto L3e
            r0 = r4
        L3e:
            androidx.recyclerview.widget.RecyclerView$LayoutParams r0 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) r0
            if (r0 == 0) goto L53
            android.content.res.Resources r5 = android.content.res.Resources.getSystem()
            java.lang.String r6 = "Resources.getSystem()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            android.util.DisplayMetrics r5 = r5.getDisplayMetrics()
            int r5 = r5.widthPixels
            r0.width = r5
        L53:
            r9.h(r10)
            android.view.View r0 = r9.itemView
            h2.h r0 = h2.h.a(r0)
            android.widget.Button r5 = r0.f68988d
            java.lang.String r6 = "retryButton"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            com.giphy.sdk.ui.pagination.d$b r6 = com.giphy.sdk.ui.pagination.d.f18809c
            if (r10 == 0) goto L6c
            com.giphy.sdk.ui.pagination.Status r7 = r10.k()
            goto L6d
        L6c:
            r7 = r4
        L6d:
            com.giphy.sdk.ui.pagination.Status r8 = com.giphy.sdk.ui.pagination.Status.FAILED
            if (r7 == r8) goto L80
            if (r10 == 0) goto L78
            com.giphy.sdk.ui.pagination.Status r7 = r10.k()
            goto L79
        L78:
            r7 = r4
        L79:
            com.giphy.sdk.ui.pagination.Status r8 = com.giphy.sdk.ui.pagination.Status.FAILED_INITIAL
            if (r7 != r8) goto L7e
            goto L80
        L7e:
            r7 = 0
            goto L81
        L80:
            r7 = 1
        L81:
            int r7 = r6.b(r7)
            r5.setVisibility(r7)
            android.widget.TextView r5 = r0.f68986b
            java.lang.String r7 = "errorMessage"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r7)
            if (r10 == 0) goto L95
            java.lang.String r4 = r10.j()
        L95:
            if (r4 == 0) goto L98
            r1 = 1
        L98:
            int r1 = r6.b(r1)
            r5.setVisibility(r1)
            android.widget.TextView r1 = r0.f68986b
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r7)
            android.view.View r3 = r9.itemView
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)
            android.content.res.Resources r2 = r3.getResources()
            int r3 = com.giphy.sdk.ui.p.o.W0
            java.lang.CharSequence r2 = r2.getText(r3)
            r1.setText(r2)
            android.widget.Button r0 = r0.f68988d
            com.giphy.sdk.ui.pagination.d$c r1 = new com.giphy.sdk.ui.pagination.d$c
            r1.<init>(r10)
            r0.setOnClickListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.giphy.sdk.ui.pagination.d.i(com.giphy.sdk.ui.pagination.c):void");
    }
}
