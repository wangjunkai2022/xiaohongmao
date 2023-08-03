package com.qennnsad.aknkaksd.presentation.module.rank;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.paging.PagingDataAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.qennnsad.aknkaksd.data.bean.RankItemKt;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.util.s1;
import e5.x2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: RankDataAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u000eB?\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0006\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u0014\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u001c\u0010\b\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u001c\u0010\f\u001a\u00020\u000b2\n\u0010\t\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006H\u0016R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R \u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0016¨\u0006\u001c"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/b;", "Landroidx/paging/PagingDataAdapter;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "j", "holder", "position", "", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "b", "I", "topCount", "Lkotlin/Function1;", "c", "Lkotlin/jvm/functions/Function1;", "onFollowClick", "d", "onItemClick", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends PagingDataAdapter<RankItem, a> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final m f52228a;

    /* renamed from: b  reason: collision with root package name */
    private final int f52229b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Function1<RankItem, Unit> f52230c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Function1<RankItem, Unit> f52231d;

    /* compiled from: RankDataAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/b$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "item", "", "b", "Le5/x2;", "binding", "Le5/x2;", "c", "()Le5/x2;", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/rank/b;Le5/x2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final x2 f52232a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f52233b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g b bVar, x2 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f52233b = bVar;
            this.f52232a = binding;
        }

        public final void b(@m8.g RankItem item) {
            Intrinsics.checkNotNullParameter(item, "item");
            x2 x2Var = this.f52232a;
            b bVar = this.f52233b;
            TextView tvRank = x2Var.f63324m;
            Intrinsics.checkNotNullExpressionValue(tvRank, "tvRank");
            Integer rankPosition = item.getRankPosition();
            s1.D(tvRank, rankPosition != null ? rankPosition.intValue() : 0);
            ImageView ivTopBg = x2Var.f63318g;
            Intrinsics.checkNotNullExpressionValue(ivTopBg, "ivTopBg");
            Integer rankPosition2 = item.getRankPosition();
            s1.F(ivTopBg, rankPosition2 != null ? rankPosition2.intValue() : 0);
            com.qennnsad.aknkaksd.util.img.e.g(x2Var.f63314c, bVar.f52228a.j(item.getAvatar()), true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
            ImageView ivSex = x2Var.f63317f;
            Intrinsics.checkNotNullExpressionValue(ivSex, "ivSex");
            s1.w(ivSex, Integer.valueOf(item.getSex()));
            x2Var.f63323l.setText(item.getNickname());
            ImageView ivLevel = x2Var.f63315d;
            Intrinsics.checkNotNullExpressionValue(ivLevel, "ivLevel");
            s1.A(ivLevel, item.getLevelId(), item.isMystery());
            ImageView ivPeerage = x2Var.f63316e;
            Intrinsics.checkNotNullExpressionValue(ivPeerage, "ivPeerage");
            s1.C(ivPeerage, item.getPeerageId());
            TextView textView = x2Var.f63321j;
            Intrinsics.checkNotNullExpressionValue(textView, "");
            textView.setVisibility(RankItemKt.isPkRank(item) ^ true ? 0 : 8);
            s1.o(textView, Integer.valueOf(RankItemKt.isGameRank(item) ? R.drawable.ic_game_chips : R.drawable.coin_room_top_2), true, false, false, false, 28, null);
            textView.setText(textView.getContext().getString(RankItemKt.isGameRank(item) ? R.string.game_chips_total : R.string.coins_total, item.getCoin()));
            ConstraintLayout constraintLayout = x2Var.f63320i.f62613b;
            Intrinsics.checkNotNullExpressionValue(constraintLayout, "pkPanel.clPk");
            constraintLayout.setVisibility(RankItemKt.isPkRank(item) ? 0 : 8);
            x2Var.f63320i.f62617f.setText(String.valueOf(item.getWins()));
            x2Var.f63320i.f62616e.setText(String.valueOf(item.getDefeats()));
            TextView textView2 = x2Var.f63322k;
            Intrinsics.checkNotNullExpressionValue(textView2, "");
            textView2.setVisibility(RankItemKt.isGameRank(item) ? 0 : 8);
            textView2.setText(item.getGame());
            TextView textView3 = x2Var.f63313b;
            if (RankItemKt.isGameRank(item)) {
                Intrinsics.checkNotNullExpressionValue(textView3, "");
                textView3.setVisibility(0);
                textView3.setActivated(false);
                textView3.setText(textView3.getContext().getString(R.string.enter_game));
            } else {
                Intrinsics.checkNotNullExpressionValue(textView3, "");
                textView3.setVisibility(item.isMystery() ^ true ? 0 : 8);
                Boolean isFollowed = item.isFollowed();
                Boolean bool = Boolean.TRUE;
                textView3.setActivated(Intrinsics.areEqual(isFollowed, bool));
                textView3.setText(Intrinsics.areEqual(item.isFollowed(), bool) ? "" : textView3.getContext().getString(R.string.star));
            }
            ConstraintLayout constraintLayout2 = this.f52232a.f63319h;
            Intrinsics.checkNotNullExpressionValue(constraintLayout2, "binding.main");
            Integer rankPosition3 = item.getRankPosition();
            constraintLayout2.setVisibility((rankPosition3 != null ? rankPosition3.intValue() : 0) > this.f52233b.f52229b ? 0 : 8);
        }

        @m8.g
        public final x2 c() {
            return this.f52232a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankDataAdapter.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: com.qennnsad.aknkaksd.presentation.module.rank.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0427b extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a f52235b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0427b(a aVar) {
            super(0);
            this.f52235b = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Function1 function1 = b.this.f52230c;
            RankItem d4 = b.d(b.this, this.f52235b.getBindingAdapterPosition());
            if (d4 == null) {
                return;
            }
            function1.invoke(d4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RankDataAdapter.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a f52237b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(a aVar) {
            super(0);
            this.f52237b = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Function1 function1 = b.this.f52231d;
            RankItem d4 = b.d(b.this, this.f52237b.getBindingAdapterPosition());
            if (d4 == null) {
                return;
            }
            function1.invoke(d4);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public b(@m8.g com.qennnsad.aknkaksd.data.repository.m r8, int r9, @m8.g kotlin.jvm.functions.Function1<? super com.qennnsad.aknkaksd.data.bean.RankItem, kotlin.Unit> r10, @m8.g kotlin.jvm.functions.Function1<? super com.qennnsad.aknkaksd.data.bean.RankItem, kotlin.Unit> r11) {
        /*
            r7 = this;
            java.lang.String r0 = "sourceFactory"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "onFollowClick"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "onItemClick"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            com.qennnsad.aknkaksd.presentation.module.rank.c$a r2 = com.qennnsad.aknkaksd.presentation.module.rank.c.a()
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 0
            r1 = r7
            r1.<init>(r2, r3, r4, r5, r6)
            r7.f52228a = r8
            r7.f52229b = r9
            r7.f52230c = r10
            r7.f52231d = r11
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.rank.b.<init>(com.qennnsad.aknkaksd.data.repository.m, int, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1):void");
    }

    public static final /* synthetic */ RankItem d(b bVar, int i4) {
        return bVar.getItem(i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: i */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        RankItem item = getItem(i4);
        if (item == null) {
            return;
        }
        holder.b(item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: j */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        x2 d4 = x2.d(s1.i(parent), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(parent.layoutInflator, parent, false)");
        a aVar = new a(this, d4);
        TextView textView = aVar.c().f63313b;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.btnFollow");
        s1.U(textView, 0L, new C0427b(aVar), 1, null);
        FrameLayout root = aVar.c().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        s1.U(root, 0L, new c(aVar), 1, null);
        return aVar;
    }
}
