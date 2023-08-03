package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.v;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;

/* compiled from: BrittleContainsOptimization.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u001a#\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0000¢\u0006\u0002\u0010\u0004\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0000\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u0000\u001a,\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0000\u001a\u0018\u0010\t\u001a\u00020\n\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0002¨\u0006\u000b"}, d2 = {"convertToSetForSetOperation", "", ExifInterface.GPS_DIRECTION_TRUE, "", "([Ljava/lang/Object;)Ljava/util/Collection;", "", "Lkotlin/sequences/Sequence;", "convertToSetForSetOperationWith", v.b.f83881a, "safeToConvertToSet", "", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BrittleContainsOptimizationKt {
    @g
    public static final <T> Collection<T> convertToSetForSetOperation(@g Iterable<? extends T> iterable) {
        List list;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof Set) {
            return (Collection) iterable;
        }
        if (iterable instanceof Collection) {
            Collection<T> collection = (Collection) iterable;
            return safeToConvertToSet(collection) ? CollectionsKt___CollectionsKt.toHashSet(iterable) : collection;
        } else if (CollectionSystemProperties.brittleContainsOptimizationEnabled) {
            return CollectionsKt___CollectionsKt.toHashSet(iterable);
        } else {
            list = CollectionsKt___CollectionsKt.toList(iterable);
            return list;
        }
    }

    @g
    public static final <T> Collection<T> convertToSetForSetOperationWith(@g Iterable<? extends T> iterable, @g Iterable<? extends T> source) {
        List list;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        if (iterable instanceof Set) {
            return (Collection) iterable;
        }
        if (iterable instanceof Collection) {
            if (!(source instanceof Collection) || ((Collection) source).size() >= 2) {
                Collection<T> collection = (Collection) iterable;
                return safeToConvertToSet(collection) ? CollectionsKt___CollectionsKt.toHashSet(iterable) : collection;
            }
            return (Collection) iterable;
        } else if (CollectionSystemProperties.brittleContainsOptimizationEnabled) {
            return CollectionsKt___CollectionsKt.toHashSet(iterable);
        } else {
            list = CollectionsKt___CollectionsKt.toList(iterable);
            return list;
        }
    }

    private static final <T> boolean safeToConvertToSet(Collection<? extends T> collection) {
        return CollectionSystemProperties.brittleContainsOptimizationEnabled && collection.size() > 2 && (collection instanceof ArrayList);
    }

    @g
    public static final <T> Collection<T> convertToSetForSetOperation(@g Sequence<? extends T> sequence) {
        List list;
        HashSet hashSet;
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        if (CollectionSystemProperties.brittleContainsOptimizationEnabled) {
            hashSet = SequencesKt___SequencesKt.toHashSet(sequence);
            return hashSet;
        }
        list = SequencesKt___SequencesKt.toList(sequence);
        return list;
    }

    @g
    public static final <T> Collection<T> convertToSetForSetOperation(@g T[] tArr) {
        List asList;
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        if (CollectionSystemProperties.brittleContainsOptimizationEnabled) {
            return ArraysKt___ArraysKt.toHashSet(tArr);
        }
        asList = ArraysKt___ArraysJvmKt.asList(tArr);
        return asList;
    }
}
