package kotlin;

import androidx.exifinterface.media.ExifInterface;
import com.alipay.sdk.packet.d;
import io.sentry.clientreport.e;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Standard.kt */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\t\u0010\u0000\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\b\u001a3\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\tH\u0087\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002\u001a2\u0010\n\u001a\u0002H\u000b\"\u0004\b\u0000\u0010\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\rH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u000e\u001aK\u0010\u000f\u001a\u0002H\u000b\"\u0004\b\u0000\u0010\u0010\"\u0004\b\u0001\u0010\u000b2\u0006\u0010\u0011\u001a\u0002H\u00102\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u000b0\t¢\u0006\u0002\b\u0012H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0002\u0010\u0013\u001a<\u0010\u0014\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0010*\u0002H\u00102\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u00050\tH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u0013\u001aA\u0010\u0015\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u0010*\u0002H\u00102\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u00050\t¢\u0006\u0002\b\u0012H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u0013\u001aB\u0010\u0016\u001a\u0002H\u000b\"\u0004\b\u0000\u0010\u0010\"\u0004\b\u0001\u0010\u000b*\u0002H\u00102\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u000b0\tH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u0013\u001aG\u0010\n\u001a\u0002H\u000b\"\u0004\b\u0000\u0010\u0010\"\u0004\b\u0001\u0010\u000b*\u0002H\u00102\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u000b0\t¢\u0006\u0002\b\u0012H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u0013\u001a>\u0010\u0017\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u0010*\u0002H\u00102\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u00190\tH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u0013\u001a>\u0010\u001a\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u0010*\u0002H\u00102\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u00190\tH\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0002\u0010\u0013\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001b"}, d2 = {"TODO", "", e.b.f83079a, "", "repeat", "", "times", "", d.f6907q, "Lkotlin/Function1;", "run", "R", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", c2.e.H, ExifInterface.GPS_DIRECTION_TRUE, "receiver", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "also", "apply", "let", "takeIf", "predicate", "", "takeUnless", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/StandardKt")
/* loaded from: classes4.dex */
class StandardKt__StandardKt {
    @InlineOnly
    private static final Void TODO() {
        throw new NotImplementedError(null, 1, null);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> T also(T t9, Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        block.invoke(t9);
        return t9;
    }

    @InlineOnly
    private static final <T> T apply(T t9, Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        block.invoke(t9);
        return t9;
    }

    @InlineOnly
    private static final <T, R> R let(T t9, Function1<? super T, ? extends R> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return block.invoke(t9);
    }

    @InlineOnly
    private static final void repeat(int i4, Function1<? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        for (int i10 = 0; i10 < i4; i10++) {
            action.invoke(Integer.valueOf(i10));
        }
    }

    @InlineOnly
    private static final <R> R run(Function0<? extends R> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return block.invoke();
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> T takeIf(T t9, Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        if (predicate.invoke(t9).booleanValue()) {
            return t9;
        }
        return null;
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final <T> T takeUnless(T t9, Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        if (predicate.invoke(t9).booleanValue()) {
            return null;
        }
        return t9;
    }

    @InlineOnly
    private static final <T, R> R with(T t9, Function1<? super T, ? extends R> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return block.invoke(t9);
    }

    @InlineOnly
    private static final Void TODO(String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        throw new NotImplementedError("An operation is not implemented: " + reason);
    }

    @InlineOnly
    private static final <T, R> R run(T t9, Function1<? super T, ? extends R> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return block.invoke(t9);
    }
}
