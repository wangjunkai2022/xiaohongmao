package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.TuplesKt;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShortArray;
import kotlin.collections.unsigned.UArraysKt___UArraysKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Arrays.kt */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a5\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\f\u0012\u0006\b\u0001\u0012\u0002H\u0002\u0018\u00010\u00032\u0010\u0010\u0004\u001a\f\u0012\u0006\b\u0001\u0012\u0002H\u0002\u0018\u00010\u0003H\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a#\u0010\u0007\u001a\u00020\b\"\u0004\b\u0000\u0010\u0002*\f\u0012\u0006\b\u0001\u0012\u0002H\u0002\u0018\u00010\u0003H\u0001¢\u0006\u0004\b\t\u0010\n\u001a?\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00032\n\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\u0010\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a+\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0015\"\u0004\b\u0000\u0010\u0002*\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00030\u0003¢\u0006\u0002\u0010\u0016\u001a;\u0010\u0017\u001a\u0002H\u0018\"\u0010\b\u0000\u0010\u0019*\u0006\u0012\u0002\b\u00030\u0003*\u0002H\u0018\"\u0004\b\u0001\u0010\u0018*\u0002H\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00180\u001bH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u001c\u001a)\u0010\u001d\u001a\u00020\u0001*\b\u0012\u0002\b\u0003\u0018\u00010\u0003H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000¢\u0006\u0002\u0010\u001e\u001aG\u0010\u001f\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00180\u00150 \"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0018*\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00180 0\u0003¢\u0006\u0002\u0010!\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\""}, d2 = {"contentDeepEqualsImpl", "", ExifInterface.GPS_DIRECTION_TRUE, "", "other", "contentDeepEquals", "([Ljava/lang/Object;[Ljava/lang/Object;)Z", "contentDeepToStringImpl", "", "contentDeepToString", "([Ljava/lang/Object;)Ljava/lang/String;", "contentDeepToStringInternal", "", "result", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "processed", "", "contentDeepToStringInternal$ArraysKt__ArraysKt", "([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/List;)V", "flatten", "", "([[Ljava/lang/Object;)Ljava/util/List;", "ifEmpty", "R", "C", "defaultValue", "Lkotlin/Function0;", "([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "isNullOrEmpty", "([Ljava/lang/Object;)Z", "unzip", "Lkotlin/Pair;", "([Lkotlin/Pair;)Lkotlin/Pair;", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/collections/ArraysKt")
/* loaded from: classes4.dex */
public class ArraysKt__ArraysKt extends ArraysKt__ArraysJVMKt {
    @SinceKotlin(version = "1.3")
    @PublishedApi
    @JvmName(name = "contentDeepEquals")
    public static final <T> boolean contentDeepEquals(@h T[] tArr, @h T[] tArr2) {
        boolean m646contentEqualslec5QzE;
        boolean m642contentEqualsKJPZfPQ;
        boolean m641contentEqualsFGO6Aew;
        boolean m644contentEqualskV0jMPg;
        if (tArr == tArr2) {
            return true;
        }
        if (tArr == null || tArr2 == null || tArr.length != tArr2.length) {
            return false;
        }
        int length = tArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            T t9 = tArr[i4];
            T t10 = tArr2[i4];
            if (t9 != t10) {
                if (t9 == null || t10 == null) {
                    return false;
                }
                if ((t9 instanceof Object[]) && (t10 instanceof Object[])) {
                    if (!contentDeepEquals((Object[]) t9, (Object[]) t10)) {
                        return false;
                    }
                } else if ((t9 instanceof byte[]) && (t10 instanceof byte[])) {
                    if (!Arrays.equals((byte[]) t9, (byte[]) t10)) {
                        return false;
                    }
                } else if ((t9 instanceof short[]) && (t10 instanceof short[])) {
                    if (!Arrays.equals((short[]) t9, (short[]) t10)) {
                        return false;
                    }
                } else if ((t9 instanceof int[]) && (t10 instanceof int[])) {
                    if (!Arrays.equals((int[]) t9, (int[]) t10)) {
                        return false;
                    }
                } else if ((t9 instanceof long[]) && (t10 instanceof long[])) {
                    if (!Arrays.equals((long[]) t9, (long[]) t10)) {
                        return false;
                    }
                } else if ((t9 instanceof float[]) && (t10 instanceof float[])) {
                    if (!Arrays.equals((float[]) t9, (float[]) t10)) {
                        return false;
                    }
                } else if ((t9 instanceof double[]) && (t10 instanceof double[])) {
                    if (!Arrays.equals((double[]) t9, (double[]) t10)) {
                        return false;
                    }
                } else if ((t9 instanceof char[]) && (t10 instanceof char[])) {
                    if (!Arrays.equals((char[]) t9, (char[]) t10)) {
                        return false;
                    }
                } else if ((t9 instanceof boolean[]) && (t10 instanceof boolean[])) {
                    if (!Arrays.equals((boolean[]) t9, (boolean[]) t10)) {
                        return false;
                    }
                } else if ((t9 instanceof UByteArray) && (t10 instanceof UByteArray)) {
                    m644contentEqualskV0jMPg = UArraysKt___UArraysKt.m644contentEqualskV0jMPg(((UByteArray) t9).m154unboximpl(), ((UByteArray) t10).m154unboximpl());
                    if (!m644contentEqualskV0jMPg) {
                        return false;
                    }
                } else if ((t9 instanceof UShortArray) && (t10 instanceof UShortArray)) {
                    m641contentEqualsFGO6Aew = UArraysKt___UArraysKt.m641contentEqualsFGO6Aew(((UShortArray) t9).m414unboximpl(), ((UShortArray) t10).m414unboximpl());
                    if (!m641contentEqualsFGO6Aew) {
                        return false;
                    }
                } else if ((t9 instanceof UIntArray) && (t10 instanceof UIntArray)) {
                    m642contentEqualsKJPZfPQ = UArraysKt___UArraysKt.m642contentEqualsKJPZfPQ(((UIntArray) t9).m232unboximpl(), ((UIntArray) t10).m232unboximpl());
                    if (!m642contentEqualsKJPZfPQ) {
                        return false;
                    }
                } else if ((t9 instanceof ULongArray) && (t10 instanceof ULongArray)) {
                    m646contentEqualslec5QzE = UArraysKt___UArraysKt.m646contentEqualslec5QzE(((ULongArray) t9).m310unboximpl(), ((ULongArray) t10).m310unboximpl());
                    if (!m646contentEqualslec5QzE) {
                        return false;
                    }
                } else if (!Intrinsics.areEqual(t9, t10)) {
                    return false;
                }
            }
        }
        return true;
    }

    @SinceKotlin(version = "1.3")
    @JvmName(name = "contentDeepToString")
    @PublishedApi
    @g
    public static final <T> String contentDeepToString(@h T[] tArr) {
        int coerceAtMost;
        if (tArr == null) {
            return "null";
        }
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(tArr.length, 429496729);
        StringBuilder sb = new StringBuilder((coerceAtMost * 5) + 2);
        contentDeepToStringInternal$ArraysKt__ArraysKt(tArr, sb, new ArrayList());
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    private static final <T> void contentDeepToStringInternal$ArraysKt__ArraysKt(T[] tArr, StringBuilder sb, List<Object[]> list) {
        int lastIndex;
        String m664contentToStringuLth9ew;
        String m661contentToStringXUkPCBk;
        String m662contentToStringd6D3K8;
        String m658contentToString2csIQuQ;
        if (list.contains(tArr)) {
            sb.append("[...]");
            return;
        }
        list.add(tArr);
        sb.append('[');
        int length = tArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (i4 != 0) {
                sb.append(", ");
            }
            T t9 = tArr[i4];
            if (t9 == null) {
                sb.append("null");
            } else if (t9 instanceof Object[]) {
                contentDeepToStringInternal$ArraysKt__ArraysKt((Object[]) t9, sb, list);
            } else if (t9 instanceof byte[]) {
                String arrays = Arrays.toString((byte[]) t9);
                Intrinsics.checkNotNullExpressionValue(arrays, "toString(this)");
                sb.append(arrays);
            } else if (t9 instanceof short[]) {
                String arrays2 = Arrays.toString((short[]) t9);
                Intrinsics.checkNotNullExpressionValue(arrays2, "toString(this)");
                sb.append(arrays2);
            } else if (t9 instanceof int[]) {
                String arrays3 = Arrays.toString((int[]) t9);
                Intrinsics.checkNotNullExpressionValue(arrays3, "toString(this)");
                sb.append(arrays3);
            } else if (t9 instanceof long[]) {
                String arrays4 = Arrays.toString((long[]) t9);
                Intrinsics.checkNotNullExpressionValue(arrays4, "toString(this)");
                sb.append(arrays4);
            } else if (t9 instanceof float[]) {
                String arrays5 = Arrays.toString((float[]) t9);
                Intrinsics.checkNotNullExpressionValue(arrays5, "toString(this)");
                sb.append(arrays5);
            } else if (t9 instanceof double[]) {
                String arrays6 = Arrays.toString((double[]) t9);
                Intrinsics.checkNotNullExpressionValue(arrays6, "toString(this)");
                sb.append(arrays6);
            } else if (t9 instanceof char[]) {
                String arrays7 = Arrays.toString((char[]) t9);
                Intrinsics.checkNotNullExpressionValue(arrays7, "toString(this)");
                sb.append(arrays7);
            } else if (t9 instanceof boolean[]) {
                String arrays8 = Arrays.toString((boolean[]) t9);
                Intrinsics.checkNotNullExpressionValue(arrays8, "toString(this)");
                sb.append(arrays8);
            } else if (t9 instanceof UByteArray) {
                m658contentToString2csIQuQ = UArraysKt___UArraysKt.m658contentToString2csIQuQ(((UByteArray) t9).m154unboximpl());
                sb.append(m658contentToString2csIQuQ);
            } else if (t9 instanceof UShortArray) {
                m662contentToStringd6D3K8 = UArraysKt___UArraysKt.m662contentToStringd6D3K8(((UShortArray) t9).m414unboximpl());
                sb.append(m662contentToStringd6D3K8);
            } else if (t9 instanceof UIntArray) {
                m661contentToStringXUkPCBk = UArraysKt___UArraysKt.m661contentToStringXUkPCBk(((UIntArray) t9).m232unboximpl());
                sb.append(m661contentToStringXUkPCBk);
            } else if (t9 instanceof ULongArray) {
                m664contentToStringuLth9ew = UArraysKt___UArraysKt.m664contentToStringuLth9ew(((ULongArray) t9).m310unboximpl());
                sb.append(m664contentToStringuLth9ew);
            } else {
                sb.append(t9.toString());
            }
        }
        sb.append(']');
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
        list.remove(lastIndex);
    }

    @g
    public static final <T> List<T> flatten(@g T[][] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        int i4 = 0;
        for (T[] tArr2 : tArr) {
            i4 += tArr2.length;
        }
        ArrayList arrayList = new ArrayList(i4);
        for (T[] tArr3 : tArr) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, tArr3);
        }
        return arrayList;
    }

    /* JADX WARN: Incorrect types in method signature: <C:[Ljava/lang/Object;:TR;R:Ljava/lang/Object;>(TC;Lkotlin/jvm/functions/Function0<+TR;>;)TR; */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final Object ifEmpty(Object[] objArr, Function0 defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return objArr.length == 0 ? defaultValue.invoke() : objArr;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean isNullOrEmpty(Object[] objArr) {
        if (objArr != null) {
            if (!(objArr.length == 0)) {
                return false;
            }
        }
        return true;
    }

    @g
    public static final <T, R> Pair<List<T>, List<R>> unzip(@g Pair<? extends T, ? extends R>[] pairArr) {
        Intrinsics.checkNotNullParameter(pairArr, "<this>");
        ArrayList arrayList = new ArrayList(pairArr.length);
        ArrayList arrayList2 = new ArrayList(pairArr.length);
        for (Pair<? extends T, ? extends R> pair : pairArr) {
            arrayList.add(pair.getFirst());
            arrayList2.add(pair.getSecond());
        }
        return TuplesKt.to(arrayList, arrayList2);
    }
}
