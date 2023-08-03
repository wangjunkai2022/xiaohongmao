package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.alipay.sdk.packet.d;
import com.facebook.imagepipeline.producers.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import okio.Buffer;
import okio.ByteString;
import okio.Segment;
import okio.SegmentedByteString;
import okio._UtilKt;

/* compiled from: -SegmentedByteString.kt */
@Metadata(d1 = {"\u0000T\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a-\u0010\u0006\u001a\u00020\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0080\b\u001a\u0017\u0010\u000e\u001a\u00020\u000f*\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0080\b\u001a\r\u0010\u0012\u001a\u00020\u0001*\u00020\bH\u0080\b\u001a\r\u0010\u0013\u001a\u00020\u0001*\u00020\bH\u0080\b\u001a\u0015\u0010\u0014\u001a\u00020\u0015*\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0001H\u0080\b\u001a-\u0010\u0017\u001a\u00020\u000f*\u00020\b2\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0080\b\u001a-\u0010\u0017\u001a\u00020\u000f*\u00020\b2\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0080\b\u001a\u001d\u0010\u001a\u001a\u00020\u0019*\u00020\b2\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u0001H\u0080\b\u001a\r\u0010\u001d\u001a\u00020\u000b*\u00020\bH\u0080\b\u001a%\u0010\u001e\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0080\b\u001a]\u0010!\u001a\u00020\u0007*\u00020\b2K\u0010\"\u001aG\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u00070#H\u0080\bø\u0001\u0000\u001aj\u0010!\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u00012K\u0010\"\u001aG\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u00070#H\u0082\b\u001a\u0014\u0010'\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0001H\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006("}, d2 = {"binarySearch", "", "", "value", "fromIndex", "toIndex", "commonCopyInto", "", "Lokio/SegmentedByteString;", TypedValues.Cycle.S_WAVE_OFFSET, TypedValues.Attributes.S_TARGET, "", "targetOffset", n.f13105s, "commonEquals", "", "other", "", "commonGetSize", "commonHashCode", "commonInternalGet", "", "pos", "commonRangeEquals", "otherOffset", "Lokio/ByteString;", "commonSubstring", "beginIndex", "endIndex", "commonToByteArray", "commonWrite", "buffer", "Lokio/Buffer;", "forEachSegment", d.f6907q, "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "data", "segment", "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class _SegmentedByteStringKt {
    public static final int binarySearch(@g int[] iArr, int i4, int i10, int i11) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int i14 = iArr[i13];
            if (i14 < i4) {
                i10 = i13 + 1;
            } else if (i14 <= i4) {
                return i13;
            } else {
                i12 = i13 - 1;
            }
        }
        return (-i10) - 1;
    }

    public static final void commonCopyInto(@g SegmentedByteString segmentedByteString, int i4, @g byte[] target, int i10, int i11) {
        Intrinsics.checkNotNullParameter(segmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        long j4 = i11;
        _UtilKt.checkOffsetAndCount(segmentedByteString.size(), i4, j4);
        _UtilKt.checkOffsetAndCount(target.length, i10, j4);
        int i12 = i11 + i4;
        int segment = segment(segmentedByteString, i4);
        while (i4 < i12) {
            int i13 = segment == 0 ? 0 : segmentedByteString.getDirectory$okio()[segment - 1];
            int i14 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + segment];
            int min = Math.min(i12, (segmentedByteString.getDirectory$okio()[segment] - i13) + i13) - i4;
            int i15 = i14 + (i4 - i13);
            ArraysKt___ArraysJvmKt.copyInto(segmentedByteString.getSegments$okio()[segment], target, i10, i15, i15 + min);
            i10 += min;
            i4 += min;
            segment++;
        }
    }

    public static final boolean commonEquals(@g SegmentedByteString segmentedByteString, @h Object obj) {
        Intrinsics.checkNotNullParameter(segmentedByteString, "<this>");
        if (obj == segmentedByteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == segmentedByteString.size() && segmentedByteString.rangeEquals(0, byteString, 0, segmentedByteString.size())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonGetSize(@g SegmentedByteString segmentedByteString) {
        Intrinsics.checkNotNullParameter(segmentedByteString, "<this>");
        return segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length - 1];
    }

    public static final int commonHashCode(@g SegmentedByteString segmentedByteString) {
        Intrinsics.checkNotNullParameter(segmentedByteString, "<this>");
        int hashCode$okio = segmentedByteString.getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = segmentedByteString.getSegments$okio().length;
        int i4 = 0;
        int i10 = 0;
        int i11 = 1;
        while (i4 < length) {
            int i12 = segmentedByteString.getDirectory$okio()[length + i4];
            int i13 = segmentedByteString.getDirectory$okio()[i4];
            byte[] bArr = segmentedByteString.getSegments$okio()[i4];
            int i14 = (i13 - i10) + i12;
            while (i12 < i14) {
                i11 = (i11 * 31) + bArr[i12];
                i12++;
            }
            i4++;
            i10 = i13;
        }
        segmentedByteString.setHashCode$okio(i11);
        return i11;
    }

    public static final byte commonInternalGet(@g SegmentedByteString segmentedByteString, int i4) {
        Intrinsics.checkNotNullParameter(segmentedByteString, "<this>");
        _UtilKt.checkOffsetAndCount(segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length - 1], i4, 1L);
        int segment = segment(segmentedByteString, i4);
        return segmentedByteString.getSegments$okio()[segment][(i4 - (segment == 0 ? 0 : segmentedByteString.getDirectory$okio()[segment - 1])) + segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + segment]];
    }

    public static final boolean commonRangeEquals(@g SegmentedByteString segmentedByteString, int i4, @g ByteString other, int i10, int i11) {
        Intrinsics.checkNotNullParameter(segmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i4 < 0 || i4 > segmentedByteString.size() - i11) {
            return false;
        }
        int i12 = i11 + i4;
        int segment = segment(segmentedByteString, i4);
        while (i4 < i12) {
            int i13 = segment == 0 ? 0 : segmentedByteString.getDirectory$okio()[segment - 1];
            int i14 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + segment];
            int min = Math.min(i12, (segmentedByteString.getDirectory$okio()[segment] - i13) + i13) - i4;
            if (!other.rangeEquals(i10, segmentedByteString.getSegments$okio()[segment], i14 + (i4 - i13), min)) {
                return false;
            }
            i10 += min;
            i4 += min;
            segment++;
        }
        return true;
    }

    @g
    public static final ByteString commonSubstring(@g SegmentedByteString segmentedByteString, int i4, int i10) {
        Object[] copyOfRange;
        Intrinsics.checkNotNullParameter(segmentedByteString, "<this>");
        int resolveDefaultParameter = _UtilKt.resolveDefaultParameter(segmentedByteString, i10);
        if (i4 >= 0) {
            if (!(resolveDefaultParameter <= segmentedByteString.size())) {
                throw new IllegalArgumentException(("endIndex=" + resolveDefaultParameter + " > length(" + segmentedByteString.size() + ')').toString());
            }
            int i11 = resolveDefaultParameter - i4;
            if (i11 >= 0) {
                if (i4 == 0 && resolveDefaultParameter == segmentedByteString.size()) {
                    return segmentedByteString;
                }
                if (i4 == resolveDefaultParameter) {
                    return ByteString.EMPTY;
                }
                int segment = segment(segmentedByteString, i4);
                int segment2 = segment(segmentedByteString, resolveDefaultParameter - 1);
                copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(segmentedByteString.getSegments$okio(), segment, segment2 + 1);
                byte[][] bArr = (byte[][]) copyOfRange;
                int[] iArr = new int[bArr.length * 2];
                if (segment <= segment2) {
                    int i12 = segment;
                    int i13 = 0;
                    while (true) {
                        int i14 = i12 + 1;
                        iArr[i13] = Math.min(segmentedByteString.getDirectory$okio()[i12] - i4, i11);
                        int i15 = i13 + 1;
                        iArr[i13 + bArr.length] = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + i12];
                        if (i12 == segment2) {
                            break;
                        }
                        i12 = i14;
                        i13 = i15;
                    }
                }
                int i16 = segment != 0 ? segmentedByteString.getDirectory$okio()[segment - 1] : 0;
                int length = bArr.length;
                iArr[length] = iArr[length] + (i4 - i16);
                return new SegmentedByteString(bArr, iArr);
            }
            throw new IllegalArgumentException(("endIndex=" + resolveDefaultParameter + " < beginIndex=" + i4).toString());
        }
        throw new IllegalArgumentException(("beginIndex=" + i4 + " < 0").toString());
    }

    @g
    public static final byte[] commonToByteArray(@g SegmentedByteString segmentedByteString) {
        Intrinsics.checkNotNullParameter(segmentedByteString, "<this>");
        byte[] bArr = new byte[segmentedByteString.size()];
        int length = segmentedByteString.getSegments$okio().length;
        int i4 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i4 < length) {
            int i12 = segmentedByteString.getDirectory$okio()[length + i4];
            int i13 = segmentedByteString.getDirectory$okio()[i4];
            int i14 = i13 - i10;
            ArraysKt___ArraysJvmKt.copyInto(segmentedByteString.getSegments$okio()[i4], bArr, i11, i12, i12 + i14);
            i11 += i14;
            i4++;
            i10 = i13;
        }
        return bArr;
    }

    public static final void commonWrite(@g SegmentedByteString segmentedByteString, @g Buffer buffer, int i4, int i10) {
        Intrinsics.checkNotNullParameter(segmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i11 = i4 + i10;
        int segment = segment(segmentedByteString, i4);
        while (i4 < i11) {
            int i12 = segment == 0 ? 0 : segmentedByteString.getDirectory$okio()[segment - 1];
            int i13 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + segment];
            int min = Math.min(i11, (segmentedByteString.getDirectory$okio()[segment] - i12) + i12) - i4;
            int i14 = i13 + (i4 - i12);
            Segment segment2 = new Segment(segmentedByteString.getSegments$okio()[segment], i14, i14 + min, true, false);
            Segment segment3 = buffer.head;
            if (segment3 == null) {
                segment2.prev = segment2;
                segment2.next = segment2;
                buffer.head = segment2;
            } else {
                Intrinsics.checkNotNull(segment3);
                Segment segment4 = segment3.prev;
                Intrinsics.checkNotNull(segment4);
                segment4.push(segment2);
            }
            i4 += min;
            segment++;
        }
        buffer.setSize$okio(buffer.size() + i10);
    }

    public static final void forEachSegment(@g SegmentedByteString segmentedByteString, @g Function3<? super byte[], ? super Integer, ? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(segmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int length = segmentedByteString.getSegments$okio().length;
        int i4 = 0;
        int i10 = 0;
        while (i4 < length) {
            int i11 = segmentedByteString.getDirectory$okio()[length + i4];
            int i12 = segmentedByteString.getDirectory$okio()[i4];
            action.invoke(segmentedByteString.getSegments$okio()[i4], Integer.valueOf(i11), Integer.valueOf(i12 - i10));
            i4++;
            i10 = i12;
        }
    }

    public static final int segment(@g SegmentedByteString segmentedByteString, int i4) {
        Intrinsics.checkNotNullParameter(segmentedByteString, "<this>");
        int binarySearch = binarySearch(segmentedByteString.getDirectory$okio(), i4 + 1, 0, segmentedByteString.getSegments$okio().length);
        return binarySearch >= 0 ? binarySearch : ~binarySearch;
    }

    private static final void forEachSegment(SegmentedByteString segmentedByteString, int i4, int i10, Function3<? super byte[], ? super Integer, ? super Integer, Unit> function3) {
        int segment = segment(segmentedByteString, i4);
        while (i4 < i10) {
            int i11 = segment == 0 ? 0 : segmentedByteString.getDirectory$okio()[segment - 1];
            int i12 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + segment];
            int min = Math.min(i10, (segmentedByteString.getDirectory$okio()[segment] - i11) + i11) - i4;
            function3.invoke(segmentedByteString.getSegments$okio()[segment], Integer.valueOf(i12 + (i4 - i11)), Integer.valueOf(min));
            i4 += min;
            segment++;
        }
    }

    public static final boolean commonRangeEquals(@g SegmentedByteString segmentedByteString, int i4, @g byte[] other, int i10, int i11) {
        Intrinsics.checkNotNullParameter(segmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i4 < 0 || i4 > segmentedByteString.size() - i11 || i10 < 0 || i10 > other.length - i11) {
            return false;
        }
        int i12 = i11 + i4;
        int segment = segment(segmentedByteString, i4);
        while (i4 < i12) {
            int i13 = segment == 0 ? 0 : segmentedByteString.getDirectory$okio()[segment - 1];
            int i14 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + segment];
            int min = Math.min(i12, (segmentedByteString.getDirectory$okio()[segment] - i13) + i13) - i4;
            if (!_UtilKt.arrayRangeEquals(segmentedByteString.getSegments$okio()[segment], i14 + (i4 - i13), other, i10, min)) {
                return false;
            }
            i10 += min;
            i4 += min;
            segment++;
        }
        return true;
    }
}
