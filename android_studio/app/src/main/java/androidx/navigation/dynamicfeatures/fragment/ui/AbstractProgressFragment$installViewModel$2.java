package androidx.navigation.dynamicfeatures.fragment.ui;

import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: AbstractProgressFragment.kt */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
final class AbstractProgressFragment$installViewModel$2 extends Lambda implements Function0<ViewModelProvider.Factory> {
    public static final AbstractProgressFragment$installViewModel$2 INSTANCE = new AbstractProgressFragment$installViewModel$2();

    AbstractProgressFragment$installViewModel$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final ViewModelProvider.Factory invoke() {
        return InstallViewModel.Companion.getFACTORY();
    }
}
