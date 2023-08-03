package androidx.navigation.dynamicfeatures;

import androidx.navigation.Navigator;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.h;

/* compiled from: DynamicExtras.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001f\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0005R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/navigation/dynamicfeatures/DynamicExtras;", "Landroidx/navigation/Navigator$Extras;", "installMonitor", "Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;", "destinationExtras", "(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/Navigator$Extras;)V", "getDestinationExtras", "()Landroidx/navigation/Navigator$Extras;", "getInstallMonitor", "()Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;", "navigation-dynamic-features-runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DynamicExtras implements Navigator.Extras {
    @h
    private final Navigator.Extras destinationExtras;
    @h
    private final DynamicInstallMonitor installMonitor;

    @JvmOverloads
    public DynamicExtras() {
        this(null, null, 3, null);
    }

    @JvmOverloads
    public DynamicExtras(@h DynamicInstallMonitor dynamicInstallMonitor) {
        this(dynamicInstallMonitor, null, 2, null);
    }

    @JvmOverloads
    public DynamicExtras(@h DynamicInstallMonitor dynamicInstallMonitor, @h Navigator.Extras extras) {
        this.installMonitor = dynamicInstallMonitor;
        this.destinationExtras = extras;
    }

    @h
    public final Navigator.Extras getDestinationExtras() {
        return this.destinationExtras;
    }

    @h
    public final DynamicInstallMonitor getInstallMonitor() {
        return this.installMonitor;
    }

    public /* synthetic */ DynamicExtras(DynamicInstallMonitor dynamicInstallMonitor, Navigator.Extras extras, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : dynamicInstallMonitor, (i4 & 2) != 0 ? null : extras);
    }
}
