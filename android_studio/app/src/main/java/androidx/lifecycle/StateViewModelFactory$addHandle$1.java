package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: StateViewModelFactory.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\b\b\u0000\u0010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/lifecycle/ViewModel;", ExifInterface.GPS_DIRECTION_TRUE, "Ly8/a;", "invoke", "()Ly8/a;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class StateViewModelFactory$addHandle$1 extends Lambda implements Function0<y8.a> {
    final /* synthetic */ y8.a $definitionParameters;
    final /* synthetic */ SavedStateHandle $handle;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateViewModelFactory$addHandle$1(y8.a aVar, SavedStateHandle savedStateHandle) {
        super(0);
        this.$definitionParameters = aVar;
        this.$handle = savedStateHandle;
    }

    @Override // kotlin.jvm.functions.Function0
    @m8.g
    public final y8.a invoke() {
        return this.$definitionParameters.a(this.$handle);
    }
}
