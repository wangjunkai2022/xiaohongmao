package com.qennnsad.aknkaksd.presentation.module.contributors;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.paging.PagingDataAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.qennnsad.aknkaksd.util.s1;
import e5.l2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: ContributorsAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u000eB+\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0006\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u001c\u0010\b\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u001c\u0010\f\u001a\u00020\u000b2\n\u0010\t\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006H\u0016R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;", "Landroidx/paging/PagingDataAdapter;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "Lcom/qennnsad/aknkaksd/presentation/module/contributors/c$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", ContextChain.TAG_INFRA, "holder", "position", "", "h", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "b", "I", "topCount", "Lkotlin/Function1;", "c", "Lkotlin/jvm/functions/Function1;", "onItemClick", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;ILkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends PagingDataAdapter<RankItem, a> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f51337a;

    /* renamed from: b  reason: collision with root package name */
    private final int f51338b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Function1<RankItem, Unit> f51339c;

    /* compiled from: ContributorsAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/contributors/c$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "item", "", "b", "Le5/l2;", "binding", "Le5/l2;", "c", "()Le5/l2;", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/contributors/c;Le5/l2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final l2 f51340a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ c f51341b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g c cVar, l2 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f51341b = cVar;
            this.f51340a = binding;
        }

        public final void b(@m8.g RankItem item) {
            Intrinsics.checkNotNullParameter(item, "item");
            l2 l2Var = this.f51340a;
            c cVar = this.f51341b;
            TextView tvRank = l2Var.f62709k;
            Intrinsics.checkNotNullExpressionValue(tvRank, "tvRank");
            Integer rankPosition = item.getRankPosition();
            s1.D(tvRank, rankPosition != null ? rankPosition.intValue() : 0);
            ImageView ivTopBg = l2Var.f62704f;
            Intrinsics.checkNotNullExpressionValue(ivTopBg, "ivTopBg");
            Integer rankPosition2 = item.getRankPosition();
            s1.F(ivTopBg, rankPosition2 != null ? rankPosition2.intValue() : 0);
            com.qennnsad.aknkaksd.util.img.e.g(l2Var.f62700b, cVar.f51337a.j(item.getAvatar()), true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
            ImageView ivSex = l2Var.f62703e;
            Intrinsics.checkNotNullExpressionValue(ivSex, "ivSex");
            s1.w(ivSex, Integer.valueOf(item.getSex()));
            l2Var.f62708j.setText(item.getNickname());
            ImageView ivLevel = l2Var.f62701c;
            Intrinsics.checkNotNullExpressionValue(ivLevel, "ivLevel");
            s1.A(ivLevel, item.getLevelId(), item.isMystery());
            ImageView ivPeerage = l2Var.f62702d;
            Intrinsics.checkNotNullExpressionValue(ivPeerage, "ivPeerage");
            s1.C(ivPeerage, item.getPeerageId());
            l2Var.f62706h.setText(String.valueOf(item.getCoin()));
            ConstraintLayout constraintLayout = this.f51340a.f62705g;
            Intrinsics.checkNotNullExpressionValue(constraintLayout, "binding.main");
            Integer rankPosition3 = item.getRankPosition();
            constraintLayout.setVisibility((rankPosition3 != null ? rankPosition3.intValue() : 0) > cVar.f51338b ? 0 : 8);
        }

        @m8.g
        public final l2 c() {
            return this.f51340a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContributorsAdapter.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a f51343b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(a aVar) {
            super(0);
            this.f51343b = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            RankItem d4 = c.d(c.this, this.f51343b.getBindingAdapterPosition());
            if (d4 != null) {
                c.this.f51339c.invoke(d4);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public c(@m8.g com.qennnsad.aknkaksd.data.repository.m r8, int r9, @m8.g kotlin.jvm.functions.Function1<? super com.qennnsad.aknkaksd.data.bean.RankItem, kotlin.Unit> r10) {
        /*
            r7 = this;
            java.lang.String r0 = "sourceFactory"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "onItemClick"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            com.qennnsad.aknkaksd.presentation.module.contributors.d$a r2 = com.qennnsad.aknkaksd.presentation.module.contributors.d.a()
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 0
            r1 = r7
            r1.<init>(r2, r3, r4, r5, r6)
            r7.f51337a = r8
            r7.f51338b = r9
            r7.f51339c = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.contributors.c.<init>(com.qennnsad.aknkaksd.data.repository.m, int, kotlin.jvm.functions.Function1):void");
    }

    public static final /* synthetic */ RankItem d(c cVar, int i4) {
        return cVar.getItem(i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: h */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        RankItem item = getItem(i4);
        if (item != null) {
            holder.b(item);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: i */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        l2 d4 = l2.d(s1.i(parent), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(parent.layoutInflator, parent, false)");
        a aVar = new a(this, d4);
        View itemView = aVar.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        s1.U(itemView, 0L, new b(aVar), 1, null);
        return aVar;
    }
}
