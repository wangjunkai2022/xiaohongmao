package com.qennnsad.aknkaksd.presentation.module.main.anchors.common;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import androidx.paging.PagingDataAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.AdInfoBean;
import com.qennnsad.aknkaksd.data.bean.ContentBean;
import com.qennnsad.aknkaksd.data.bean.UrlTarget;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.common.j;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.common.l;
import com.qennnsad.aknkaksd.util.s1;
import e5.e2;
import e5.q2;
import e5.r2;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;

/* compiled from: AnchorAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0003.\u0012\u0016Bu\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\u0006\u0010+\u001a\u00020*\u0012\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u000f0\u0019\u00128\u0010'\u001a4\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0015\u0012\u0013\u0018\u00010#¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u000f0\u001e¢\u0006\u0004\b,\u0010-J\u001f\u0010\u0005\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0004*\u00020\u0002*\u00020\u0003H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0016R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R \u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u000f0\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cRF\u0010'\u001a4\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0015\u0012\u0013\u0018\u00010#¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u000f0\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006/"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;", "Landroidx/paging/PagingDataAdapter;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", ExifInterface.GPS_DIRECTION_TRUE, "m", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "", "position", "getItemViewType", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "holder", "", "onBindViewHolder", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "", "c", "Z", "isSmallGrid", "Lkotlin/Function1;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;", "e", "Lkotlin/jvm/functions/Function1;", "onClick", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "url", "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", TypedValues.Attributes.S_TARGET, "f", "Lkotlin/jvm/functions/Function2;", "onBannerAdClick", "Lg5/a;", "localDataManager", "Lx4/a;", "analytics", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;ZLx4/a;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j extends PagingDataAdapter<l, RecyclerView.ViewHolder> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f51427a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f51428b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f51429c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final x4.a f51430d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Function1<l.b, Unit> f51431e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Function2<String, UrlTarget, Unit> f51432f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnchorAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$a;", "item", "", "b", "Le5/q2;", "binding", "Le5/q2;", "c", "()Le5/q2;", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;Le5/q2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final q2 f51433a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j f51434b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g j jVar, q2 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f51434b = jVar;
            this.f51433a = binding;
        }

        public final void b(@m8.g l.a item) {
            Intrinsics.checkNotNullParameter(item, "item");
            j jVar = this.f51434b;
            int adType = item.d().getAdType();
            if (adType == 1) {
                ImageView imageView = this.f51433a.f62958b;
                Intrinsics.checkNotNullExpressionValue(imageView, "binding.adImgView");
                imageView.setVisibility(0);
                LinearLayout linearLayout = this.f51433a.f62960d;
                Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.adTextLayout");
                linearLayout.setVisibility(8);
                ImageView imageView2 = this.f51433a.f62958b;
                com.qennnsad.aknkaksd.data.repository.m mVar = jVar.f51428b;
                String picPath = item.d().getPicPath();
                if (picPath == null) {
                    return;
                }
                com.qennnsad.aknkaksd.util.img.e.h(imageView2, mVar.j(picPath), false, R.drawable.placeholder_ad, R.drawable.placeholder_ad, 2, null);
            } else if (adType != 2) {
                Timber.f93860a.x("Unexpected ad type", new Object[0]);
            } else {
                ImageView imageView3 = this.f51433a.f62958b;
                Intrinsics.checkNotNullExpressionValue(imageView3, "binding.adImgView");
                imageView3.setVisibility(8);
                LinearLayout linearLayout2 = this.f51433a.f62960d;
                Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.adTextLayout");
                linearLayout2.setVisibility(0);
                try {
                    if (item.d().getContent() == null) {
                        return;
                    }
                    this.f51433a.f62959c.setText(item.d().getContent().get(0).getContent());
                    this.f51433a.f62961e.setText(item.d().getContent().get(1).getContent());
                    TextView textView = this.f51433a.f62959c;
                    textView.setTextColor(Color.parseColor('#' + item.d().getContent().get(0).getTextColor()));
                    TextView textView2 = this.f51433a.f62961e;
                    textView2.setTextColor(Color.parseColor('#' + item.d().getContent().get(1).getTextColor()));
                } catch (Exception e4) {
                    Timber.f93860a.y(e4);
                }
            }
        }

        @m8.g
        public final q2 c() {
            return this.f51433a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnchorAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$b;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;", "item", "", "b", "Le5/r2;", "binding", "Le5/r2;", "c", "()Le5/r2;", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;Le5/r2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class b extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final r2 f51435a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j f51436b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@m8.g j jVar, r2 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f51436b = jVar;
            this.f51435a = binding;
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x00c2  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00c4  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00df  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x010e  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0125  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x013f  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0149  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void b(@m8.g com.qennnsad.aknkaksd.presentation.module.main.anchors.common.l.b r15) {
            /*
                Method dump skipped, instructions count: 363
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.main.anchors.common.j.b.b(com.qennnsad.aknkaksd.presentation.module.main.anchors.common.l$b):void");
        }

        @m8.g
        public final r2 c() {
            return this.f51435a;
        }
    }

    /* compiled from: AnchorAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j$c;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$c;", "item", "", "b", "Le5/e2;", "binding", "Le5/e2;", "c", "()Le5/e2;", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/j;Le5/e2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    private final class c extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final e2 f51437a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j f51438b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@m8.g j jVar, e2 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f51438b = jVar;
            this.f51437a = binding;
        }

        public final void b(@m8.g l.c item) {
            Intrinsics.checkNotNullParameter(item, "item");
            this.f51437a.getRoot().c(item.d(), this.f51438b.f51428b, this.f51438b.f51430d, this.f51438b.f51432f);
        }

        @m8.g
        public final e2 c() {
            return this.f51437a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public j(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, boolean z9, @m8.g x4.a analytics, @m8.g Function1<? super l.b, Unit> onClick, @m8.g Function2<? super String, ? super UrlTarget, Unit> onBannerAdClick) {
        super(new l.d(), null, null, 6, null);
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(onBannerAdClick, "onBannerAdClick");
        this.f51427a = localDataManager;
        this.f51428b = sourceFactory;
        this.f51429c = z9;
        this.f51430d = analytics;
        this.f51431e = onClick;
        this.f51432f = onBannerAdClick;
    }

    private final <T extends l> T m(RecyclerView.ViewHolder viewHolder) {
        l item = getItem(viewHolder.getBindingAdapterPosition());
        if (item instanceof l) {
            return (T) item;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(b this_apply, j this$0, View view) {
        l item;
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this_apply.getBindingAdapterPosition() == -1 || (item = this$0.getItem(this_apply.getBindingAdapterPosition())) == null) {
            return;
        }
        this$0.f51431e.invoke((l.b) item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(j this$0, a this_apply, View view) {
        AdInfoBean d4;
        List<ContentBean> content;
        ContentBean contentBean;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        l.a aVar = (l.a) this$0.m(this_apply);
        if (aVar == null || (d4 = aVar.d()) == null || (content = d4.getContent()) == null || (contentBean = content.get(0)) == null) {
            return;
        }
        Function2<String, UrlTarget, Unit> function2 = this$0.f51432f;
        String targetUrl = contentBean.getTargetUrl();
        UrlTarget target = contentBean.getTarget();
        if (target == null) {
            target = UrlTarget.InApp;
        }
        function2.invoke(targetUrl, target);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(j this$0, a this_apply, View view) {
        AdInfoBean d4;
        List<ContentBean> content;
        ContentBean contentBean;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        l.a aVar = (l.a) this$0.m(this_apply);
        if (aVar == null || (d4 = aVar.d()) == null || (content = d4.getContent()) == null || (contentBean = content.get(1)) == null) {
            return;
        }
        this$0.f51432f.invoke(contentBean.getTargetUrl(), contentBean.getTarget());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(j this$0, a this_apply, View view) {
        AdInfoBean d4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        l.a aVar = (l.a) this$0.m(this_apply);
        if (aVar == null || (d4 = aVar.d()) == null) {
            return;
        }
        Function2<String, UrlTarget, Unit> function2 = this$0.f51432f;
        String targetUrl = d4.getTargetUrl();
        if (targetUrl == null) {
            return;
        }
        function2.invoke(targetUrl, d4.getTarget());
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
        if (item instanceof l.a) {
            return 12;
        }
        throw new IllegalStateException("Illegal type".toString());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@m8.g RecyclerView.ViewHolder holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof b) {
            l item = getItem(i4);
            Intrinsics.checkNotNull(item, "null cannot be cast to non-null type com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AnchorItem.AnchorContentItem");
            ((b) holder).b((l.b) item);
        } else if (holder instanceof a) {
            l item2 = getItem(i4);
            Intrinsics.checkNotNull(item2, "null cannot be cast to non-null type com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AnchorItem.AdInfoItem");
            ((a) holder).b((l.a) item2);
        } else if (!(holder instanceof c)) {
            throw new IllegalStateException("Illegal holder".toString());
        } else {
            l item3 = getItem(i4);
            Intrinsics.checkNotNull(item3, "null cannot be cast to non-null type com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AnchorItem.BannerItem");
            ((c) holder).b((l.c) item3);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    public RecyclerView.ViewHolder onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        switch (i4) {
            case 10:
                r2 d4 = r2.d(s1.i(parent), parent, false);
                Intrinsics.checkNotNullExpressionValue(d4, "inflate(parent.layoutInflator, parent, false)");
                final b bVar = new b(this, d4);
                bVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.main.anchors.common.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        j.n(j.b.this, this, view);
                    }
                });
                return bVar;
            case 11:
                e2 d10 = e2.d(s1.i(parent), parent, false);
                Intrinsics.checkNotNullExpressionValue(d10, "inflate(\n               …lse\n                    )");
                return new c(this, d10);
            case 12:
                q2 d11 = q2.d(s1.i(parent), parent, false);
                Intrinsics.checkNotNullExpressionValue(d11, "inflate(parent.layoutInflator, parent, false)");
                final a aVar = new a(this, d11);
                aVar.c().f62959c.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.main.anchors.common.g
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        j.o(j.this, aVar, view);
                    }
                });
                aVar.c().f62961e.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.main.anchors.common.i
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        j.p(j.this, aVar, view);
                    }
                });
                aVar.c().f62958b.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.main.anchors.common.h
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        j.q(j.this, aVar, view);
                    }
                });
                return aVar;
            default:
                throw new IllegalStateException("Illegal viewType".toString());
        }
    }
}
