package androidx.window.layout;

import androidx.window.sidecar.SidecarDisplayFeature;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: SidecarAdapter.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Landroidx/window/sidecar/SidecarDisplayFeature;", "invoke", "(Landroidx/window/sidecar/SidecarDisplayFeature;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
final class SidecarAdapter$translate$checkedFeature$1 extends Lambda implements Function1<SidecarDisplayFeature, Boolean> {
    public static final SidecarAdapter$translate$checkedFeature$1 INSTANCE = new SidecarAdapter$translate$checkedFeature$1();

    SidecarAdapter$translate$checkedFeature$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g SidecarDisplayFeature require) {
        Intrinsics.checkNotNullParameter(require, "$this$require");
        boolean z9 = true;
        if (require.getType() != 1 && require.getType() != 2) {
            z9 = false;
        }
        return Boolean.valueOf(z9);
    }
}
