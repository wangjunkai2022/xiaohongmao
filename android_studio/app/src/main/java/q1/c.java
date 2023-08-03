package q1;

import com.facebook.imagepipeline.producers.s0;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import r7.h;

/* compiled from: ForwardingRequestListener2.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c implements e {

    /* renamed from: b  reason: collision with root package name */
    private static final String f93123b = "ForwardingRequestListener2";

    /* renamed from: a  reason: collision with root package name */
    private final List<e> f93124a;

    public c(Set<e> requestListeners) {
        this.f93124a = new ArrayList(requestListeners.size());
        for (e eVar : requestListeners) {
            if (eVar != null) {
                this.f93124a.add(eVar);
            }
        }
    }

    private void m(String message, Throwable t9) {
        p0.a.v(f93123b, message, t9);
    }

    @Override // q1.e
    public void a(s0 producerContext) {
        int size = this.f93124a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93124a.get(i4).a(producerContext);
            } catch (Exception e4) {
                m("InternalListener exception in onRequestStart", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void b(s0 producerContext, String producerName, boolean successful) {
        int size = this.f93124a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93124a.get(i4).b(producerContext, producerName, successful);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerFinishWithSuccess", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void c(s0 producerContext, String producerName, @h Map<String, String> extraMap) {
        int size = this.f93124a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93124a.get(i4).c(producerContext, producerName, extraMap);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerFinishWithCancellation", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void d(s0 producerContext, String producerName) {
        int size = this.f93124a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93124a.get(i4).d(producerContext, producerName);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerStart", e4);
            }
        }
    }

    @Override // q1.e
    public void e(s0 producerContext) {
        int size = this.f93124a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93124a.get(i4).e(producerContext);
            } catch (Exception e4) {
                m("InternalListener exception in onRequestSuccess", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public boolean f(s0 producerContext, String producerName) {
        int size = this.f93124a.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (this.f93124a.get(i4).f(producerContext, producerName)) {
                return true;
            }
        }
        return false;
    }

    @Override // q1.e
    public void g(s0 producerContext) {
        int size = this.f93124a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93124a.get(i4).g(producerContext);
            } catch (Exception e4) {
                m("InternalListener exception in onRequestCancellation", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void h(s0 producerContext, String producerName, String producerEventName) {
        int size = this.f93124a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93124a.get(i4).h(producerContext, producerName, producerEventName);
            } catch (Exception e4) {
                m("InternalListener exception in onIntermediateChunkStart", e4);
            }
        }
    }

    @Override // q1.e
    public void i(s0 producerContext, Throwable throwable) {
        int size = this.f93124a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93124a.get(i4).i(producerContext, throwable);
            } catch (Exception e4) {
                m("InternalListener exception in onRequestFailure", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void j(s0 producerContext, String producerName, @h Map<String, String> extraMap) {
        int size = this.f93124a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93124a.get(i4).j(producerContext, producerName, extraMap);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerFinishWithSuccess", e4);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void k(s0 producerContext, String producerName, Throwable t9, @h Map<String, String> extraMap) {
        int size = this.f93124a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                this.f93124a.get(i4).k(producerContext, producerName, t9, extraMap);
            } catch (Exception e4) {
                m("InternalListener exception in onProducerFinishWithFailure", e4);
            }
        }
    }

    public void l(e requestListener) {
        this.f93124a.add(requestListener);
    }

    public c(e... requestListeners) {
        this.f93124a = new ArrayList(requestListeners.length);
        for (e eVar : requestListeners) {
            if (eVar != null) {
                this.f93124a.add(eVar);
            }
        }
    }
}
