package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Sequences.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u0002H\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "", "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SequencesKt__SequencesKt$generateSequence$1 extends Lambda implements Function1<T, T> {
    final /* synthetic */ Function0<T> $nextFunction;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SequencesKt__SequencesKt$generateSequence$1(Function0<? extends T> function0) {
        super(1);
        this.$nextFunction = function0;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [T, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    @h
    public final T invoke(@g T it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return this.$nextFunction.invoke();
    }
}
