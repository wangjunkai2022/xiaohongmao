package com.qennnsad.aknkaksd.presentation.module.main.index;

import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import io.sentry.protocol.i;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnchorTypeDataAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0014\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\b\u0010\u000b\u001a\u00020\u0002H\u0016R\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R(\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/index/b;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "", "position", "Landroidx/fragment/app/Fragment;", "createFragment", "", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;", "anchors", "", "submitList", "getItemCount", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;", "a", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;", "e", "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;", i.b.f83726i, "b", "Ljava/util/List;", "d", "()Ljava/util/List;", "f", "(Ljava/util/List;)V", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends FragmentStateAdapter {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final IndexFragment f51681a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private List<? extends a> f51682b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@m8.g IndexFragment fragment) {
        super(fragment);
        List<? extends a> emptyList;
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.f51681a = fragment;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f51682b = emptyList;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    @m8.g
    public Fragment createFragment(int i4) {
        return this.f51682b.get(i4).a();
    }

    @m8.g
    public final List<a> d() {
        return this.f51682b;
    }

    @m8.g
    public final IndexFragment e() {
        return this.f51681a;
    }

    public final void f(@m8.g List<? extends a> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f51682b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f51682b.size();
    }

    public final void submitList(@m8.g List<? extends a> anchors) {
        Intrinsics.checkNotNullParameter(anchors, "anchors");
        this.f51682b = anchors;
        notifyDataSetChanged();
    }
}
