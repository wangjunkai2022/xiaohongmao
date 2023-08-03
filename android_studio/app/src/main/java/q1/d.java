package q1;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import r7.h;

/* compiled from: ForwardingRequestListener.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d implements f {

    /* renamed from: b  reason: collision with root package name */
    private static final String f93125b = "ForwardingRequestListener";

    /* renamed from: a  reason: collision with root package name */
    private final List<f> f93126a;

    public d(Set<f> requestListeners) {
        this.f93126a = new ArrayList(requestListeners.size());
        for (f fVar : requestListeners) {
            if (fVar != null) {
                this.f93126a.add(fVar);
            }
        }
    }

    private void m(String message, Throwable t9) {
        p0.a.v(f93125b, message, t9);
    }

    @Override // q1.f
    public void a(ImageRequest request, Object callerContext, String requestId, boolean isPrefetch) {
        int size = this.f93126a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93126a.get(i4).a(request, callerContext, requestId, isPrefetch);
            } catch (Exception e4) {
                m("InternalListener exception in onRequestStart", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public void b(String requestId, String producerName) {
        int size = this.f93126a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93126a.get(i4).b(requestId, producerName);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerStart", e4);
            }
        }
    }

    @Override // q1.f
    public void c(ImageRequest request, String requestId, boolean isPrefetch) {
        int size = this.f93126a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93126a.get(i4).c(request, requestId, isPrefetch);
            } catch (Exception e4) {
                m("InternalListener exception in onRequestSuccess", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public boolean d(String id) {
        int size = this.f93126a.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (this.f93126a.get(i4).d(id)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public void e(String requestId, String producerName, @h Map<String, String> extraMap) {
        int size = this.f93126a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93126a.get(i4).e(requestId, producerName, extraMap);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerFinishWithSuccess", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public void f(String requestId, String producerName, Throwable t9, @h Map<String, String> extraMap) {
        int size = this.f93126a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93126a.get(i4).f(requestId, producerName, t9, extraMap);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerFinishWithFailure", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public void g(String requestId, String producerName, @h Map<String, String> extraMap) {
        int size = this.f93126a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93126a.get(i4).g(requestId, producerName, extraMap);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerFinishWithCancellation", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public void h(String requestId, String producerName, boolean successful) {
        int size = this.f93126a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93126a.get(i4).h(requestId, producerName, successful);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerFinishWithSuccess", e4);
            }
        }
    }

    @Override // q1.f
    public void i(ImageRequest request, String requestId, Throwable throwable, boolean isPrefetch) {
        int size = this.f93126a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93126a.get(i4).i(request, requestId, throwable, isPrefetch);
            } catch (Exception e4) {
                m("InternalListener exception in onRequestFailure", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public void j(String requestId, String producerName, String producerEventName) {
        int size = this.f93126a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93126a.get(i4).j(requestId, producerName, producerEventName);
            } catch (Exception e4) {
                m("InternalListener exception in onIntermediateChunkStart", e4);
            }
        }
    }

    @Override // q1.f
    public void k(String requestId) {
        int size = this.f93126a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93126a.get(i4).k(requestId);
            } catch (Exception e4) {
                m("InternalListener exception in onRequestCancellation", e4);
            }
        }
    }

    public void l(f requestListener) {
        this.f93126a.add(requestListener);
    }

    public d(f... requestListeners) {
        this.f93126a = new ArrayList(requestListeners.length);
        for (f fVar : requestListeners) {
            if (fVar != null) {
                this.f93126a.add(fVar);
            }
        }
    }
}
