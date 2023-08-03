package okio;

import com.facebook.imagepipeline.producers.n;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Segment.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B/\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bJ\u0006\u0010\u000e\u001a\u00020\u000fJ\b\u0010\u0010\u001a\u0004\u0018\u00010\u0000J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0000J\u0006\u0010\u0013\u001a\u00020\u0000J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0006J\u0006\u0010\u0016\u001a\u00020\u0000J\u0016\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0006R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lokio/Segment;", "", "()V", "data", "", "pos", "", "limit", "shared", "", "owner", "([BIIZZ)V", "next", "prev", "compact", "", "pop", "push", "segment", "sharedCopy", "split", n.f13105s, "unsharedCopy", "writeTo", "sink", "Companion", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Segment {
    @g
    public static final Companion Companion = new Companion(null);
    public static final int SHARE_MINIMUM = 1024;
    public static final int SIZE = 8192;
    @JvmField
    @g
    public final byte[] data;
    @JvmField
    public int limit;
    @h
    @JvmField
    public Segment next;
    @JvmField
    public boolean owner;
    @JvmField
    public int pos;
    @h
    @JvmField
    public Segment prev;
    @JvmField
    public boolean shared;

    /* compiled from: Segment.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lokio/Segment$Companion;", "", "()V", "SHARE_MINIMUM", "", "SIZE", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public Segment() {
        this.data = new byte[8192];
        this.owner = true;
        this.shared = false;
    }

    public final void compact() {
        Segment segment = this.prev;
        int i4 = 0;
        if (segment != this) {
            Intrinsics.checkNotNull(segment);
            if (segment.owner) {
                int i10 = this.limit - this.pos;
                Segment segment2 = this.prev;
                Intrinsics.checkNotNull(segment2);
                int i11 = 8192 - segment2.limit;
                Segment segment3 = this.prev;
                Intrinsics.checkNotNull(segment3);
                if (!segment3.shared) {
                    Segment segment4 = this.prev;
                    Intrinsics.checkNotNull(segment4);
                    i4 = segment4.pos;
                }
                if (i10 > i11 + i4) {
                    return;
                }
                Segment segment5 = this.prev;
                Intrinsics.checkNotNull(segment5);
                writeTo(segment5, i10);
                pop();
                SegmentPool.recycle(this);
                return;
            }
            return;
        }
        throw new IllegalStateException("cannot compact".toString());
    }

    @h
    public final Segment pop() {
        Segment segment = this.next;
        if (segment == this) {
            segment = null;
        }
        Segment segment2 = this.prev;
        Intrinsics.checkNotNull(segment2);
        segment2.next = this.next;
        Segment segment3 = this.next;
        Intrinsics.checkNotNull(segment3);
        segment3.prev = this.prev;
        this.next = null;
        this.prev = null;
        return segment;
    }

    @g
    public final Segment push(@g Segment segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        segment.prev = this;
        segment.next = this.next;
        Segment segment2 = this.next;
        Intrinsics.checkNotNull(segment2);
        segment2.prev = segment;
        this.next = segment;
        return segment;
    }

    @g
    public final Segment sharedCopy() {
        this.shared = true;
        return new Segment(this.data, this.pos, this.limit, true, false);
    }

    @g
    public final Segment split(int i4) {
        Segment take;
        if (i4 > 0 && i4 <= this.limit - this.pos) {
            if (i4 >= 1024) {
                take = sharedCopy();
            } else {
                take = SegmentPool.take();
                byte[] bArr = this.data;
                byte[] bArr2 = take.data;
                int i10 = this.pos;
                ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr2, 0, i10, i10 + i4, 2, (Object) null);
            }
            take.limit = take.pos + i4;
            this.pos += i4;
            Segment segment = this.prev;
            Intrinsics.checkNotNull(segment);
            segment.push(take);
            return take;
        }
        throw new IllegalArgumentException("byteCount out of range".toString());
    }

    @g
    public final Segment unsharedCopy() {
        byte[] bArr = this.data;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
        return new Segment(copyOf, this.pos, this.limit, false, true);
    }

    public final void writeTo(@g Segment sink, int i4) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (sink.owner) {
            int i10 = sink.limit;
            if (i10 + i4 > 8192) {
                if (!sink.shared) {
                    int i11 = sink.pos;
                    if ((i10 + i4) - i11 <= 8192) {
                        byte[] bArr = sink.data;
                        ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr, 0, i11, i10, 2, (Object) null);
                        sink.limit -= sink.pos;
                        sink.pos = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            byte[] bArr2 = this.data;
            byte[] bArr3 = sink.data;
            int i12 = sink.limit;
            int i13 = this.pos;
            ArraysKt___ArraysJvmKt.copyInto(bArr2, bArr3, i12, i13, i13 + i4);
            sink.limit += i4;
            this.pos += i4;
            return;
        }
        throw new IllegalStateException("only owner can write".toString());
    }

    public Segment(@g byte[] data, int i4, int i10, boolean z9, boolean z10) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
        this.pos = i4;
        this.limit = i10;
        this.shared = z9;
        this.owner = z10;
    }
}
