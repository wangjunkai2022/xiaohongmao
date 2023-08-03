package androidx.navigation;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NavGraph.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/navigation/NavDestination;", "it", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NavGraph$Companion$findStartDestination$1 extends Lambda implements Function1<NavDestination, NavDestination> {
    public static final NavGraph$Companion$findStartDestination$1 INSTANCE = new NavGraph$Companion$findStartDestination$1();

    NavGraph$Companion$findStartDestination$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final NavDestination invoke(@g NavDestination it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof NavGraph) {
            NavGraph navGraph = (NavGraph) it;
            return navGraph.findNode(navGraph.getStartDestinationId());
        }
        return null;
    }
}
