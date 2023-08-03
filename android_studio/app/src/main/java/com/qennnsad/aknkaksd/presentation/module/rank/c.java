package com.qennnsad.aknkaksd.presentation.module.rank;

import androidx.recyclerview.widget.DiffUtil;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RankDataAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0007\n\u0002\b\u0005*\u0001\u0000\"\u0014\u0010\u0003\u001a\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002¨\u0006\u0004"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/rank/c$a", "a", "Lcom/qennnsad/aknkaksd/presentation/module/rank/c$a;", "diffCallback", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final a f52238a = new a();

    /* compiled from: RankDataAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"com/qennnsad/aknkaksd/presentation/module/rank/c$a", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "oldItem", "newItem", "", "b", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends DiffUtil.ItemCallback<RankItem> {
        a() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: a */
        public boolean areContentsTheSame(@m8.g RankItem oldItem, @m8.g RankItem newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b */
        public boolean areItemsTheSame(@m8.g RankItem oldItem, @m8.g RankItem newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getUserId(), newItem.getUserId());
        }
    }
}
