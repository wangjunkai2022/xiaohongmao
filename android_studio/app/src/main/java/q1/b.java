package q1;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import r7.h;

/* compiled from: BaseRequestListener.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b implements f {
    @Override // q1.f
    public void a(ImageRequest request, Object callerContext, String requestId, boolean isPrefetch) {
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public void b(String requestId, String producerName) {
    }

    @Override // q1.f
    public void c(ImageRequest request, String requestId, boolean isPrefetch) {
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public boolean d(String requestId) {
        return false;
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public void e(String requestId, String producerName, @h Map<String, String> extraMap) {
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public void f(String requestId, String producerName, Throwable t9, @h Map<String, String> extraMap) {
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public void g(String requestId, String producerName, @h Map<String, String> extraMap) {
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public void h(String requestId, String producerName, boolean successful) {
    }

    @Override // q1.f
    public void i(ImageRequest request, String requestId, Throwable throwable, boolean isPrefetch) {
    }

    @Override // com.facebook.imagepipeline.producers.v0
    public void j(String requestId, String producerName, String eventName) {
    }

    @Override // q1.f
    public void k(String requestId) {
    }
}
