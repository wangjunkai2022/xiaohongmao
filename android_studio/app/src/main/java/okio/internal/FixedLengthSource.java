package okio.internal;

import com.facebook.imagepipeline.producers.n;
import com.qennnsad.aknkaksd.data.repository.f;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import okio.Buffer;
import okio.ForwardingSource;
import okio.Source;

/* compiled from: FixedLengthSource.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005H\u0016J\u0014\u0010\u000e\u001a\u00020\u000f*\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0005H\u0002R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lokio/internal/FixedLengthSource;", "Lokio/ForwardingSource;", "delegate", "Lokio/Source;", f.f47745b, "", "truncate", "", "(Lokio/Source;JZ)V", "bytesReceived", "read", "sink", "Lokio/Buffer;", n.f13105s, "truncateToSize", "", "newSize", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FixedLengthSource extends ForwardingSource {
    private long bytesReceived;
    private final long size;
    private final boolean truncate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FixedLengthSource(@g Source delegate, long j4, boolean z9) {
        super(delegate);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.size = j4;
        this.truncate = z9;
    }

    private final void truncateToSize(Buffer buffer, long j4) {
        Buffer buffer2 = new Buffer();
        buffer2.writeAll(buffer);
        buffer.write(buffer2, j4);
        buffer2.clear();
    }

    @Override // okio.ForwardingSource, okio.Source
    public long read(@g Buffer sink, long j4) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j10 = this.bytesReceived;
        long j11 = this.size;
        if (j10 > j11) {
            j4 = 0;
        } else if (this.truncate) {
            long j12 = j11 - j10;
            if (j12 == 0) {
                return -1L;
            }
            j4 = Math.min(j4, j12);
        }
        long read = super.read(sink, j4);
        int i4 = (read > (-1L) ? 1 : (read == (-1L) ? 0 : -1));
        if (i4 != 0) {
            this.bytesReceived += read;
        }
        long j13 = this.bytesReceived;
        long j14 = this.size;
        if ((j13 >= j14 || i4 != 0) && j13 <= j14) {
            return read;
        }
        if (read > 0 && j13 > j14) {
            truncateToSize(sink, sink.size() - (this.bytesReceived - this.size));
        }
        throw new IOException("expected " + this.size + " bytes but got " + this.bytesReceived);
    }
}
