package a9;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Measure.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0018\u0010\u0005\u001a\u00060\u0003j\u0002`\u00042\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000\u001a*\u0010\b\u001a\u0012\u0012\u0004\u0012\u00028\u0000\u0012\b\u0012\u00060\u0003j\u0002`\u00040\u0007\"\u0004\b\u0000\u0010\u00062\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000\u001a(\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0007\"\u0004\b\u0000\u0010\u00062\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0002*\n\u0010\n\"\u00020\u00032\u00020\u0003¨\u0006\u000b"}, d2 = {"Lkotlin/Function0;", "", "code", "", "Lorg/koin/core/time/TimeInMillis;", "a", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Pair;", "b", "c", "TimeInMillis", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class a {
    public static final double a(@g Function0<Unit> code) {
        Intrinsics.checkNotNullParameter(code, "code");
        return ((Number) c(code).getSecond()).doubleValue();
    }

    @g
    public static final <T> Pair<T, Double> b(@g Function0<? extends T> code) {
        Intrinsics.checkNotNullParameter(code, "code");
        Pair c10 = c(code);
        return new Pair<>(c10.component1(), Double.valueOf(((Number) c10.component2()).doubleValue()));
    }

    private static final <T> Pair<T, Double> c(Function0<? extends T> function0) {
        d9.a aVar = d9.a.f62010a;
        return new Pair<>(function0.invoke(), Double.valueOf((aVar.a() - aVar.a()) / 1000000.0d));
    }
}
