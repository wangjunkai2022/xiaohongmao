package com.qennnsad.aknkaksd.presentation.module.rank.container;

import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.qennnsad.aknkaksd.presentation.module.rank.RankFragment;
import io.sentry.protocol.i;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RankFragmentsAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u000e\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\b\u001a\u0004\b\r\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/rank/container/b;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "", "getItemCount", "position", "Landroidx/fragment/app/Fragment;", "createFragment", "a", "I", "d", "()I", "rootPosition", "b", "e", com.qennnsad.aknkaksd.data.repository.f.f47745b, "Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;", i.b.f83726i, "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;II)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends FragmentStateAdapter {

    /* renamed from: a  reason: collision with root package name */
    private final int f52259a;

    /* renamed from: b  reason: collision with root package name */
    private final int f52260b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@m8.g RankListFragment fragment, int i4, int i10) {
        super(fragment);
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.f52259a = i4;
        this.f52260b = i10;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    @m8.g
    public Fragment createFragment(int i4) {
        return RankFragment.f52175o.a(this.f52259a, i4);
    }

    public final int d() {
        return this.f52259a;
    }

    public final int e() {
        return this.f52260b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f52260b;
    }
}
