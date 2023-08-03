package q1;

import android.os.SystemClock;
import android.util.Pair;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.HashMap;
import java.util.Map;
import r7.h;

/* compiled from: RequestLoggingListener.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class g implements f {

    /* renamed from: c  reason: collision with root package name */
    private static final String f93127c = "RequestLoggingListener";
    @s7.a("this")

    /* renamed from: a  reason: collision with root package name */
    private final Map<Pair<String, String>, Long> f93128a = new HashMap();
    @s7.a("this")

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Long> f93129b = new HashMap();

    private static long l(@h Long startTime, long endTime) {
        if (startTime != null) {
            return endTime - startTime.longValue();
        }
        return -1L;
    }

    private static long m() {
        return SystemClock.uptimeMillis();
    }

    @Override // q1.f
    public synchronized void a(ImageRequest request, Object callerContextObject, String requestId, boolean isPrefetch) {
        if (p0.a.R(2)) {
            p0.a.g0(f93127c, "time %d: onRequestSubmit: {requestId: %s, callerContext: %s, isPrefetch: %b}", Long.valueOf(m()), requestId, callerContextObject, Boolean.valueOf(isPrefetch));
            this.f93129b.put(requestId, Long.valueOf(m()));
        }
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public synchronized void b(String requestId, String producerName) {
        if (p0.a.R(2)) {
            Pair<String, String> create = Pair.create(requestId, producerName);
            long m9 = m();
            this.f93128a.put(create, Long.valueOf(m9));
            p0.a.f0(f93127c, "time %d: onProducerStart: {requestId: %s, producer: %s}", Long.valueOf(m9), requestId, producerName);
        }
    }

    @Override // q1.f
    public synchronized void c(ImageRequest request, String requestId, boolean isPrefetch) {
        if (p0.a.R(2)) {
            long m9 = m();
            p0.a.f0(f93127c, "time %d: onRequestSuccess: {requestId: %s, elapsedTime: %d ms}", Long.valueOf(m9), requestId, Long.valueOf(l(this.f93129b.remove(requestId), m9)));
        }
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public boolean d(String id) {
        return p0.a.R(2);
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public synchronized void e(String requestId, String producerName, @h Map<String, String> extraMap) {
        if (p0.a.R(2)) {
            Pair create = Pair.create(requestId, producerName);
            long m9 = m();
            p0.a.i0(f93127c, "time %d: onProducerFinishWithSuccess: {requestId: %s, producer: %s, elapsedTime: %d ms, extraMap: %s}", Long.valueOf(m9), requestId, producerName, Long.valueOf(l(this.f93128a.remove(create), m9)), extraMap);
        }
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public synchronized void f(String requestId, String producerName, Throwable throwable, @h Map<String, String> extraMap) {
        if (p0.a.R(5)) {
            Pair create = Pair.create(requestId, producerName);
            long m9 = m();
            p0.a.r0(f93127c, throwable, "time %d: onProducerFinishWithFailure: {requestId: %s, stage: %s, elapsedTime: %d ms, extraMap: %s, throwable: %s}", Long.valueOf(m9), requestId, producerName, Long.valueOf(l(this.f93128a.remove(create), m9)), extraMap, throwable.toString());
        }
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public synchronized void g(String requestId, String producerName, @h Map<String, String> extraMap) {
        if (p0.a.R(2)) {
            Pair create = Pair.create(requestId, producerName);
            long m9 = m();
            p0.a.i0(f93127c, "time %d: onProducerFinishWithCancellation: {requestId: %s, stage: %s, elapsedTime: %d ms, extraMap: %s}", Long.valueOf(m9), requestId, producerName, Long.valueOf(l(this.f93128a.remove(create), m9)), extraMap);
        }
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public synchronized void h(String requestId, String producerName, boolean successful) {
        if (p0.a.R(2)) {
            Pair create = Pair.create(requestId, producerName);
            long m9 = m();
            p0.a.i0(f93127c, "time %d: onUltimateProducerReached: {requestId: %s, producer: %s, elapsedTime: %d ms, success: %b}", Long.valueOf(m9), requestId, producerName, Long.valueOf(l(this.f93128a.remove(create), m9)), Boolean.valueOf(successful));
        }
    }

    @Override // q1.f
    public synchronized void i(ImageRequest request, String requestId, Throwable throwable, boolean isPrefetch) {
        if (p0.a.R(5)) {
            long m9 = m();
            p0.a.q0(f93127c, "time %d: onRequestFailure: {requestId: %s, elapsedTime: %d ms, throwable: %s}", Long.valueOf(m9), requestId, Long.valueOf(l(this.f93129b.remove(requestId), m9)), throwable.toString());
        }
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public synchronized void j(String requestId, String producerName, String producerEventName) {
        if (p0.a.R(2)) {
            p0.a.i0(f93127c, "time %d: onProducerEvent: {requestId: %s, stage: %s, eventName: %s; elapsedTime: %d ms}", Long.valueOf(m()), requestId, producerName, producerEventName, Long.valueOf(l(this.f93128a.get(Pair.create(requestId, producerName)), m())));
        }
    }

    @Override // q1.f
    public synchronized void k(String requestId) {
        if (p0.a.R(2)) {
            long m9 = m();
            p0.a.f0(f93127c, "time %d: onRequestCancellation: {requestId: %s, elapsedTime: %d ms}", Long.valueOf(m9), requestId, Long.valueOf(l(this.f93129b.remove(requestId), m9)));
        }
    }
}
