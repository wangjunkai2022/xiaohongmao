package kotlin.collections;

import java.util.List;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ranges.IntRange;
import m8.g;
import m8.h;

@Metadata(d1 = {"kotlin/collections/ArraysKt__ArraysJVMKt", "kotlin/collections/ArraysKt__ArraysKt", "kotlin/collections/ArraysKt___ArraysJvmKt", "kotlin/collections/ArraysKt___ArraysKt"}, k = 4, mv = {1, 7, 1}, xi = 49)
/* loaded from: classes4.dex */
public final class ArraysKt extends ArraysKt___ArraysKt {
    private ArraysKt() {
    }

    public static /* bridge */ /* synthetic */ boolean contains(@g Object[] objArr, Object obj) {
        return ArraysKt___ArraysKt.contains(objArr, obj);
    }

    @SinceKotlin(version = "1.3")
    @g
    public static /* bridge */ /* synthetic */ byte[] copyInto(@g byte[] bArr, @g byte[] bArr2, int i4, int i10, int i11) {
        return ArraysKt___ArraysJvmKt.copyInto(bArr, bArr2, i4, i10, i11);
    }

    @g
    public static /* bridge */ /* synthetic */ IntRange getIndices(@g Object[] objArr) {
        return ArraysKt___ArraysKt.getIndices(objArr);
    }

    @h
    public static /* bridge */ /* synthetic */ Object getOrNull(@g Object[] objArr, int i4) {
        return ArraysKt___ArraysKt.getOrNull(objArr, i4);
    }

    @g
    public static /* bridge */ /* synthetic */ List toList(@g Object[] objArr) {
        return ArraysKt___ArraysKt.toList(objArr);
    }
}
