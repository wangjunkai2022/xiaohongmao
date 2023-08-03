package com.qennnsad.aknkaksd.presentation.module.main.anchors.followed;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.paging.PagingDataAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.qennnsad.aknkaksd.data.bean.UrlTarget;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.common.l;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.b;
import com.qennnsad.aknkaksd.util.s1;
import e5.e2;
import e5.n2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FollowedAnchorAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002'\u000fBk\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010$\u001a\u00020#\u0012\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00070\u0012\u00126\u0010 \u001a2\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u00070\u0017¢\u0006\u0004\b%\u0010&J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0005H\u0016R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R \u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00070\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015RD\u0010 \u001a2\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001b\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b\u0019\u0012\b\b\u001a\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u00070\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006("}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;", "Landroidx/paging/PagingDataAdapter;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "", "position", "", "onBindViewHolder", "getItemViewType", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lkotlin/Function1;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;", "d", "Lkotlin/jvm/functions/Function1;", "onClick", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "url", "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", TypedValues.Attributes.S_TARGET, "e", "Lkotlin/jvm/functions/Function2;", "onUrlClick", "Lg5/a;", "localDataManager", "Lx4/a;", "analytics", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends PagingDataAdapter<l, RecyclerView.ViewHolder> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f51489a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final m f51490b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final x4.a f51491c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Function1<l.b, Unit> f51492d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Function2<String, UrlTarget, Unit> f51493e;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FollowedAnchorAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;", "item", "", "b", "Le5/n2;", "binding", "Le5/n2;", "c", "()Le5/n2;", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;Le5/n2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final n2 f51494a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f51495b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g b bVar, n2 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f51495b = bVar;
            this.f51494a = binding;
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x00cf  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00d1  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00eb  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00ed  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00f8  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0139  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void b(@m8.g com.qennnsad.aknkaksd.presentation.module.main.anchors.common.l.b r15) {
            /*
                Method dump skipped, instructions count: 350
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.b.a.b(com.qennnsad.aknkaksd.presentation.module.main.anchors.common.l$b):void");
        }

        @m8.g
        public final n2 c() {
            return this.f51494a;
        }
    }

    /* compiled from: FollowedAnchorAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b$b;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$c;", "item", "", "b", "Le5/e2;", "binding", "Le5/e2;", "c", "()Le5/e2;", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/b;Le5/e2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private final class C0418b extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final e2 f51496a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f51497b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0418b(@m8.g b bVar, e2 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f51497b = bVar;
            this.f51496a = binding;
        }

        public final void b(@m8.g l.c item) {
            Intrinsics.checkNotNullParameter(item, "item");
            this.f51496a.getRoot().c(item.d(), this.f51497b.f51490b, this.f51497b.f51491c, this.f51497b.f51493e);
        }

        @m8.g
        public final e2 c() {
            return this.f51496a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(@m8.g g5.a localDataManager, @m8.g m sourceFactory, @m8.g x4.a analytics, @m8.g Function1<? super l.b, Unit> onClick, @m8.g Function2<? super String, ? super UrlTarget, Unit> onUrlClick) {
        super(new l.d(), null, null, 6, null);
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(onUrlClick, "onUrlClick");
        this.f51489a = localDataManager;
        this.f51490b = sourceFactory;
        this.f51491c = analytics;
        this.f51492d = onClick;
        this.f51493e = onUrlClick;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(a this_apply, b this$0, View view) {
        l item;
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this_apply.getBindingAdapterPosition() < 0 || (item = this$0.getItem(this_apply.getBindingAdapterPosition())) == null) {
            return;
        }
        this$0.f51492d.invoke((l.b) item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        l item = getItem(i4);
        if (item instanceof l.b) {
            return 10;
        }
        if (item instanceof l.c) {
            return 11;
        }
        throw new IllegalStateException("Illegal item".toString());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@m8.g RecyclerView.ViewHolder holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof a) {
            l item = getItem(i4);
            Intrinsics.checkNotNull(item, "null cannot be cast to non-null type com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AnchorItem.AnchorContentItem");
            ((a) holder).b((l.b) item);
        } else if (holder instanceof C0418b) {
            l item2 = getItem(i4);
            Intrinsics.checkNotNull(item2, "null cannot be cast to non-null type com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AnchorItem.BannerItem");
            ((C0418b) holder).b((l.c) item2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    public RecyclerView.ViewHolder onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i4 != 10) {
            if (i4 == 11) {
                e2 d4 = e2.d(s1.i(parent), parent, false);
                Intrinsics.checkNotNullExpressionValue(d4, "inflate(\n               …lse\n                    )");
                return new C0418b(this, d4);
            }
            throw new IllegalStateException("Illegal type".toString());
        }
        n2 d10 = n2.d(s1.i(parent), parent, false);
        Intrinsics.checkNotNullExpressionValue(d10, "inflate(parent.layoutInflator, parent, false)");
        final a aVar = new a(this, d10);
        aVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.i(b.a.this, this, view);
            }
        });
        return aVar;
    }
}
