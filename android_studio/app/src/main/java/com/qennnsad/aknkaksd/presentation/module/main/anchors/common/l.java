package com.qennnsad.aknkaksd.presentation.module.main.anchors.common;

import androidx.recyclerview.widget.DiffUtil;
import com.qennnsad.aknkaksd.data.bean.AdInfoBean;
import com.qennnsad.aknkaksd.data.bean.BannerAdBean;
import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnchorItem.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007J\b\u0010\u0003\u001a\u00020\u0002H&\u0082\u0001\u0003\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "", "", "getId", "a", "b", "c", "d", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$a;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$c;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface l {

    /* compiled from: AnchorItem.kt */
    @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u0004HÆ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$a;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "", "getId", "Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;", "a", "adInfoBean", "b", "toString", "", "hashCode", "", "other", "", "equals", "Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;", "d", "()Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a implements l {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final AdInfoBean f51442a;

        public a(@m8.g AdInfoBean adInfoBean) {
            Intrinsics.checkNotNullParameter(adInfoBean, "adInfoBean");
            this.f51442a = adInfoBean;
        }

        public static /* synthetic */ a c(a aVar, AdInfoBean adInfoBean, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                adInfoBean = aVar.f51442a;
            }
            return aVar.b(adInfoBean);
        }

        @m8.g
        public final AdInfoBean a() {
            return this.f51442a;
        }

        @m8.g
        public final a b(@m8.g AdInfoBean adInfoBean) {
            Intrinsics.checkNotNullParameter(adInfoBean, "adInfoBean");
            return new a(adInfoBean);
        }

        @m8.g
        public final AdInfoBean d() {
            return this.f51442a;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.areEqual(this.f51442a, ((a) obj).f51442a);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.common.l
        @m8.g
        public String getId() {
            return String.valueOf(this.f51442a.getId());
        }

        public int hashCode() {
            return this.f51442a.hashCode();
        }

        @m8.g
        public String toString() {
            return "AdInfoItem(adInfoBean=" + this.f51442a + ')';
        }
    }

    /* compiled from: AnchorItem.kt */
    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u0002H\u0016J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003R\u0017\u0010\u0007\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$b;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "", "kotlin.jvm.PlatformType", "getId", "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "a", "hotAnchorSummary", "b", "toString", "", "hashCode", "", "other", "", "equals", "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "d", "()Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b implements l {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final HotAnchorSummary f51443a;

        public b(@m8.g HotAnchorSummary hotAnchorSummary) {
            Intrinsics.checkNotNullParameter(hotAnchorSummary, "hotAnchorSummary");
            this.f51443a = hotAnchorSummary;
        }

        public static /* synthetic */ b c(b bVar, HotAnchorSummary hotAnchorSummary, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                hotAnchorSummary = bVar.f51443a;
            }
            return bVar.b(hotAnchorSummary);
        }

        @m8.g
        public final HotAnchorSummary a() {
            return this.f51443a;
        }

        @m8.g
        public final b b(@m8.g HotAnchorSummary hotAnchorSummary) {
            Intrinsics.checkNotNullParameter(hotAnchorSummary, "hotAnchorSummary");
            return new b(hotAnchorSummary);
        }

        @m8.g
        public final HotAnchorSummary d() {
            return this.f51443a;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Intrinsics.areEqual(this.f51443a, ((b) obj).f51443a);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.common.l
        public String getId() {
            return this.f51443a.getId();
        }

        public int hashCode() {
            return this.f51443a.hashCode();
        }

        @m8.g
        public String toString() {
            return "AnchorContentItem(hotAnchorSummary=" + this.f51443a + ')';
        }
    }

    /* compiled from: AnchorItem.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003J\u0019\u0010\b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003R\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$c;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "", "getId", "", "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;", "a", "banners", "b", "toString", "", "hashCode", "", "other", "", "equals", "Ljava/util/List;", "d", "()Ljava/util/List;", "<init>", "(Ljava/util/List;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c implements l {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final List<BannerAdBean> f51444a;

        public c(@m8.g List<BannerAdBean> banners) {
            Intrinsics.checkNotNullParameter(banners, "banners");
            this.f51444a = banners;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ c c(c cVar, List list, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                list = cVar.f51444a;
            }
            return cVar.b(list);
        }

        @m8.g
        public final List<BannerAdBean> a() {
            return this.f51444a;
        }

        @m8.g
        public final c b(@m8.g List<BannerAdBean> banners) {
            Intrinsics.checkNotNullParameter(banners, "banners");
            return new c(banners);
        }

        @m8.g
        public final List<BannerAdBean> d() {
            return this.f51444a;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && Intrinsics.areEqual(this.f51444a, ((c) obj).f51444a);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.common.l
        @m8.g
        public String getId() {
            return "-1";
        }

        public int hashCode() {
            return this.f51444a.hashCode();
        }

        @m8.g
        public String toString() {
            return "BannerItem(banners=" + this.f51444a + ')';
        }
    }

    /* compiled from: AnchorItem.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l$d;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "oldItem", "newItem", "", "b", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends DiffUtil.ItemCallback<l> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: a */
        public boolean areContentsTheSame(@m8.g l oldItem, @m8.g l newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b */
        public boolean areItemsTheSame(@m8.g l oldItem, @m8.g l newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getId(), newItem.getId());
        }
    }

    @m8.g
    String getId();
}
