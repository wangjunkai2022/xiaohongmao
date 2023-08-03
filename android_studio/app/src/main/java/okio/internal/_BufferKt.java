package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.facebook.imagepipeline.producers.n;
import com.google.android.exoplayer2.extractor.ts.a0;
import com.google.android.exoplayer2.i;
import com.google.common.base.c;
import io.sentry.protocol.v;
import java.io.EOFException;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;
import m8.g;
import m8.h;
import okhttp3.internal.connection.RealConnection;
import okio.Buffer;
import okio.ByteString;
import okio.Options;
import okio.Segment;
import okio.SegmentPool;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Source;
import okio.Utf8;
import okio._JvmPlatformKt;
import okio._UtilKt;

/* compiled from: -Buffer.kt */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a0\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0000\u001a\r\u0010\u0013\u001a\u00020\u0014*\u00020\u0015H\u0080\b\u001a\r\u0010\u0016\u001a\u00020\u0014*\u00020\u0017H\u0080\b\u001a\r\u0010\u0018\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\r\u0010\u0019\u001a\u00020\u0015*\u00020\u0015H\u0080\b\u001a%\u0010\u001a\u001a\u00020\u0015*\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\u0017\u0010\u001e\u001a\u00020\f*\u00020\u00152\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0080\b\u001a\u0015\u0010!\u001a\u00020\u0007*\u00020\u00172\u0006\u0010\"\u001a\u00020\nH\u0080\b\u001a\u0015\u0010#\u001a\u00020$*\u00020\u00152\u0006\u0010%\u001a\u00020\u0007H\u0080\b\u001a\r\u0010&\u001a\u00020\n*\u00020\u0015H\u0080\b\u001a%\u0010'\u001a\u00020\u0007*\u00020\u00152\u0006\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0080\b\u001a\u001d\u0010'\u001a\u00020\u0007*\u00020\u00152\u0006\u0010\u0010\u001a\u00020+2\u0006\u0010)\u001a\u00020\u0007H\u0080\b\u001a\u001d\u0010,\u001a\u00020\u0007*\u00020\u00152\u0006\u0010-\u001a\u00020+2\u0006\u0010)\u001a\u00020\u0007H\u0080\b\u001a\r\u0010.\u001a\u00020\n*\u00020\u0017H\u0080\b\u001a-\u0010/\u001a\u00020\f*\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u0015\u00100\u001a\u00020\n*\u00020\u00152\u0006\u00101\u001a\u00020\u0001H\u0080\b\u001a%\u00100\u001a\u00020\n*\u00020\u00152\u0006\u00101\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u001d\u00100\u001a\u00020\u0007*\u00020\u00152\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\u0015\u00102\u001a\u00020\u0007*\u00020\u00152\u0006\u00101\u001a\u000203H\u0080\b\u001a\u0014\u00104\u001a\u00020\u0017*\u00020\u00152\u0006\u00105\u001a\u00020\u0017H\u0000\u001a\r\u00106\u001a\u00020$*\u00020\u0015H\u0080\b\u001a\r\u00107\u001a\u00020\u0001*\u00020\u0015H\u0080\b\u001a\u0015\u00107\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u00108\u001a\u00020+*\u00020\u0015H\u0080\b\u001a\u0015\u00108\u001a\u00020+*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u00109\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\u0015\u0010:\u001a\u00020\u0014*\u00020\u00152\u0006\u00101\u001a\u00020\u0001H\u0080\b\u001a\u001d\u0010:\u001a\u00020\u0014*\u00020\u00152\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u0010;\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\r\u0010<\u001a\u00020\n*\u00020\u0015H\u0080\b\u001a\r\u0010=\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\r\u0010>\u001a\u00020?*\u00020\u0015H\u0080\b\u001a\u0014\u0010@\u001a\u00020\u0017*\u00020\u00152\u0006\u00105\u001a\u00020\u0017H\u0000\u001a\u0015\u0010A\u001a\u00020B*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u0010C\u001a\u00020\n*\u00020\u0015H\u0080\b\u001a\u000f\u0010D\u001a\u0004\u0018\u00010B*\u00020\u0015H\u0080\b\u001a\u0015\u0010E\u001a\u00020B*\u00020\u00152\u0006\u0010F\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010G\u001a\u00020\u0007*\u00020\u00172\u0006\u0010H\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010I\u001a\u00020\n*\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010J\u001a\u00020\n*\u00020\u00152\u0006\u0010K\u001a\u00020LH\u0080\b\u001a\u0015\u0010M\u001a\u00020\u0014*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u0010N\u001a\u00020+*\u00020\u0015H\u0080\b\u001a\u0015\u0010N\u001a\u00020+*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u0015\u0010O\u001a\u00020\u000e*\u00020\u00152\u0006\u0010P\u001a\u00020\nH\u0080\b\u001a\u0015\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020\u0001H\u0080\b\u001a%\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u001d\u0010Q\u001a\u00020\u0014*\u00020\u00152\u0006\u0010R\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a)\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010S\u001a\u00020+2\b\b\u0002\u0010\u001c\u001a\u00020\n2\b\b\u0002\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u001d\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020T2\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010U\u001a\u00020\u0007*\u00020\u00152\u0006\u0010R\u001a\u00020TH\u0080\b\u001a\u0015\u0010V\u001a\u00020\u0015*\u00020\u00152\u0006\u0010(\u001a\u00020\nH\u0080\b\u001a\u0015\u0010W\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010Y\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010Z\u001a\u00020\u0015*\u00020\u00152\u0006\u0010[\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\\\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010]\u001a\u00020\u0015*\u00020\u00152\u0006\u0010^\u001a\u00020\nH\u0080\b\u001a%\u0010_\u001a\u00020\u0015*\u00020\u00152\u0006\u0010`\u001a\u00020B2\u0006\u0010a\u001a\u00020\n2\u0006\u0010b\u001a\u00020\nH\u0080\b\u001a\u0015\u0010c\u001a\u00020\u0015*\u00020\u00152\u0006\u0010d\u001a\u00020\nH\u0080\b\u001a\u0014\u0010e\u001a\u00020B*\u00020\u00152\u0006\u0010f\u001a\u00020\u0007H\u0000\u001a?\u0010g\u001a\u0002Hh\"\u0004\b\u0000\u0010h*\u00020\u00152\u0006\u0010)\u001a\u00020\u00072\u001a\u0010i\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002Hh0jH\u0080\bø\u0001\u0000¢\u0006\u0002\u0010k\u001a\u001e\u0010l\u001a\u00020\n*\u00020\u00152\u0006\u0010K\u001a\u00020L2\b\b\u0002\u0010m\u001a\u00020\fH\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006n"}, d2 = {"HEX_DIGIT_BYTES", "", "getHEX_DIGIT_BYTES$annotations", "()V", "getHEX_DIGIT_BYTES", "()[B", "OVERFLOW_DIGIT_START", "", "OVERFLOW_ZONE", "SEGMENTING_THRESHOLD", "", "rangeEquals", "", "segment", "Lokio/Segment;", "segmentPos", "bytes", "bytesOffset", "bytesLimit", "commonClear", "", "Lokio/Buffer;", "commonClose", "Lokio/Buffer$UnsafeCursor;", "commonCompleteSegmentByteCount", "commonCopy", "commonCopyTo", "out", TypedValues.Cycle.S_WAVE_OFFSET, n.f13105s, "commonEquals", "other", "", "commonExpandBuffer", "minByteCount", "commonGet", "", "pos", "commonHashCode", "commonIndexOf", "b", "fromIndex", "toIndex", "Lokio/ByteString;", "commonIndexOfElement", "targetBytes", "commonNext", "commonRangeEquals", "commonRead", "sink", "commonReadAll", "Lokio/Sink;", "commonReadAndWriteUnsafe", "unsafeCursor", "commonReadByte", "commonReadByteArray", "commonReadByteString", "commonReadDecimalLong", "commonReadFully", "commonReadHexadecimalUnsignedLong", "commonReadInt", "commonReadLong", "commonReadShort", "", "commonReadUnsafe", "commonReadUtf8", "", "commonReadUtf8CodePoint", "commonReadUtf8Line", "commonReadUtf8LineStrict", "limit", "commonResizeBuffer", "newSize", "commonSeek", "commonSelect", "options", "Lokio/Options;", "commonSkip", "commonSnapshot", "commonWritableSegment", "minimumCapacity", "commonWrite", v.b.f83881a, "byteString", "Lokio/Source;", "commonWriteAll", "commonWriteByte", "commonWriteDecimalLong", "v", "commonWriteHexadecimalUnsignedLong", "commonWriteInt", ContextChain.TAG_INFRA, "commonWriteLong", "commonWriteShort", "s", "commonWriteUtf8", TypedValues.Custom.S_STRING, "beginIndex", "endIndex", "commonWriteUtf8CodePoint", "codePoint", "readUtf8Line", "newline", "seek", ExifInterface.GPS_DIRECTION_TRUE, "lambda", "Lkotlin/Function2;", "(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "selectPrefix", "selectTruncated", "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class _BufferKt {
    @g
    private static final byte[] HEX_DIGIT_BYTES = _JvmPlatformKt.asUtf8ToByteArray("0123456789abcdef");
    public static final long OVERFLOW_DIGIT_START = -7;
    public static final long OVERFLOW_ZONE = -922337203685477580L;
    public static final int SEGMENTING_THRESHOLD = 4096;

    public static final void commonClear(@g Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        buffer.skip(buffer.size());
    }

    public static final void commonClose(@g Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        if (unsafeCursor.buffer != null) {
            unsafeCursor.buffer = null;
            unsafeCursor.setSegment$okio(null);
            unsafeCursor.offset = -1L;
            unsafeCursor.data = null;
            unsafeCursor.start = -1;
            unsafeCursor.end = -1;
            return;
        }
        throw new IllegalStateException("not attached to a buffer".toString());
    }

    public static final long commonCompleteSegmentByteCount(@g Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        long size = buffer.size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = buffer.head;
        Intrinsics.checkNotNull(segment);
        Segment segment2 = segment.prev;
        Intrinsics.checkNotNull(segment2);
        int i4 = segment2.limit;
        return (i4 >= 8192 || !segment2.owner) ? size : size - (i4 - segment2.pos);
    }

    @g
    public static final Buffer commonCopy(@g Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Buffer buffer2 = new Buffer();
        if (buffer.size() == 0) {
            return buffer2;
        }
        Segment segment = buffer.head;
        Intrinsics.checkNotNull(segment);
        Segment sharedCopy = segment.sharedCopy();
        buffer2.head = sharedCopy;
        sharedCopy.prev = sharedCopy;
        sharedCopy.next = sharedCopy;
        for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
            Segment segment3 = sharedCopy.prev;
            Intrinsics.checkNotNull(segment3);
            Intrinsics.checkNotNull(segment2);
            segment3.push(segment2.sharedCopy());
        }
        buffer2.setSize$okio(buffer.size());
        return buffer2;
    }

    @g
    public static final Buffer commonCopyTo(@g Buffer buffer, @g Buffer out, long j4, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(out, "out");
        _UtilKt.checkOffsetAndCount(buffer.size(), j4, j10);
        if (j10 == 0) {
            return buffer;
        }
        out.setSize$okio(out.size() + j10);
        Segment segment = buffer.head;
        while (true) {
            Intrinsics.checkNotNull(segment);
            int i4 = segment.limit;
            int i10 = segment.pos;
            if (j4 < i4 - i10) {
                break;
            }
            j4 -= i4 - i10;
            segment = segment.next;
        }
        while (j10 > 0) {
            Intrinsics.checkNotNull(segment);
            Segment sharedCopy = segment.sharedCopy();
            int i11 = sharedCopy.pos + ((int) j4);
            sharedCopy.pos = i11;
            sharedCopy.limit = Math.min(i11 + ((int) j10), sharedCopy.limit);
            Segment segment2 = out.head;
            if (segment2 == null) {
                sharedCopy.prev = sharedCopy;
                sharedCopy.next = sharedCopy;
                out.head = sharedCopy;
            } else {
                Intrinsics.checkNotNull(segment2);
                Segment segment3 = segment2.prev;
                Intrinsics.checkNotNull(segment3);
                segment3.push(sharedCopy);
            }
            j10 -= sharedCopy.limit - sharedCopy.pos;
            segment = segment.next;
            j4 = 0;
        }
        return buffer;
    }

    public static final boolean commonEquals(@g Buffer buffer, @h Object obj) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer == obj) {
            return true;
        }
        if (obj instanceof Buffer) {
            Buffer buffer2 = (Buffer) obj;
            if (buffer.size() != buffer2.size()) {
                return false;
            }
            if (buffer.size() == 0) {
                return true;
            }
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            Segment segment2 = buffer2.head;
            Intrinsics.checkNotNull(segment2);
            int i4 = segment.pos;
            int i10 = segment2.pos;
            long j4 = 0;
            while (j4 < buffer.size()) {
                long min = Math.min(segment.limit - i4, segment2.limit - i10);
                if (0 < min) {
                    long j10 = 0;
                    while (true) {
                        j10++;
                        int i11 = i4 + 1;
                        int i12 = i10 + 1;
                        if (segment.data[i4] != segment2.data[i10]) {
                            return false;
                        }
                        if (j10 >= min) {
                            i4 = i11;
                            i10 = i12;
                            break;
                        }
                        i4 = i11;
                        i10 = i12;
                    }
                }
                if (i4 == segment.limit) {
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    i4 = segment.pos;
                }
                if (i10 == segment2.limit) {
                    segment2 = segment2.next;
                    Intrinsics.checkNotNull(segment2);
                    i10 = segment2.pos;
                }
                j4 += min;
            }
            return true;
        }
        return false;
    }

    public static final long commonExpandBuffer(@g Buffer.UnsafeCursor unsafeCursor, int i4) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        if (i4 > 0) {
            if (i4 <= 8192) {
                Buffer buffer = unsafeCursor.buffer;
                if (buffer != null) {
                    if (unsafeCursor.readWrite) {
                        long size = buffer.size();
                        Segment writableSegment$okio = buffer.writableSegment$okio(i4);
                        int i10 = 8192 - writableSegment$okio.limit;
                        writableSegment$okio.limit = 8192;
                        long j4 = i10;
                        buffer.setSize$okio(size + j4);
                        unsafeCursor.setSegment$okio(writableSegment$okio);
                        unsafeCursor.offset = size;
                        unsafeCursor.data = writableSegment$okio.data;
                        unsafeCursor.start = 8192 - i10;
                        unsafeCursor.end = 8192;
                        return j4;
                    }
                    throw new IllegalStateException("expandBuffer() only permitted for read/write buffers".toString());
                }
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("minByteCount > Segment.SIZE: ", Integer.valueOf(i4)).toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("minByteCount <= 0: ", Integer.valueOf(i4)).toString());
    }

    public static final byte commonGet(@g Buffer buffer, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        _UtilKt.checkOffsetAndCount(buffer.size(), j4, 1L);
        Segment segment = buffer.head;
        if (segment != null) {
            if (buffer.size() - j4 < j4) {
                long size = buffer.size();
                while (size > j4) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    size -= segment.limit - segment.pos;
                }
                Intrinsics.checkNotNull(segment);
                return segment.data[(int) ((segment.pos + j4) - size)];
            }
            long j10 = 0;
            while (true) {
                long j11 = (segment.limit - segment.pos) + j10;
                if (j11 > j4) {
                    Intrinsics.checkNotNull(segment);
                    return segment.data[(int) ((segment.pos + j4) - j10)];
                }
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j10 = j11;
            }
        } else {
            Intrinsics.checkNotNull(null);
            throw null;
        }
    }

    public static final int commonHashCode(@g Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment segment = buffer.head;
        if (segment == null) {
            return 0;
        }
        int i4 = 1;
        do {
            int i10 = segment.limit;
            for (int i11 = segment.pos; i11 < i10; i11++) {
                i4 = (i4 * 31) + segment.data[i11];
            }
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
        } while (segment != buffer.head);
        return i4;
    }

    public static final long commonIndexOf(@g Buffer buffer, byte b10, long j4, long j10) {
        Segment segment;
        long j11 = j4;
        long j12 = j10;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        boolean z9 = false;
        long j13 = 0;
        if (0 <= j11 && j11 <= j12) {
            z9 = true;
        }
        if (z9) {
            if (j12 > buffer.size()) {
                j12 = buffer.size();
            }
            long j14 = j12;
            if (j11 == j14 || (segment = buffer.head) == null) {
                return -1L;
            }
            if (buffer.size() - j11 < j11) {
                long size = buffer.size();
                while (size > j11) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    size -= segment.limit - segment.pos;
                }
                while (size < j14) {
                    byte[] bArr = segment.data;
                    int min = (int) Math.min(segment.limit, (segment.pos + j14) - size);
                    for (int i4 = (int) ((segment.pos + j11) - size); i4 < min; i4++) {
                        if (bArr[i4] == b10) {
                            return (i4 - segment.pos) + size;
                        }
                    }
                    size += segment.limit - segment.pos;
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j11 = size;
                }
                return -1L;
            }
            while (true) {
                long j15 = (segment.limit - segment.pos) + j13;
                if (j15 > j11) {
                    break;
                }
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j13 = j15;
            }
            while (j13 < j14) {
                byte[] bArr2 = segment.data;
                int min2 = (int) Math.min(segment.limit, (segment.pos + j14) - j13);
                for (int i10 = (int) ((segment.pos + j11) - j13); i10 < min2; i10++) {
                    if (bArr2[i10] == b10) {
                        return (i10 - segment.pos) + j13;
                    }
                }
                j13 += segment.limit - segment.pos;
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j11 = j13;
            }
            return -1L;
        }
        throw new IllegalArgumentException(("size=" + buffer.size() + " fromIndex=" + j11 + " toIndex=" + j12).toString());
    }

    public static final long commonIndexOfElement(@g Buffer buffer, @g ByteString targetBytes, long j4) {
        int i4;
        int i10;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        long j10 = 0;
        if (j4 >= 0) {
            Segment segment = buffer.head;
            if (segment == null) {
                return -1L;
            }
            if (buffer.size() - j4 < j4) {
                j10 = buffer.size();
                while (j10 > j4) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    j10 -= segment.limit - segment.pos;
                }
                if (targetBytes.size() == 2) {
                    byte b10 = targetBytes.getByte(0);
                    byte b11 = targetBytes.getByte(1);
                    while (j10 < buffer.size()) {
                        byte[] bArr = segment.data;
                        i4 = (int) ((segment.pos + j4) - j10);
                        int i11 = segment.limit;
                        while (i4 < i11) {
                            byte b12 = bArr[i4];
                            if (b12 != b10 && b12 != b11) {
                                i4++;
                            }
                            i10 = segment.pos;
                        }
                        j10 += segment.limit - segment.pos;
                        segment = segment.next;
                        Intrinsics.checkNotNull(segment);
                        j4 = j10;
                    }
                } else {
                    byte[] internalArray$okio = targetBytes.internalArray$okio();
                    while (j10 < buffer.size()) {
                        byte[] bArr2 = segment.data;
                        i4 = (int) ((segment.pos + j4) - j10);
                        int i12 = segment.limit;
                        while (i4 < i12) {
                            byte b13 = bArr2[i4];
                            int length = internalArray$okio.length;
                            int i13 = 0;
                            while (i13 < length) {
                                byte b14 = internalArray$okio[i13];
                                i13++;
                                if (b13 == b14) {
                                    i10 = segment.pos;
                                }
                            }
                            i4++;
                        }
                        j10 += segment.limit - segment.pos;
                        segment = segment.next;
                        Intrinsics.checkNotNull(segment);
                        j4 = j10;
                    }
                }
                return -1L;
            }
            while (true) {
                long j11 = (segment.limit - segment.pos) + j10;
                if (j11 > j4) {
                    break;
                }
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j10 = j11;
            }
            if (targetBytes.size() == 2) {
                byte b15 = targetBytes.getByte(0);
                byte b16 = targetBytes.getByte(1);
                while (j10 < buffer.size()) {
                    byte[] bArr3 = segment.data;
                    i4 = (int) ((segment.pos + j4) - j10);
                    int i14 = segment.limit;
                    while (i4 < i14) {
                        byte b17 = bArr3[i4];
                        if (b17 != b15 && b17 != b16) {
                            i4++;
                        }
                        i10 = segment.pos;
                    }
                    j10 += segment.limit - segment.pos;
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j4 = j10;
                }
            } else {
                byte[] internalArray$okio2 = targetBytes.internalArray$okio();
                while (j10 < buffer.size()) {
                    byte[] bArr4 = segment.data;
                    i4 = (int) ((segment.pos + j4) - j10);
                    int i15 = segment.limit;
                    while (i4 < i15) {
                        byte b18 = bArr4[i4];
                        int length2 = internalArray$okio2.length;
                        int i16 = 0;
                        while (i16 < length2) {
                            byte b19 = internalArray$okio2[i16];
                            i16++;
                            if (b18 == b19) {
                                i10 = segment.pos;
                            }
                        }
                        i4++;
                    }
                    j10 += segment.limit - segment.pos;
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j4 = j10;
                }
            }
            return -1L;
            return (i4 - i10) + j10;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("fromIndex < 0: ", Long.valueOf(j4)).toString());
    }

    public static final int commonNext(@g Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        long j4 = unsafeCursor.offset;
        Buffer buffer = unsafeCursor.buffer;
        Intrinsics.checkNotNull(buffer);
        if (j4 != buffer.size()) {
            long j10 = unsafeCursor.offset;
            return unsafeCursor.seek(j10 == -1 ? 0L : j10 + (unsafeCursor.end - unsafeCursor.start));
        }
        throw new IllegalStateException("no more bytes".toString());
    }

    public static final boolean commonRangeEquals(@g Buffer buffer, long j4, @g ByteString bytes, int i4, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (j4 < 0 || i4 < 0 || i10 < 0 || buffer.size() - j4 < i10 || bytes.size() - i4 < i10) {
            return false;
        }
        if (i10 <= 0) {
            return true;
        }
        int i11 = 0;
        while (true) {
            int i12 = i11 + 1;
            if (buffer.getByte(i11 + j4) != bytes.getByte(i11 + i4)) {
                return false;
            }
            if (i12 >= i10) {
                return true;
            }
            i11 = i12;
        }
    }

    public static final int commonRead(@g Buffer buffer, @g byte[] sink) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        return buffer.read(sink, 0, sink.length);
    }

    public static final long commonReadAll(@g Buffer buffer, @g Sink sink) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long size = buffer.size();
        if (size > 0) {
            sink.write(buffer, size);
        }
        return size;
    }

    @g
    public static final Buffer.UnsafeCursor commonReadAndWriteUnsafe(@g Buffer buffer, @g Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        Buffer.UnsafeCursor resolveDefaultParameter = _UtilKt.resolveDefaultParameter(unsafeCursor);
        if (resolveDefaultParameter.buffer == null) {
            resolveDefaultParameter.buffer = buffer;
            resolveDefaultParameter.readWrite = true;
            return resolveDefaultParameter;
        }
        throw new IllegalStateException("already attached to a buffer".toString());
    }

    public static final byte commonReadByte(@g Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() != 0) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int i4 = segment.pos;
            int i10 = segment.limit;
            int i11 = i4 + 1;
            byte b10 = segment.data[i4];
            buffer.setSize$okio(buffer.size() - 1);
            if (i11 == i10) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i11;
            }
            return b10;
        }
        throw new EOFException();
    }

    @g
    public static final byte[] commonReadByteArray(@g Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        return buffer.readByteArray(buffer.size());
    }

    @g
    public static final ByteString commonReadByteString(@g Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        return buffer.readByteString(buffer.size());
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0096, code lost:
        r17.setSize$okio(r17.size() - r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x009f, code lost:
        if (r6 == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x00a1, code lost:
        r14 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x00a3, code lost:
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x00a4, code lost:
        if (r5 >= r14) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x00ae, code lost:
        if (r17.size() == 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x00b0, code lost:
        if (r6 == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x00b2, code lost:
        r1 = "Expected a digit";
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x00b5, code lost:
        r1 = "Expected a digit or '-'";
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x00da, code lost:
        throw new java.lang.NumberFormatException(r1 + " but was 0x" + okio._UtilKt.toHexString(r17.getByte(0)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x00e0, code lost:
        throw new java.io.EOFException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x00e1, code lost:
        if (r6 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x00e5, code lost:
        return -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:?, code lost:
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final long commonReadDecimalLong(@m8.g okio.Buffer r17) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._BufferKt.commonReadDecimalLong(okio.Buffer):long");
    }

    public static final void commonReadFully(@g Buffer buffer, @g byte[] sink) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i4 = 0;
        while (i4 < sink.length) {
            int read = buffer.read(sink, i4, sink.length - i4);
            if (read == -1) {
                throw new EOFException();
            }
            i4 += read;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x009d A[EDGE_INSN: B:90:0x009d->B:85:0x009d ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final long commonReadHexadecimalUnsignedLong(@m8.g okio.Buffer r15) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            long r0 = r15.size()
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto La7
            r0 = 0
            r4 = r2
            r1 = 0
        L12:
            okio.Segment r6 = r15.head
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            byte[] r7 = r6.data
            int r8 = r6.pos
            int r9 = r6.limit
        L1d:
            if (r8 >= r9) goto L89
            r10 = r7[r8]
            r11 = 48
            byte r11 = (byte) r11
            if (r10 < r11) goto L2e
            r12 = 57
            byte r12 = (byte) r12
            if (r10 > r12) goto L2e
            int r11 = r10 - r11
            goto L48
        L2e:
            r11 = 97
            byte r11 = (byte) r11
            if (r10 < r11) goto L3d
            r12 = 102(0x66, float:1.43E-43)
            byte r12 = (byte) r12
            if (r10 > r12) goto L3d
        L38:
            int r11 = r10 - r11
            int r11 = r11 + 10
            goto L48
        L3d:
            r11 = 65
            byte r11 = (byte) r11
            if (r10 < r11) goto L75
            r12 = 70
            byte r12 = (byte) r12
            if (r10 > r12) goto L75
            goto L38
        L48:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L58
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L1d
        L58:
            okio.Buffer r15 = new okio.Buffer
            r15.<init>()
            okio.Buffer r15 = r15.writeHexadecimalUnsignedLong(r4)
            okio.Buffer r15 = r15.writeByte(r10)
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r15 = r15.readUtf8()
            java.lang.String r1 = "Number too large: "
            java.lang.String r15 = kotlin.jvm.internal.Intrinsics.stringPlus(r1, r15)
            r0.<init>(r15)
            throw r0
        L75:
            if (r0 == 0) goto L79
            r1 = 1
            goto L89
        L79:
            java.lang.NumberFormatException r15 = new java.lang.NumberFormatException
            java.lang.String r0 = okio._UtilKt.toHexString(r10)
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.String r0 = kotlin.jvm.internal.Intrinsics.stringPlus(r1, r0)
            r15.<init>(r0)
            throw r15
        L89:
            if (r8 != r9) goto L95
            okio.Segment r7 = r6.pop()
            r15.head = r7
            okio.SegmentPool.recycle(r6)
            goto L97
        L95:
            r6.pos = r8
        L97:
            if (r1 != 0) goto L9d
            okio.Segment r6 = r15.head
            if (r6 != 0) goto L12
        L9d:
            long r1 = r15.size()
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.setSize$okio(r1)
            return r4
        La7:
            java.io.EOFException r15 = new java.io.EOFException
            r15.<init>()
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._BufferKt.commonReadHexadecimalUnsignedLong(okio.Buffer):long");
    }

    public static final int commonReadInt(@g Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() >= 4) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int i4 = segment.pos;
            int i10 = segment.limit;
            if (i10 - i4 < 4) {
                return (buffer.readByte() & 255) | ((buffer.readByte() & 255) << 24) | ((buffer.readByte() & 255) << 16) | ((buffer.readByte() & 255) << 8);
            }
            byte[] bArr = segment.data;
            int i11 = i4 + 1;
            int i12 = i11 + 1;
            int i13 = ((bArr[i4] & 255) << 24) | ((bArr[i11] & 255) << 16);
            int i14 = i12 + 1;
            int i15 = i13 | ((bArr[i12] & 255) << 8);
            int i16 = i14 + 1;
            int i17 = i15 | (bArr[i14] & 255);
            buffer.setSize$okio(buffer.size() - 4);
            if (i16 == i10) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i16;
            }
            return i17;
        }
        throw new EOFException();
    }

    public static final long commonReadLong(@g Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() >= 8) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int i4 = segment.pos;
            int i10 = segment.limit;
            if (i10 - i4 < 8) {
                return ((buffer.readInt() & 4294967295L) << 32) | (4294967295L & buffer.readInt());
            }
            byte[] bArr = segment.data;
            int i11 = i4 + 1;
            int i12 = i11 + 1;
            int i13 = i12 + 1;
            long j4 = ((bArr[i4] & 255) << 56) | ((bArr[i11] & 255) << 48) | ((bArr[i12] & 255) << 40);
            int i14 = i13 + 1;
            long j10 = ((bArr[i13] & 255) << 32) | j4;
            int i15 = i14 + 1;
            int i16 = i15 + 1;
            long j11 = j10 | ((bArr[i14] & 255) << 24) | ((bArr[i15] & 255) << 16);
            int i17 = i16 + 1;
            int i18 = i17 + 1;
            long j12 = j11 | ((bArr[i16] & 255) << 8) | (bArr[i17] & 255);
            buffer.setSize$okio(buffer.size() - 8);
            if (i18 == i10) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i18;
            }
            return j12;
        }
        throw new EOFException();
    }

    public static final short commonReadShort(@g Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() >= 2) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int i4 = segment.pos;
            int i10 = segment.limit;
            if (i10 - i4 < 2) {
                return (short) ((buffer.readByte() & 255) | ((buffer.readByte() & 255) << 8));
            }
            byte[] bArr = segment.data;
            int i11 = i4 + 1;
            int i12 = i11 + 1;
            int i13 = ((bArr[i4] & 255) << 8) | (bArr[i11] & 255);
            buffer.setSize$okio(buffer.size() - 2);
            if (i12 == i10) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i12;
            }
            return (short) i13;
        }
        throw new EOFException();
    }

    @g
    public static final Buffer.UnsafeCursor commonReadUnsafe(@g Buffer buffer, @g Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        Buffer.UnsafeCursor resolveDefaultParameter = _UtilKt.resolveDefaultParameter(unsafeCursor);
        if (resolveDefaultParameter.buffer == null) {
            resolveDefaultParameter.buffer = buffer;
            resolveDefaultParameter.readWrite = false;
            return resolveDefaultParameter;
        }
        throw new IllegalStateException("already attached to a buffer".toString());
    }

    @g
    public static final String commonReadUtf8(@g Buffer buffer, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        int i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (i4 >= 0 && j4 <= 2147483647L) {
            if (buffer.size() >= j4) {
                if (i4 == 0) {
                    return "";
                }
                Segment segment = buffer.head;
                Intrinsics.checkNotNull(segment);
                int i10 = segment.pos;
                if (i10 + j4 > segment.limit) {
                    return _Utf8Kt.commonToUtf8String$default(buffer.readByteArray(j4), 0, 0, 3, null);
                }
                int i11 = (int) j4;
                String commonToUtf8String = _Utf8Kt.commonToUtf8String(segment.data, i10, i10 + i11);
                segment.pos += i11;
                buffer.setSize$okio(buffer.size() - j4);
                if (segment.pos == segment.limit) {
                    buffer.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
                return commonToUtf8String;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j4)).toString());
    }

    public static final int commonReadUtf8CodePoint(@g Buffer buffer) {
        int i4;
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() != 0) {
            byte b10 = buffer.getByte(0L);
            boolean z9 = false;
            if ((b10 & 128) == 0) {
                i4 = b10 & Byte.MAX_VALUE;
                i10 = 1;
                i11 = 0;
            } else if ((b10 & 224) == 192) {
                i4 = b10 & c.I;
                i10 = 2;
                i11 = 128;
            } else if ((b10 & 240) == 224) {
                i4 = b10 & c.f32110q;
                i10 = 3;
                i11 = 2048;
            } else if ((b10 & 248) != 240) {
                buffer.skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            } else {
                i4 = b10 & 7;
                i10 = 4;
                i11 = 65536;
            }
            long j4 = i10;
            if (buffer.size() >= j4) {
                if (1 < i10) {
                    int i12 = 1;
                    while (true) {
                        int i13 = i12 + 1;
                        long j10 = i12;
                        byte b11 = buffer.getByte(j10);
                        if ((b11 & 192) != 128) {
                            buffer.skip(j10);
                            return Utf8.REPLACEMENT_CODE_POINT;
                        }
                        i4 = (i4 << 6) | (b11 & Utf8.REPLACEMENT_BYTE);
                        if (i13 >= i10) {
                            break;
                        }
                        i12 = i13;
                    }
                }
                buffer.skip(j4);
                if (i4 > 1114111) {
                    return Utf8.REPLACEMENT_CODE_POINT;
                }
                if (55296 <= i4 && i4 <= 57343) {
                    z9 = true;
                }
                return (!z9 && i4 >= i11) ? i4 : Utf8.REPLACEMENT_CODE_POINT;
            }
            throw new EOFException("size < " + i10 + ": " + buffer.size() + " (to read code point prefixed 0x" + _UtilKt.toHexString(b10) + ')');
        }
        throw new EOFException();
    }

    @h
    public static final String commonReadUtf8Line(@g Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        long indexOf = buffer.indexOf((byte) 10);
        if (indexOf != -1) {
            return readUtf8Line(buffer, indexOf);
        }
        if (buffer.size() != 0) {
            return buffer.readUtf8(buffer.size());
        }
        return null;
    }

    @g
    public static final String commonReadUtf8LineStrict(@g Buffer buffer, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j4 >= 0) {
            long j10 = j4 != Long.MAX_VALUE ? j4 + 1 : Long.MAX_VALUE;
            byte b10 = (byte) 10;
            long indexOf = buffer.indexOf(b10, 0L, j10);
            if (indexOf != -1) {
                return readUtf8Line(buffer, indexOf);
            }
            if (j10 < buffer.size() && buffer.getByte(j10 - 1) == ((byte) 13) && buffer.getByte(j10) == b10) {
                return readUtf8Line(buffer, j10);
            }
            Buffer buffer2 = new Buffer();
            buffer.copyTo(buffer2, 0L, Math.min(32, buffer.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(buffer.size(), j4) + " content=" + buffer2.readByteString().hex() + Typography.ellipsis);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("limit < 0: ", Long.valueOf(j4)).toString());
    }

    public static final long commonResizeBuffer(@g Buffer.UnsafeCursor unsafeCursor, long j4) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        Buffer buffer = unsafeCursor.buffer;
        if (buffer != null) {
            if (unsafeCursor.readWrite) {
                long size = buffer.size();
                int i4 = 1;
                int i10 = (j4 > size ? 1 : (j4 == size ? 0 : -1));
                if (i10 <= 0) {
                    if (j4 >= 0) {
                        long j10 = size - j4;
                        while (true) {
                            if (j10 <= 0) {
                                break;
                            }
                            Segment segment = buffer.head;
                            Intrinsics.checkNotNull(segment);
                            Segment segment2 = segment.prev;
                            Intrinsics.checkNotNull(segment2);
                            int i11 = segment2.limit;
                            long j11 = i11 - segment2.pos;
                            if (j11 <= j10) {
                                buffer.head = segment2.pop();
                                SegmentPool.recycle(segment2);
                                j10 -= j11;
                            } else {
                                segment2.limit = i11 - ((int) j10);
                                break;
                            }
                        }
                        unsafeCursor.setSegment$okio(null);
                        unsafeCursor.offset = j4;
                        unsafeCursor.data = null;
                        unsafeCursor.start = -1;
                        unsafeCursor.end = -1;
                    } else {
                        throw new IllegalArgumentException(Intrinsics.stringPlus("newSize < 0: ", Long.valueOf(j4)).toString());
                    }
                } else if (i10 > 0) {
                    long j12 = j4 - size;
                    boolean z9 = true;
                    while (j12 > 0) {
                        Segment writableSegment$okio = buffer.writableSegment$okio(i4);
                        int min = (int) Math.min(j12, 8192 - writableSegment$okio.limit);
                        writableSegment$okio.limit += min;
                        j12 -= min;
                        if (z9) {
                            unsafeCursor.setSegment$okio(writableSegment$okio);
                            unsafeCursor.offset = size;
                            unsafeCursor.data = writableSegment$okio.data;
                            int i12 = writableSegment$okio.limit;
                            unsafeCursor.start = i12 - min;
                            unsafeCursor.end = i12;
                            i4 = 1;
                            z9 = false;
                        } else {
                            i4 = 1;
                        }
                    }
                }
                buffer.setSize$okio(j4);
                return size;
            }
            throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers".toString());
        }
        throw new IllegalStateException("not attached to a buffer".toString());
    }

    public static final int commonSeek(@g Buffer.UnsafeCursor unsafeCursor, long j4) {
        Segment segment;
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        Buffer buffer = unsafeCursor.buffer;
        if (buffer != null) {
            int i4 = (j4 > (-1L) ? 1 : (j4 == (-1L) ? 0 : -1));
            if (i4 >= 0 && j4 <= buffer.size()) {
                if (i4 != 0 && j4 != buffer.size()) {
                    long j10 = 0;
                    long size = buffer.size();
                    Segment segment2 = buffer.head;
                    if (unsafeCursor.getSegment$okio() != null) {
                        long j11 = unsafeCursor.offset;
                        int i10 = unsafeCursor.start;
                        Segment segment$okio = unsafeCursor.getSegment$okio();
                        Intrinsics.checkNotNull(segment$okio);
                        long j12 = j11 - (i10 - segment$okio.pos);
                        if (j12 > j4) {
                            segment2 = unsafeCursor.getSegment$okio();
                            size = j12;
                            segment = segment2;
                        } else {
                            segment = unsafeCursor.getSegment$okio();
                            j10 = j12;
                        }
                    } else {
                        segment = segment2;
                    }
                    if (size - j4 > j4 - j10) {
                        while (true) {
                            Intrinsics.checkNotNull(segment);
                            int i11 = segment.limit;
                            int i12 = segment.pos;
                            if (j4 < (i11 - i12) + j10) {
                                break;
                            }
                            j10 += i11 - i12;
                            segment = segment.next;
                        }
                    } else {
                        while (size > j4) {
                            Intrinsics.checkNotNull(segment2);
                            segment2 = segment2.prev;
                            Intrinsics.checkNotNull(segment2);
                            size -= segment2.limit - segment2.pos;
                        }
                        j10 = size;
                        segment = segment2;
                    }
                    if (unsafeCursor.readWrite) {
                        Intrinsics.checkNotNull(segment);
                        if (segment.shared) {
                            Segment unsharedCopy = segment.unsharedCopy();
                            if (buffer.head == segment) {
                                buffer.head = unsharedCopy;
                            }
                            segment = segment.push(unsharedCopy);
                            Segment segment3 = segment.prev;
                            Intrinsics.checkNotNull(segment3);
                            segment3.pop();
                        }
                    }
                    unsafeCursor.setSegment$okio(segment);
                    unsafeCursor.offset = j4;
                    Intrinsics.checkNotNull(segment);
                    unsafeCursor.data = segment.data;
                    int i13 = segment.pos + ((int) (j4 - j10));
                    unsafeCursor.start = i13;
                    int i14 = segment.limit;
                    unsafeCursor.end = i14;
                    return i14 - i13;
                }
                unsafeCursor.setSegment$okio(null);
                unsafeCursor.offset = j4;
                unsafeCursor.data = null;
                unsafeCursor.start = -1;
                unsafeCursor.end = -1;
                return -1;
            }
            throw new ArrayIndexOutOfBoundsException("offset=" + j4 + " > size=" + buffer.size());
        }
        throw new IllegalStateException("not attached to a buffer".toString());
    }

    public static final int commonSelect(@g Buffer buffer, @g Options options) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        int selectPrefix$default = selectPrefix$default(buffer, options, false, 2, null);
        if (selectPrefix$default == -1) {
            return -1;
        }
        buffer.skip(options.getByteStrings$okio()[selectPrefix$default].size());
        return selectPrefix$default;
    }

    public static final void commonSkip(@g Buffer buffer, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        while (j4 > 0) {
            Segment segment = buffer.head;
            if (segment != null) {
                int min = (int) Math.min(j4, segment.limit - segment.pos);
                long j10 = min;
                buffer.setSize$okio(buffer.size() - j10);
                j4 -= j10;
                int i4 = segment.pos + min;
                segment.pos = i4;
                if (i4 == segment.limit) {
                    buffer.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @g
    public static final ByteString commonSnapshot(@g Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() <= 2147483647L) {
            return buffer.snapshot((int) buffer.size());
        }
        throw new IllegalStateException(Intrinsics.stringPlus("size > Int.MAX_VALUE: ", Long.valueOf(buffer.size())).toString());
    }

    @g
    public static final Segment commonWritableSegment(@g Buffer buffer, int i4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        boolean z9 = true;
        if ((i4 < 1 || i4 > 8192) ? false : false) {
            Segment segment = buffer.head;
            if (segment == null) {
                Segment take = SegmentPool.take();
                buffer.head = take;
                take.prev = take;
                take.next = take;
                return take;
            }
            Intrinsics.checkNotNull(segment);
            Segment segment2 = segment.prev;
            Intrinsics.checkNotNull(segment2);
            return (segment2.limit + i4 > 8192 || !segment2.owner) ? segment2.push(SegmentPool.take()) : segment2;
        }
        throw new IllegalArgumentException("unexpected capacity".toString());
    }

    @g
    public static final Buffer commonWrite(@g Buffer buffer, @g ByteString byteString, int i4, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(buffer, i4, i10);
        return buffer;
    }

    public static /* synthetic */ Buffer commonWrite$default(Buffer buffer, ByteString byteString, int i4, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i4 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = byteString.size();
        }
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(buffer, i4, i10);
        return buffer;
    }

    public static final long commonWriteAll(@g Buffer buffer, @g Source source) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        long j4 = 0;
        while (true) {
            long read = source.read(buffer, 8192L);
            if (read == -1) {
                return j4;
            }
            j4 += read;
        }
    }

    @g
    public static final Buffer commonWriteByte(@g Buffer buffer, int i4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment writableSegment$okio = buffer.writableSegment$okio(1);
        byte[] bArr = writableSegment$okio.data;
        int i10 = writableSegment$okio.limit;
        writableSegment$okio.limit = i10 + 1;
        bArr[i10] = (byte) i4;
        buffer.setSize$okio(buffer.size() + 1);
        return buffer;
    }

    @g
    public static final Buffer commonWriteDecimalLong(@g Buffer buffer, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        int i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (i4 == 0) {
            return buffer.writeByte(48);
        }
        boolean z9 = false;
        int i10 = 1;
        if (i4 < 0) {
            j4 = -j4;
            if (j4 < 0) {
                return buffer.writeUtf8("-9223372036854775808");
            }
            z9 = true;
        }
        if (j4 >= 100000000) {
            i10 = j4 < 1000000000000L ? j4 < RealConnection.IDLE_CONNECTION_HEALTHY_NS ? j4 < i.f23681j ? 9 : 10 : j4 < 100000000000L ? 11 : 12 : j4 < 1000000000000000L ? j4 < 10000000000000L ? 13 : j4 < 100000000000000L ? 14 : 15 : j4 < 100000000000000000L ? j4 < 10000000000000000L ? 16 : 17 : j4 < 1000000000000000000L ? 18 : 19;
        } else if (j4 >= 10000) {
            i10 = j4 < 1000000 ? j4 < 100000 ? 5 : 6 : j4 < 10000000 ? 7 : 8;
        } else if (j4 >= 100) {
            i10 = j4 < 1000 ? 3 : 4;
        } else if (j4 >= 10) {
            i10 = 2;
        }
        if (z9) {
            i10++;
        }
        Segment writableSegment$okio = buffer.writableSegment$okio(i10);
        byte[] bArr = writableSegment$okio.data;
        int i11 = writableSegment$okio.limit + i10;
        while (j4 != 0) {
            long j10 = 10;
            i11--;
            bArr[i11] = getHEX_DIGIT_BYTES()[(int) (j4 % j10)];
            j4 /= j10;
        }
        if (z9) {
            bArr[i11 - 1] = (byte) 45;
        }
        writableSegment$okio.limit += i10;
        buffer.setSize$okio(buffer.size() + i10);
        return buffer;
    }

    @g
    public static final Buffer commonWriteHexadecimalUnsignedLong(@g Buffer buffer, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j4 == 0) {
            return buffer.writeByte(48);
        }
        long j10 = (j4 >>> 1) | j4;
        long j11 = j10 | (j10 >>> 2);
        long j12 = j11 | (j11 >>> 4);
        long j13 = j12 | (j12 >>> 8);
        long j14 = j13 | (j13 >>> 16);
        long j15 = j14 | (j14 >>> 32);
        long j16 = j15 - ((j15 >>> 1) & 6148914691236517205L);
        long j17 = ((j16 >>> 2) & 3689348814741910323L) + (j16 & 3689348814741910323L);
        long j18 = ((j17 >>> 4) + j17) & 1085102592571150095L;
        long j19 = j18 + (j18 >>> 8);
        long j20 = j19 + (j19 >>> 16);
        int i4 = (int) ((((j20 & 63) + ((j20 >>> 32) & 63)) + 3) / 4);
        Segment writableSegment$okio = buffer.writableSegment$okio(i4);
        byte[] bArr = writableSegment$okio.data;
        int i10 = writableSegment$okio.limit;
        for (int i11 = (i10 + i4) - 1; i11 >= i10; i11--) {
            bArr[i11] = getHEX_DIGIT_BYTES()[(int) (15 & j4)];
            j4 >>>= 4;
        }
        writableSegment$okio.limit += i4;
        buffer.setSize$okio(buffer.size() + i4);
        return buffer;
    }

    @g
    public static final Buffer commonWriteInt(@g Buffer buffer, int i4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment writableSegment$okio = buffer.writableSegment$okio(4);
        byte[] bArr = writableSegment$okio.data;
        int i10 = writableSegment$okio.limit;
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((i4 >>> 24) & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i4 >>> 16) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i4 >>> 8) & 255);
        bArr[i13] = (byte) (i4 & 255);
        writableSegment$okio.limit = i13 + 1;
        buffer.setSize$okio(buffer.size() + 4);
        return buffer;
    }

    @g
    public static final Buffer commonWriteLong(@g Buffer buffer, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment writableSegment$okio = buffer.writableSegment$okio(8);
        byte[] bArr = writableSegment$okio.data;
        int i4 = writableSegment$okio.limit;
        int i10 = i4 + 1;
        bArr[i4] = (byte) ((j4 >>> 56) & 255);
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((j4 >>> 48) & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((j4 >>> 40) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((j4 >>> 32) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((j4 >>> 24) & 255);
        int i15 = i14 + 1;
        bArr[i14] = (byte) ((j4 >>> 16) & 255);
        int i16 = i15 + 1;
        bArr[i15] = (byte) ((j4 >>> 8) & 255);
        bArr[i16] = (byte) (j4 & 255);
        writableSegment$okio.limit = i16 + 1;
        buffer.setSize$okio(buffer.size() + 8);
        return buffer;
    }

    @g
    public static final Buffer commonWriteShort(@g Buffer buffer, int i4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment writableSegment$okio = buffer.writableSegment$okio(2);
        byte[] bArr = writableSegment$okio.data;
        int i10 = writableSegment$okio.limit;
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((i4 >>> 8) & 255);
        bArr[i11] = (byte) (i4 & 255);
        writableSegment$okio.limit = i11 + 1;
        buffer.setSize$okio(buffer.size() + 2);
        return buffer;
    }

    @g
    public static final Buffer commonWriteUtf8(@g Buffer buffer, @g String string, int i4, int i10) {
        char charAt;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(string, "string");
        if (i4 >= 0) {
            if (i10 >= i4) {
                if (!(i10 <= string.length())) {
                    throw new IllegalArgumentException(("endIndex > string.length: " + i10 + " > " + string.length()).toString());
                }
                while (i4 < i10) {
                    char charAt2 = string.charAt(i4);
                    if (charAt2 < 128) {
                        Segment writableSegment$okio = buffer.writableSegment$okio(1);
                        byte[] bArr = writableSegment$okio.data;
                        int i11 = writableSegment$okio.limit - i4;
                        int min = Math.min(i10, 8192 - i11);
                        int i12 = i4 + 1;
                        bArr[i4 + i11] = (byte) charAt2;
                        while (true) {
                            i4 = i12;
                            if (i4 >= min || (charAt = string.charAt(i4)) >= 128) {
                                break;
                            }
                            i12 = i4 + 1;
                            bArr[i4 + i11] = (byte) charAt;
                        }
                        int i13 = writableSegment$okio.limit;
                        int i14 = (i11 + i4) - i13;
                        writableSegment$okio.limit = i13 + i14;
                        buffer.setSize$okio(buffer.size() + i14);
                    } else {
                        if (charAt2 < 2048) {
                            Segment writableSegment$okio2 = buffer.writableSegment$okio(2);
                            byte[] bArr2 = writableSegment$okio2.data;
                            int i15 = writableSegment$okio2.limit;
                            bArr2[i15] = (byte) ((charAt2 >> 6) | 192);
                            bArr2[i15 + 1] = (byte) ((charAt2 & '?') | 128);
                            writableSegment$okio2.limit = i15 + 2;
                            buffer.setSize$okio(buffer.size() + 2);
                        } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                            int i16 = i4 + 1;
                            char charAt3 = i16 < i10 ? string.charAt(i16) : (char) 0;
                            if (charAt2 <= 56319) {
                                if (56320 <= charAt3 && charAt3 <= 57343) {
                                    int i17 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                                    Segment writableSegment$okio3 = buffer.writableSegment$okio(4);
                                    byte[] bArr3 = writableSegment$okio3.data;
                                    int i18 = writableSegment$okio3.limit;
                                    bArr3[i18] = (byte) ((i17 >> 18) | a0.A);
                                    bArr3[i18 + 1] = (byte) (((i17 >> 12) & 63) | 128);
                                    bArr3[i18 + 2] = (byte) (((i17 >> 6) & 63) | 128);
                                    bArr3[i18 + 3] = (byte) ((i17 & 63) | 128);
                                    writableSegment$okio3.limit = i18 + 4;
                                    buffer.setSize$okio(buffer.size() + 4);
                                    i4 += 2;
                                }
                            }
                            buffer.writeByte(63);
                            i4 = i16;
                        } else {
                            Segment writableSegment$okio4 = buffer.writableSegment$okio(3);
                            byte[] bArr4 = writableSegment$okio4.data;
                            int i19 = writableSegment$okio4.limit;
                            bArr4[i19] = (byte) ((charAt2 >> '\f') | 224);
                            bArr4[i19 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                            bArr4[i19 + 2] = (byte) ((charAt2 & '?') | 128);
                            writableSegment$okio4.limit = i19 + 3;
                            buffer.setSize$okio(buffer.size() + 3);
                        }
                        i4++;
                    }
                }
                return buffer;
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i10 + " < " + i4).toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("beginIndex < 0: ", Integer.valueOf(i4)).toString());
    }

    @g
    public static final Buffer commonWriteUtf8CodePoint(@g Buffer buffer, int i4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (i4 < 128) {
            buffer.writeByte(i4);
        } else if (i4 < 2048) {
            Segment writableSegment$okio = buffer.writableSegment$okio(2);
            byte[] bArr = writableSegment$okio.data;
            int i10 = writableSegment$okio.limit;
            bArr[i10] = (byte) ((i4 >> 6) | 192);
            bArr[i10 + 1] = (byte) ((i4 & 63) | 128);
            writableSegment$okio.limit = i10 + 2;
            buffer.setSize$okio(buffer.size() + 2);
        } else {
            boolean z9 = false;
            if (55296 <= i4 && i4 <= 57343) {
                z9 = true;
            }
            if (z9) {
                buffer.writeByte(63);
            } else if (i4 < 65536) {
                Segment writableSegment$okio2 = buffer.writableSegment$okio(3);
                byte[] bArr2 = writableSegment$okio2.data;
                int i11 = writableSegment$okio2.limit;
                bArr2[i11] = (byte) ((i4 >> 12) | 224);
                bArr2[i11 + 1] = (byte) (((i4 >> 6) & 63) | 128);
                bArr2[i11 + 2] = (byte) ((i4 & 63) | 128);
                writableSegment$okio2.limit = i11 + 3;
                buffer.setSize$okio(buffer.size() + 3);
            } else if (i4 <= 1114111) {
                Segment writableSegment$okio3 = buffer.writableSegment$okio(4);
                byte[] bArr3 = writableSegment$okio3.data;
                int i12 = writableSegment$okio3.limit;
                bArr3[i12] = (byte) ((i4 >> 18) | a0.A);
                bArr3[i12 + 1] = (byte) (((i4 >> 12) & 63) | 128);
                bArr3[i12 + 2] = (byte) (((i4 >> 6) & 63) | 128);
                bArr3[i12 + 3] = (byte) ((i4 & 63) | 128);
                writableSegment$okio3.limit = i12 + 4;
                buffer.setSize$okio(buffer.size() + 4);
            } else {
                throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected code point: 0x", _UtilKt.toHexString(i4)));
            }
        }
        return buffer;
    }

    @g
    public static final byte[] getHEX_DIGIT_BYTES() {
        return HEX_DIGIT_BYTES;
    }

    public static /* synthetic */ void getHEX_DIGIT_BYTES$annotations() {
    }

    public static final boolean rangeEquals(@g Segment segment, int i4, @g byte[] bytes, int i10, int i11) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        int i12 = segment.limit;
        byte[] bArr = segment.data;
        while (i10 < i11) {
            if (i4 == i12) {
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                byte[] bArr2 = segment.data;
                bArr = bArr2;
                i4 = segment.pos;
                i12 = segment.limit;
            }
            if (bArr[i4] != bytes[i10]) {
                return false;
            }
            i4++;
            i10++;
        }
        return true;
    }

    @g
    public static final String readUtf8Line(@g Buffer buffer, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j4 > 0) {
            long j10 = j4 - 1;
            if (buffer.getByte(j10) == ((byte) 13)) {
                String readUtf8 = buffer.readUtf8(j10);
                buffer.skip(2L);
                return readUtf8;
            }
        }
        String readUtf82 = buffer.readUtf8(j4);
        buffer.skip(1L);
        return readUtf82;
    }

    public static final <T> T seek(@g Buffer buffer, long j4, @g Function2<? super Segment, ? super Long, ? extends T> lambda) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(lambda, "lambda");
        Segment segment = buffer.head;
        if (segment == null) {
            return lambda.invoke(null, -1L);
        }
        if (buffer.size() - j4 < j4) {
            long size = buffer.size();
            while (size > j4) {
                segment = segment.prev;
                Intrinsics.checkNotNull(segment);
                size -= segment.limit - segment.pos;
            }
            return lambda.invoke(segment, Long.valueOf(size));
        }
        long j10 = 0;
        while (true) {
            long j11 = (segment.limit - segment.pos) + j10;
            if (j11 > j4) {
                return lambda.invoke(segment, Long.valueOf(j10));
            }
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
            j10 = j11;
        }
    }

    public static final int selectPrefix(@g Buffer buffer, @g Options options, boolean z9) {
        int i4;
        int i10;
        int i11;
        int i12;
        Segment segment;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        Segment segment2 = buffer.head;
        if (segment2 == null) {
            return z9 ? -2 : -1;
        }
        byte[] bArr = segment2.data;
        int i13 = segment2.pos;
        int i14 = segment2.limit;
        int[] trie$okio = options.getTrie$okio();
        Segment segment3 = segment2;
        int i15 = 0;
        int i16 = -1;
        loop0: while (true) {
            int i17 = i15 + 1;
            int i18 = trie$okio[i15];
            int i19 = i17 + 1;
            int i20 = trie$okio[i17];
            if (i20 != -1) {
                i16 = i20;
            }
            if (segment3 == null) {
                break;
            }
            if (i18 >= 0) {
                i4 = i13 + 1;
                int i21 = bArr[i13] & 255;
                int i22 = i19 + i18;
                while (i19 != i22) {
                    if (i21 == trie$okio[i19]) {
                        i10 = trie$okio[i19 + i18];
                        if (i4 == i14) {
                            segment3 = segment3.next;
                            Intrinsics.checkNotNull(segment3);
                            i4 = segment3.pos;
                            bArr = segment3.data;
                            i14 = segment3.limit;
                            if (segment3 == segment2) {
                                segment3 = null;
                            }
                        }
                    } else {
                        i19++;
                    }
                }
                return i16;
            }
            int i23 = i19 + (i18 * (-1));
            while (true) {
                int i24 = i13 + 1;
                int i25 = i19 + 1;
                if ((bArr[i13] & 255) != trie$okio[i19]) {
                    return i16;
                }
                boolean z10 = i25 == i23;
                if (i24 == i14) {
                    Intrinsics.checkNotNull(segment3);
                    Segment segment4 = segment3.next;
                    Intrinsics.checkNotNull(segment4);
                    i12 = segment4.pos;
                    byte[] bArr2 = segment4.data;
                    i11 = segment4.limit;
                    if (segment4 != segment2) {
                        segment = segment4;
                        bArr = bArr2;
                    } else if (!z10) {
                        break loop0;
                    } else {
                        bArr = bArr2;
                        segment = null;
                    }
                } else {
                    Segment segment5 = segment3;
                    i11 = i14;
                    i12 = i24;
                    segment = segment5;
                }
                if (z10) {
                    i10 = trie$okio[i25];
                    i4 = i12;
                    i14 = i11;
                    segment3 = segment;
                    break;
                }
                i13 = i12;
                i14 = i11;
                i19 = i25;
                segment3 = segment;
            }
            if (i10 >= 0) {
                return i10;
            }
            i15 = -i10;
            i13 = i4;
        }
        if (z9) {
            return -2;
        }
        return i16;
    }

    public static /* synthetic */ int selectPrefix$default(Buffer buffer, Options options, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        return selectPrefix(buffer, options, z9);
    }

    public static final int commonRead(@g Buffer buffer, @g byte[] sink, int i4, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        _UtilKt.checkOffsetAndCount(sink.length, i4, i10);
        Segment segment = buffer.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i10, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i11 = segment.pos;
        ArraysKt___ArraysJvmKt.copyInto(bArr, sink, i4, i11, i11 + min);
        segment.pos += min;
        buffer.setSize$okio(buffer.size() - min);
        if (segment.pos == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    @g
    public static final byte[] commonReadByteArray(@g Buffer buffer, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j4 >= 0 && j4 <= 2147483647L) {
            if (buffer.size() >= j4) {
                byte[] bArr = new byte[(int) j4];
                buffer.readFully(bArr);
                return bArr;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j4)).toString());
    }

    @g
    public static final ByteString commonReadByteString(@g Buffer buffer, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j4 >= 0 && j4 <= 2147483647L) {
            if (buffer.size() >= j4) {
                if (j4 >= 4096) {
                    ByteString snapshot = buffer.snapshot((int) j4);
                    buffer.skip(j4);
                    return snapshot;
                }
                return new ByteString(buffer.readByteArray(j4));
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j4)).toString());
    }

    @g
    public static final Buffer commonWrite(@g Buffer buffer, @g byte[] source) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        return buffer.write(source, 0, source.length);
    }

    @g
    public static final Buffer commonWrite(@g Buffer buffer, @g byte[] source, int i4, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        long j4 = i10;
        _UtilKt.checkOffsetAndCount(source.length, i4, j4);
        int i11 = i10 + i4;
        while (i4 < i11) {
            Segment writableSegment$okio = buffer.writableSegment$okio(1);
            int min = Math.min(i11 - i4, 8192 - writableSegment$okio.limit);
            int i12 = i4 + min;
            ArraysKt___ArraysJvmKt.copyInto(source, writableSegment$okio.data, writableSegment$okio.limit, i4, i12);
            writableSegment$okio.limit += min;
            i4 = i12;
        }
        buffer.setSize$okio(buffer.size() + j4);
        return buffer;
    }

    public static final void commonReadFully(@g Buffer buffer, @g Buffer sink, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (buffer.size() >= j4) {
            sink.write(buffer, j4);
        } else {
            sink.write(buffer, buffer.size());
            throw new EOFException();
        }
    }

    @g
    public static final ByteString commonSnapshot(@g Buffer buffer, int i4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (i4 == 0) {
            return ByteString.EMPTY;
        }
        _UtilKt.checkOffsetAndCount(buffer.size(), 0L, i4);
        Segment segment = buffer.head;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i11 < i4) {
            Intrinsics.checkNotNull(segment);
            int i13 = segment.limit;
            int i14 = segment.pos;
            if (i13 != i14) {
                i11 += i13 - i14;
                i12++;
                segment = segment.next;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i12];
        int[] iArr = new int[i12 * 2];
        Segment segment2 = buffer.head;
        int i15 = 0;
        while (i10 < i4) {
            Intrinsics.checkNotNull(segment2);
            bArr[i15] = segment2.data;
            i10 += segment2.limit - segment2.pos;
            iArr[i15] = Math.min(i10, i4);
            iArr[i15 + i12] = segment2.pos;
            segment2.shared = true;
            i15++;
            segment2 = segment2.next;
        }
        return new SegmentedByteString(bArr, iArr);
    }

    @g
    public static final Buffer commonWrite(@g Buffer buffer, @g Source source, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        while (j4 > 0) {
            long read = source.read(buffer, j4);
            if (read == -1) {
                throw new EOFException();
            }
            j4 -= read;
        }
        return buffer;
    }

    public static final long commonRead(@g Buffer buffer, @g Buffer sink, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j4 >= 0) {
            if (buffer.size() == 0) {
                return -1L;
            }
            if (j4 > buffer.size()) {
                j4 = buffer.size();
            }
            sink.write(buffer, j4);
            return j4;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j4)).toString());
    }

    public static final void commonWrite(@g Buffer buffer, @g Buffer source, long j4) {
        Segment segment;
        Segment segment2;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        if (source != buffer) {
            _UtilKt.checkOffsetAndCount(source.size(), 0L, j4);
            while (j4 > 0) {
                Segment segment3 = source.head;
                Intrinsics.checkNotNull(segment3);
                int i4 = segment3.limit;
                Intrinsics.checkNotNull(source.head);
                if (j4 < i4 - segment.pos) {
                    Segment segment4 = buffer.head;
                    if (segment4 != null) {
                        Intrinsics.checkNotNull(segment4);
                        segment2 = segment4.prev;
                    } else {
                        segment2 = null;
                    }
                    if (segment2 != null && segment2.owner) {
                        if ((segment2.limit + j4) - (segment2.shared ? 0 : segment2.pos) <= 8192) {
                            Segment segment5 = source.head;
                            Intrinsics.checkNotNull(segment5);
                            segment5.writeTo(segment2, (int) j4);
                            source.setSize$okio(source.size() - j4);
                            buffer.setSize$okio(buffer.size() + j4);
                            return;
                        }
                    }
                    Segment segment6 = source.head;
                    Intrinsics.checkNotNull(segment6);
                    source.head = segment6.split((int) j4);
                }
                Segment segment7 = source.head;
                Intrinsics.checkNotNull(segment7);
                long j10 = segment7.limit - segment7.pos;
                source.head = segment7.pop();
                Segment segment8 = buffer.head;
                if (segment8 == null) {
                    buffer.head = segment7;
                    segment7.prev = segment7;
                    segment7.next = segment7;
                } else {
                    Intrinsics.checkNotNull(segment8);
                    Segment segment9 = segment8.prev;
                    Intrinsics.checkNotNull(segment9);
                    segment9.push(segment7).compact();
                }
                source.setSize$okio(source.size() - j10);
                buffer.setSize$okio(buffer.size() + j10);
                j4 -= j10;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }

    public static final long commonIndexOf(@g Buffer buffer, @g ByteString bytes, long j4) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (bytes.size() > 0) {
            long j10 = 0;
            if (j4 >= 0) {
                Segment segment = buffer.head;
                if (segment == null) {
                    return -1L;
                }
                if (buffer.size() - j4 < j4) {
                    long size = buffer.size();
                    while (size > j4) {
                        segment = segment.prev;
                        Intrinsics.checkNotNull(segment);
                        size -= segment.limit - segment.pos;
                    }
                    byte[] internalArray$okio = bytes.internalArray$okio();
                    byte b10 = internalArray$okio[0];
                    int size2 = bytes.size();
                    long size3 = (buffer.size() - size2) + 1;
                    long j11 = size;
                    Segment segment2 = segment;
                    long j12 = j4;
                    while (j11 < size3) {
                        byte[] bArr = segment2.data;
                        Segment segment3 = segment2;
                        int min = (int) Math.min(segment2.limit, (segment2.pos + size3) - j11);
                        int i4 = (int) ((segment3.pos + j12) - j11);
                        if (i4 < min) {
                            while (true) {
                                int i10 = i4 + 1;
                                if (bArr[i4] == b10 && rangeEquals(segment3, i10, internalArray$okio, 1, size2)) {
                                    return (i4 - segment3.pos) + j11;
                                }
                                if (i10 >= min) {
                                    break;
                                }
                                i4 = i10;
                            }
                        }
                        j11 += segment3.limit - segment3.pos;
                        segment2 = segment3.next;
                        Intrinsics.checkNotNull(segment2);
                        j12 = j11;
                    }
                    return -1L;
                }
                while (true) {
                    long j13 = (segment.limit - segment.pos) + j10;
                    if (j13 > j4) {
                        break;
                    }
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j10 = j13;
                }
                byte[] internalArray$okio2 = bytes.internalArray$okio();
                byte b11 = internalArray$okio2[0];
                int size4 = bytes.size();
                long size5 = (buffer.size() - size4) + 1;
                long j14 = j10;
                Segment segment4 = segment;
                long j15 = j4;
                while (j14 < size5) {
                    byte[] bArr2 = segment4.data;
                    long j16 = size5;
                    int min2 = (int) Math.min(segment4.limit, (segment4.pos + size5) - j14);
                    int i11 = (int) ((segment4.pos + j15) - j14);
                    if (i11 < min2) {
                        while (true) {
                            int i12 = i11 + 1;
                            if (bArr2[i11] == b11 && rangeEquals(segment4, i12, internalArray$okio2, 1, size4)) {
                                return (i11 - segment4.pos) + j14;
                            }
                            if (i12 >= min2) {
                                break;
                            }
                            i11 = i12;
                        }
                    }
                    j14 += segment4.limit - segment4.pos;
                    segment4 = segment4.next;
                    Intrinsics.checkNotNull(segment4);
                    size5 = j16;
                    j15 = j14;
                }
                return -1L;
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("fromIndex < 0: ", Long.valueOf(j4)).toString());
        }
        throw new IllegalArgumentException("bytes is empty".toString());
    }
}
