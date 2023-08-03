package androidx.navigation;

import androidx.annotation.RestrictTo;
import androidx.lifecycle.ViewModelStore;
import kotlin.Metadata;
import m8.g;

/* compiled from: NavViewModelStoreProvider.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Landroidx/navigation/NavViewModelStoreProvider;", "", "getViewModelStore", "Landroidx/lifecycle/ViewModelStore;", "backStackEntryId", "", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public interface NavViewModelStoreProvider {
    @g
    ViewModelStore getViewModelStore(@g String str);
}
