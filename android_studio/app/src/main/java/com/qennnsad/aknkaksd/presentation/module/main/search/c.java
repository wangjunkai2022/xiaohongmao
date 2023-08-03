package com.qennnsad.aknkaksd.presentation.module.main.search;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.paging.PagingDataAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.AnchorSummary;
import com.qennnsad.aknkaksd.util.s1;
import e5.c3;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: SearchUserAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000eBC\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000b0\u0013\u0012\u001e\u0010 \u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u001b\u0012\u0004\u0012\u00020\u000b0\u001a¢\u0006\u0004\b!\u0010\"J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R#\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u000b0\u00138\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R/\u0010 \u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u001b\u0012\u0004\u0012\u00020\u000b0\u001a8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/search/c;", "Landroidx/paging/PagingDataAdapter;", "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;", "Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", ContextChain.TAG_INFRA, "holder", "position", "", "h", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "g", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lkotlin/Function1;", "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;", "b", "Lkotlin/jvm/functions/Function1;", "e", "()Lkotlin/jvm/functions/Function1;", "onClick", "Lkotlin/Function2;", "Lkotlin/Function0;", "c", "Lkotlin/jvm/functions/Function2;", "f", "()Lkotlin/jvm/functions/Function2;", "onFollowClick", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends PagingDataAdapter<com.qennnsad.aknkaksd.presentation.module.main.search.b, a> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f52011a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function1<AnchorSummary, Unit> f52012b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Function2<com.qennnsad.aknkaksd.presentation.module.main.search.b, Function0<Unit>, Unit> f52013c;

    /* compiled from: SearchUserAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0007R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/search/c$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/presentation/module/main/search/b;", "data", "", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Le5/c3;", "binding", "Le5/c3;", "c", "()Le5/c3;", "<init>", "(Le5/c3;Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final c3 f52014a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final com.qennnsad.aknkaksd.data.repository.m f52015b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g c3 binding, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
            this.f52014a = binding;
            this.f52015b = sourceFactory;
        }

        public final void b(@m8.g com.qennnsad.aknkaksd.presentation.module.main.search.b data) {
            Intrinsics.checkNotNullParameter(data, "data");
            c3 c3Var = this.f52014a;
            AnchorSummary e4 = data.e();
            ImageView imageView = c3Var.f62298b;
            com.qennnsad.aknkaksd.data.repository.m mVar = this.f52015b;
            String avatar = e4.getAvatar();
            Intrinsics.checkNotNullExpressionValue(avatar, "avatar");
            com.qennnsad.aknkaksd.util.img.e.g(imageView, mVar.j(avatar), true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
            c3Var.f62303g.setText(e4.getNickname());
            TextView textView = c3Var.f62302f;
            textView.setText("小红帽ID：" + e4.getId());
            ImageView ivSex = c3Var.f62300d;
            Intrinsics.checkNotNullExpressionValue(ivSex, "ivSex");
            s1.w(ivSex, Integer.valueOf(e4.getSex()));
            ImageView ivLevel = c3Var.f62299c;
            Intrinsics.checkNotNullExpressionValue(ivLevel, "ivLevel");
            s1.z(ivLevel, Integer.valueOf(e4.getEmceeLevel()), e4.isMystery());
            TextView textView2 = c3Var.f62301e;
            Intrinsics.checkNotNullExpressionValue(textView2, "");
            textView2.setVisibility(e4.isMystery() ^ true ? 0 : 8);
            textView2.setActivated(data.f());
            textView2.setText(data.f() ? "" : textView2.getContext().getString(R.string.star));
        }

        @m8.g
        public final c3 c() {
            return this.f52014a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchUserAdapter.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a f52017b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(a aVar) {
            super(0);
            this.f52017b = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            com.qennnsad.aknkaksd.presentation.module.main.search.b d4 = c.d(c.this, this.f52017b.getBindingAdapterPosition());
            if (d4 != null) {
                c.this.e().invoke(d4.e());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchUserAdapter.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: com.qennnsad.aknkaksd.presentation.module.main.search.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0425c extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a f52019b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SearchUserAdapter.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* renamed from: com.qennnsad.aknkaksd.presentation.module.main.search.c$c$a */
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ c f52020a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ a f52021b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(c cVar, a aVar) {
                super(0);
                this.f52020a = cVar;
                this.f52021b = aVar;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                com.qennnsad.aknkaksd.presentation.module.main.search.b d4 = c.d(this.f52020a, this.f52021b.getAbsoluteAdapterPosition());
                if (d4 != null) {
                    c cVar = this.f52020a;
                    a aVar = this.f52021b;
                    d4.g(!d4.f());
                    cVar.notifyItemChanged(aVar.getAbsoluteAdapterPosition());
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0425c(a aVar) {
            super(0);
            this.f52019b = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            com.qennnsad.aknkaksd.presentation.module.main.search.b d4 = c.d(c.this, this.f52019b.getBindingAdapterPosition());
            if (d4 != null) {
                c cVar = c.this;
                cVar.f().invoke(d4, new a(cVar, this.f52019b));
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public c(@m8.g com.qennnsad.aknkaksd.data.repository.m r8, @m8.g kotlin.jvm.functions.Function1<? super com.qennnsad.aknkaksd.data.bean.AnchorSummary, kotlin.Unit> r9, @m8.g kotlin.jvm.functions.Function2<? super com.qennnsad.aknkaksd.presentation.module.main.search.b, ? super kotlin.jvm.functions.Function0<kotlin.Unit>, kotlin.Unit> r10) {
        /*
            r7 = this;
            java.lang.String r0 = "sourceFactory"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "onClick"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "onFollowClick"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            com.qennnsad.aknkaksd.presentation.module.main.search.d$a r2 = com.qennnsad.aknkaksd.presentation.module.main.search.d.a()
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 0
            r1 = r7
            r1.<init>(r2, r3, r4, r5, r6)
            r7.f52011a = r8
            r7.f52012b = r9
            r7.f52013c = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.main.search.c.<init>(com.qennnsad.aknkaksd.data.repository.m, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function2):void");
    }

    public static final /* synthetic */ com.qennnsad.aknkaksd.presentation.module.main.search.b d(c cVar, int i4) {
        return cVar.getItem(i4);
    }

    @m8.g
    public final Function1<AnchorSummary, Unit> e() {
        return this.f52012b;
    }

    @m8.g
    public final Function2<com.qennnsad.aknkaksd.presentation.module.main.search.b, Function0<Unit>, Unit> f() {
        return this.f52013c;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m g() {
        return this.f52011a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: h */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        com.qennnsad.aknkaksd.presentation.module.main.search.b item = getItem(i4);
        if (item == null) {
            return;
        }
        holder.b(item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: i */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        c3 d4 = c3.d(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(\n               …      false\n            )");
        a aVar = new a(d4, this.f52011a);
        View itemView = aVar.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        s1.U(itemView, 0L, new b(aVar), 1, null);
        TextView textView = aVar.c().f62301e;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvFollowUser");
        s1.U(textView, 0L, new C0425c(aVar), 1, null);
        return aVar;
    }
}
