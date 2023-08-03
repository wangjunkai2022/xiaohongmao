package androidx.navigation;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NavOptionsBuilder.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Landroidx/navigation/PopUpToBuilder;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NavOptionsBuilder$popUpTo$1 extends Lambda implements Function1<PopUpToBuilder, Unit> {
    public static final NavOptionsBuilder$popUpTo$1 INSTANCE = new NavOptionsBuilder$popUpTo$1();

    NavOptionsBuilder$popUpTo$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(PopUpToBuilder popUpToBuilder) {
        invoke2(popUpToBuilder);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@g PopUpToBuilder popUpToBuilder) {
        Intrinsics.checkNotNullParameter(popUpToBuilder, "$this$null");
    }
}
