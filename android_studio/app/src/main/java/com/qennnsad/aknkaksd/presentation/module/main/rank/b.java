package com.qennnsad.aknkaksd.presentation.module.main.rank;

import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.qennnsad.aknkaksd.presentation.module.rank.container.RankListFragment;
import io.sentry.protocol.i;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MainRankAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0011\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/rank/b;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "", "getItemCount", "position", "Landroidx/fragment/app/Fragment;", "createFragment", "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;", "a", "Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;", "d", "()Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;", i.b.f83726i, "b", "I", "e", "()I", com.qennnsad.aknkaksd.data.repository.f.f47745b, "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends FragmentStateAdapter {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final MainRankFragment f51942a;

    /* renamed from: b  reason: collision with root package name */
    private final int f51943b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@m8.g MainRankFragment fragment, int i4) {
        super(fragment);
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.f51942a = fragment;
        this.f51943b = i4;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    @m8.g
    public Fragment createFragment(int i4) {
        return RankListFragment.f52239l.a(i4);
    }

    @m8.g
    public final MainRankFragment d() {
        return this.f51942a;
    }

    public final int e() {
        return this.f51943b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f51943b;
    }
}
