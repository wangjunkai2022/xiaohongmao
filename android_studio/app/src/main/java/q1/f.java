package q1;

import com.facebook.imagepipeline.producers.v0;
import com.facebook.imagepipeline.request.ImageRequest;

/* compiled from: RequestListener.java */
/* loaded from: classes.dex */
public interface f extends v0 {
    void a(ImageRequest request, Object callerContext, String requestId, boolean isPrefetch);

    void c(ImageRequest request, String requestId, boolean isPrefetch);

    void i(ImageRequest request, String requestId, Throwable throwable, boolean isPrefetch);

    void k(String requestId);
}
