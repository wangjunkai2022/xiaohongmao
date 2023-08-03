package okhttp3.internal.cache;

import com.facebook.imagepipeline.producers.n;
import io.sentry.protocol.v;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;

/* compiled from: FaultHidingSink.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\b\u0010\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\b\u0010\r\u001a\u00020\u0007H\u0016J\b\u0010\u000e\u001a\u00020\u0007H\u0016J\u0018\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/cache/FaultHidingSink;", "Lokio/ForwardingSink;", "delegate", "Lokio/Sink;", "onException", "Lkotlin/Function1;", "Ljava/io/IOException;", "", "(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V", "hasErrors", "", "getOnException", "()Lkotlin/jvm/functions/Function1;", "close", "flush", "write", v.b.f83881a, "Lokio/Buffer;", n.f13105s, "", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public class FaultHidingSink extends ForwardingSink {
    private boolean hasErrors;
    @g
    private final Function1<IOException, Unit> onException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FaultHidingSink(@g Sink delegate, @g Function1<? super IOException, Unit> onException) {
        super(delegate);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(onException, "onException");
        this.onException = onException;
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.close();
        } catch (IOException e4) {
            this.hasErrors = true;
            this.onException.invoke(e4);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public void flush() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e4) {
            this.hasErrors = true;
            this.onException.invoke(e4);
        }
    }

    @g
    public final Function1<IOException, Unit> getOnException() {
        return this.onException;
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(@g Buffer source, long j4) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (this.hasErrors) {
            source.skip(j4);
            return;
        }
        try {
            super.write(source, j4);
        } catch (IOException e4) {
            this.hasErrors = true;
            this.onException.invoke(e4);
        }
    }
}
