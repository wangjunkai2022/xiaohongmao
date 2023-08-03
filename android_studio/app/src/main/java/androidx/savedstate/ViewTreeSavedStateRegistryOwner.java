package androidx.savedstate;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;
import m8.h;

/* compiled from: ViewTreeSavedStateRegistryOwner.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u0013\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007¢\u0006\u0002\b\u0003\u001a\u001b\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0002\b\u0007¨\u0006\b"}, d2 = {"findViewTreeSavedStateRegistryOwner", "Landroidx/savedstate/SavedStateRegistryOwner;", "Landroid/view/View;", "get", "setViewTreeSavedStateRegistryOwner", "", "owner", "set", "savedstate_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
@JvmName(name = "ViewTreeSavedStateRegistryOwner")
/* loaded from: classes.dex */
public final class ViewTreeSavedStateRegistryOwner {
    @h
    @JvmName(name = "get")
    public static final SavedStateRegistryOwner get(@g View view) {
        Sequence generateSequence;
        Sequence mapNotNull;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(view, "<this>");
        generateSequence = SequencesKt__SequencesKt.generateSequence(view, ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$1.INSTANCE);
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(generateSequence, ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$2.INSTANCE);
        firstOrNull = SequencesKt___SequencesKt.firstOrNull(mapNotNull);
        return (SavedStateRegistryOwner) firstOrNull;
    }

    @JvmName(name = "set")
    public static final void set(@g View view, @h SavedStateRegistryOwner savedStateRegistryOwner) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setTag(R.id.view_tree_saved_state_registry_owner, savedStateRegistryOwner);
    }
}
