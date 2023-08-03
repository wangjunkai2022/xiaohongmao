package com.qennnsad.aknkaksd.presentation.ui.widget.banner;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.BannerAdBean;
import com.qennnsad.aknkaksd.data.bean.UrlTarget;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.util.img.e;
import com.qennnsad.aknkaksd.util.s1;
import e5.d2;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: BannerAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\b\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0012BQ\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u00126\u0010 \u001a2\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\n0\u0017\u0012\b\b\u0002\u0010$\u001a\u00020!¢\u0006\u0004\b+\u0010,J\u001c\u0010\u0007\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u001c\u0010\u000b\u001a\u00020\n2\n\u0010\b\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005H\u0016J\b\u0010\f\u001a\u00020\u0005H\u0016J\u0016\u0010\u0010\u001a\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0007R\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015RD\u0010 \u001a2\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\n0\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001d\u0010*\u001a\b\u0012\u0004\u0012\u00020\u000e0%8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)¨\u0006-"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "h", "holder", "position", "", "g", "getItemCount", "", "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;", "newList", "submitList", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "f", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "url", "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", TypedValues.Attributes.S_TARGET, "b", "Lkotlin/jvm/functions/Function2;", "onBannerClick", "", "c", "Z", "circular", "", "d", "Ljava/util/List;", "e", "()Ljava/util/List;", "list", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function2;Z)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends RecyclerView.Adapter<a> {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final m f54369a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final Function2<String, UrlTarget, Unit> f54370b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f54371c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final List<BannerAdBean> f54372d;

    /* compiled from: BannerAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;", "item", "", "b", "Le5/d2;", "binding", "Le5/d2;", "c", "()Le5/d2;", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/b;Le5/d2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class a extends RecyclerView.ViewHolder {
        @g

        /* renamed from: a  reason: collision with root package name */
        private final d2 f54373a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f54374b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@g b bVar, d2 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f54374b = bVar;
            this.f54373a = binding;
        }

        public final void b(@g BannerAdBean item) {
            Intrinsics.checkNotNullParameter(item, "item");
            ImageView imageView = this.f54373a.f62322b;
            String imageUrl = item.getImageUrl();
            e.h(imageView, imageUrl != null ? this.f54374b.f().j(imageUrl) : null, false, R.drawable.placeholder_ad, R.drawable.placeholder_ad, 2, null);
        }

        @g
        public final d2 c() {
            return this.f54373a;
        }
    }

    public /* synthetic */ b(m mVar, Function2 function2, boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(mVar, function2, (i4 & 4) != 0 ? false : z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(b this$0, a this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Function2<String, UrlTarget, Unit> function2 = this$0.f54370b;
        String targetUrl = this$0.f54372d.get(this_apply.getBindingAdapterPosition()).getTargetUrl();
        if (targetUrl == null) {
            return;
        }
        UrlTarget target = this$0.f54372d.get(this_apply.getBindingAdapterPosition()).getTarget();
        if (target == null) {
            target = UrlTarget.Browser;
        }
        function2.invoke(targetUrl, target);
    }

    @g
    public final List<BannerAdBean> e() {
        return this.f54372d;
    }

    @g
    public final m f() {
        return this.f54369a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: g */
    public void onBindViewHolder(@g a holder, int i4) {
        BannerAdBean bannerAdBean;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (this.f54371c) {
            List<BannerAdBean> list = this.f54372d;
            bannerAdBean = list.get(i4 % list.size());
        } else {
            bannerAdBean = this.f54372d.get(i4);
        }
        holder.b(bannerAdBean);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.f54371c) {
            if (this.f54372d.isEmpty()) {
                return 0;
            }
            return this.f54372d.size() + 1;
        }
        return this.f54372d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @g
    /* renamed from: h */
    public a onCreateViewHolder(@g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        d2 d4 = d2.d(s1.i(parent), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(\n               …      false\n            )");
        final a aVar = new a(this, d4);
        aVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.widget.banner.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.i(b.this, aVar, view);
            }
        });
        return aVar;
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void submitList(@g List<BannerAdBean> newList) {
        Intrinsics.checkNotNullParameter(newList, "newList");
        this.f54372d.clear();
        this.f54372d.addAll(newList);
        notifyDataSetChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@g m sourceFactory, @g Function2<? super String, ? super UrlTarget, Unit> onBannerClick, boolean z9) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(onBannerClick, "onBannerClick");
        this.f54369a = sourceFactory;
        this.f54370b = onBannerClick;
        this.f54371c = z9;
        this.f54372d = new ArrayList();
    }
}
