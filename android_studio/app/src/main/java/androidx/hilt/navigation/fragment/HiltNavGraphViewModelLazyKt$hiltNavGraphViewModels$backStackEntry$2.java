package androidx.hilt.navigation.fragment;

import androidx.fragment.app.Fragment;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: HiltNavGraphViewModelLazy.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/navigation/NavBackStackEntry;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$backStackEntry$2 extends Lambda implements Function0<NavBackStackEntry> {
    final /* synthetic */ int $navGraphId;
    final /* synthetic */ Fragment $this_hiltNavGraphViewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$backStackEntry$2(Fragment fragment, int i4) {
        super(0);
        this.$this_hiltNavGraphViewModels = fragment;
        this.$navGraphId = i4;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final NavBackStackEntry invoke() {
        return FragmentKt.findNavController(this.$this_hiltNavGraphViewModels).getBackStackEntry(this.$navGraphId);
    }
}
