package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import com.facebook.imagepipeline.producers.n;
import com.google.android.exoplayer2.i;
import io.sentry.protocol.v;
import java.io.IOException;
import java.io.InterruptedIOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Throttler.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u001d\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\fJ$\u0010\u0006\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0004H\u0007J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011J\u0015\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\u0013J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\f\u0010\u0016\u001a\u00020\u0004*\u00020\u0004H\u0002J\f\u0010\u0017\u001a\u00020\u0004*\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lokio/Throttler;", "", "()V", "allocatedUntil", "", "(J)V", "bytesPerSecond", "maxByteCount", "waitByteCount", "byteCountOrWaitNanos", "now", n.f13105s, "byteCountOrWaitNanos$okio", "", "sink", "Lokio/Sink;", v.b.f83881a, "Lokio/Source;", "take", "take$okio", "waitNanos", "nanosToWait", "bytesToNanos", "nanosToBytes", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Throttler {
    private long allocatedUntil;
    private long bytesPerSecond;
    private long maxByteCount;
    private long waitByteCount;

    public Throttler(long j4) {
        this.allocatedUntil = j4;
        this.waitByteCount = 8192L;
        this.maxByteCount = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
    }

    public static /* synthetic */ void bytesPerSecond$default(Throttler throttler, long j4, long j10, long j11, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            j10 = throttler.waitByteCount;
        }
        long j12 = j10;
        if ((i4 & 4) != 0) {
            j11 = throttler.maxByteCount;
        }
        throttler.bytesPerSecond(j4, j12, j11);
    }

    private final long bytesToNanos(long j4) {
        return (j4 * i.f23681j) / this.bytesPerSecond;
    }

    private final long nanosToBytes(long j4) {
        return (j4 * this.bytesPerSecond) / i.f23681j;
    }

    private final void waitNanos(long j4) {
        long j10 = j4 / 1000000;
        wait(j10, (int) (j4 - (1000000 * j10)));
    }

    public final long byteCountOrWaitNanos$okio(long j4, long j10) {
        if (this.bytesPerSecond == 0) {
            return j10;
        }
        long max = Math.max(this.allocatedUntil - j4, 0L);
        long nanosToBytes = this.maxByteCount - nanosToBytes(max);
        if (nanosToBytes >= j10) {
            this.allocatedUntil = j4 + max + bytesToNanos(j10);
            return j10;
        }
        long j11 = this.waitByteCount;
        if (nanosToBytes >= j11) {
            this.allocatedUntil = j4 + bytesToNanos(this.maxByteCount);
            return nanosToBytes;
        }
        long min = Math.min(j11, j10);
        long bytesToNanos = max + bytesToNanos(min - this.maxByteCount);
        if (bytesToNanos == 0) {
            this.allocatedUntil = j4 + bytesToNanos(this.maxByteCount);
            return min;
        }
        return -bytesToNanos;
    }

    @JvmOverloads
    public final void bytesPerSecond(long j4) {
        bytesPerSecond$default(this, j4, 0L, 0L, 6, null);
    }

    @JvmOverloads
    public final void bytesPerSecond(long j4, long j10) {
        bytesPerSecond$default(this, j4, j10, 0L, 4, null);
    }

    @JvmOverloads
    public final void bytesPerSecond(long j4, long j10, long j11) {
        synchronized (this) {
            if (!(j4 >= 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (!(j10 > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (j11 >= j10) {
                this.bytesPerSecond = j4;
                this.waitByteCount = j10;
                this.maxByteCount = j11;
                notifyAll();
                Unit unit = Unit.INSTANCE;
            } else {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        }
    }

    @g
    public final Sink sink(@g final Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return new ForwardingSink(sink) { // from class: okio.Throttler$sink$1
            final /* synthetic */ Sink $sink;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(sink);
                this.$sink = sink;
            }

            @Override // okio.ForwardingSink, okio.Sink
            public void write(@g Buffer source, long j4) throws IOException {
                Intrinsics.checkNotNullParameter(source, "source");
                while (j4 > 0) {
                    try {
                        long take$okio = Throttler.this.take$okio(j4);
                        super.write(source, take$okio);
                        j4 -= take$okio;
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException("interrupted");
                    }
                }
            }
        };
    }

    @g
    public final Source source(@g final Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return new ForwardingSource(source) { // from class: okio.Throttler$source$1
            final /* synthetic */ Source $source;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(source);
                this.$source = source;
            }

            @Override // okio.ForwardingSource, okio.Source
            public long read(@g Buffer sink, long j4) {
                Intrinsics.checkNotNullParameter(sink, "sink");
                try {
                    return super.read(sink, Throttler.this.take$okio(j4));
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new InterruptedIOException("interrupted");
                }
            }
        };
    }

    public final long take$okio(long j4) {
        long byteCountOrWaitNanos$okio;
        if (j4 > 0) {
            synchronized (this) {
                while (true) {
                    byteCountOrWaitNanos$okio = byteCountOrWaitNanos$okio(System.nanoTime(), j4);
                    if (byteCountOrWaitNanos$okio < 0) {
                        waitNanos(-byteCountOrWaitNanos$okio);
                    }
                }
            }
            return byteCountOrWaitNanos$okio;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public Throttler() {
        this(System.nanoTime());
    }
}
