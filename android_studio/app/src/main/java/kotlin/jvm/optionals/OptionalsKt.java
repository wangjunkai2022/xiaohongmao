package kotlin.jvm.optionals;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import m8.g;
import m8.h;

/* compiled from: Optionals.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\"\n\u0000\u001a$\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0004H\u0007\u001a4\u0010\u0005\u001a\u0002H\u0006\"\u0004\b\u0000\u0010\u0006\"\n\b\u0001\u0010\u0002*\u0004\b\u0002H\u0006*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0007\u001a\u0002H\u0006H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\b\u001a>\u0010\t\u001a\u0002H\u0006\"\u0004\b\u0000\u0010\u0006\"\n\b\u0001\u0010\u0002*\u0004\b\u0002H\u0006*\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00060\nH\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0002\u0010\u000b\u001a#\u0010\f\u001a\u0004\u0018\u0001H\u0002\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0007¢\u0006\u0002\u0010\r\u001a;\u0010\u000e\u001a\u0002H\u000f\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\u0010\b\u0001\u0010\u000f*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\u0010*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0011\u001a\u0002H\u000fH\u0007¢\u0006\u0002\u0010\u0012\u001a$\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0014\"\b\b\u0000\u0010\u0002*\u00020\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0004H\u0007\u001a$\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0016\"\b\b\u0000\u0010\u0002*\u00020\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0004H\u0007\u0082\u0002\u000b\n\u0002\b9\n\u0005\b\u009920\u0001¨\u0006\u0017"}, d2 = {"asSequence", "Lkotlin/sequences/Sequence;", ExifInterface.GPS_DIRECTION_TRUE, "", "Ljava/util/Optional;", "getOrDefault", "R", "defaultValue", "(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;", "getOrElse", "Lkotlin/Function0;", "(Ljava/util/Optional;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "getOrNull", "(Ljava/util/Optional;)Ljava/lang/Object;", "toCollection", "C", "", "destination", "(Ljava/util/Optional;Ljava/util/Collection;)Ljava/util/Collection;", "toList", "", "toSet", "", "kotlin-stdlib-jdk8"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class OptionalsKt {
    @SinceKotlin(version = "1.7")
    @g
    @ExperimentalStdlibApi
    public static final <T> Sequence<T> asSequence(@g Optional<? extends T> optional) {
        Sequence<T> emptySequence;
        Sequence<T> sequenceOf;
        Intrinsics.checkNotNullParameter(optional, "<this>");
        if (optional.isPresent()) {
            sequenceOf = SequencesKt__SequencesKt.sequenceOf(optional.get());
            return sequenceOf;
        }
        emptySequence = SequencesKt__SequencesKt.emptySequence();
        return emptySequence;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [R, java.lang.Object] */
    @SinceKotlin(version = "1.7")
    @ExperimentalStdlibApi
    public static final <R, T extends R> R getOrDefault(@g Optional<T> optional, R r9) {
        Intrinsics.checkNotNullParameter(optional, "<this>");
        return optional.isPresent() ? optional.get() : r9;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [R, java.lang.Object] */
    @SinceKotlin(version = "1.7")
    @ExperimentalStdlibApi
    public static final <R, T extends R> R getOrElse(@g Optional<T> optional, @g Function0<? extends R> defaultValue) {
        Intrinsics.checkNotNullParameter(optional, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return optional.isPresent() ? optional.get() : defaultValue.invoke();
    }

    @SinceKotlin(version = "1.7")
    @h
    @ExperimentalStdlibApi
    public static final <T> T getOrNull(@g Optional<T> optional) {
        Intrinsics.checkNotNullParameter(optional, "<this>");
        return optional.orElse(null);
    }

    @SinceKotlin(version = "1.7")
    @g
    @ExperimentalStdlibApi
    public static final <T, C extends Collection<? super T>> C toCollection(@g Optional<T> optional, @g C destination) {
        Intrinsics.checkNotNullParameter(optional, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (optional.isPresent()) {
            T t9 = optional.get();
            Intrinsics.checkNotNullExpressionValue(t9, "get()");
            destination.add(t9);
        }
        return destination;
    }

    @SinceKotlin(version = "1.7")
    @g
    @ExperimentalStdlibApi
    public static final <T> List<T> toList(@g Optional<? extends T> optional) {
        List<T> emptyList;
        List<T> listOf;
        Intrinsics.checkNotNullParameter(optional, "<this>");
        if (optional.isPresent()) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(optional.get());
            return listOf;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @SinceKotlin(version = "1.7")
    @g
    @ExperimentalStdlibApi
    public static final <T> Set<T> toSet(@g Optional<? extends T> optional) {
        Set<T> emptySet;
        Set<T> of;
        Intrinsics.checkNotNullParameter(optional, "<this>");
        if (optional.isPresent()) {
            of = SetsKt__SetsJVMKt.setOf(optional.get());
            return of;
        }
        emptySet = SetsKt__SetsKt.emptySet();
        return emptySet;
    }
}
