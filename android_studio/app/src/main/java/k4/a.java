package k4;

import android.util.SparseArray;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.im.freechat.ui.chat.history.HistoryTab;
import com.im.freechat.ui.chat.history.HistoryTabFragment;
import io.sentry.protocol.i;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatHistoryPageAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\r¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0004\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0002¨\u0006\u0011"}, d2 = {"Lk4/a;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "", "getItemCount", "position", "Landroidx/fragment/app/Fragment;", "createFragment", "Lcom/im/freechat/ui/chat/history/HistoryTab;", "Lcom/im/freechat/ui/chat/history/HistoryTabFragment;", "d", "", "getPageTitle", i.b.f83726i, "", "excludedTabs", "<init>", "(Landroidx/fragment/app/Fragment;Ljava/util/List;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends FragmentStateAdapter {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final Fragment f84731a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final List<HistoryTab> f84732b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<HistoryTabFragment> f84733c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@g Fragment fragment, @g List<? extends HistoryTab> excludedTabs) {
        super(fragment);
        List list;
        List<HistoryTab> minus;
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(excludedTabs, "excludedTabs");
        this.f84731a = fragment;
        list = ArraysKt___ArraysKt.toList(HistoryTab.values());
        minus = CollectionsKt___CollectionsKt.minus((Iterable) list, (Iterable) excludedTabs);
        this.f84732b = minus;
        this.f84733c = new SparseArray<>();
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    @g
    public Fragment createFragment(int i4) {
        HistoryTabFragment a10 = HistoryTabFragment.f42850g.a(this.f84732b.get(i4));
        this.f84733c.append(i4, a10);
        return a10;
    }

    @h
    public final HistoryTabFragment d(@g HistoryTab position) {
        Intrinsics.checkNotNullParameter(position, "position");
        return this.f84733c.get(this.f84732b.indexOf(position));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f84732b.size();
    }

    @g
    public final CharSequence getPageTitle(int i4) {
        String string = this.f84731a.getResources().getString(this.f84732b.get(i4).getResId());
        Intrinsics.checkNotNullExpressionValue(string, "fragment.resources.getSt…tualTabs[position].resId)");
        return string;
    }

    public /* synthetic */ a(Fragment fragment, List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragment, (i4 & 2) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }
}
