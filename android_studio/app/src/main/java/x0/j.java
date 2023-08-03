package x0;

import android.graphics.Rect;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: ImagePerfMonitor.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class j implements k {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.drawee.backends.pipeline.e f94499a;

    /* renamed from: b  reason: collision with root package name */
    private final s0.c f94500b;

    /* renamed from: c  reason: collision with root package name */
    private final l f94501c = new l();

    /* renamed from: d  reason: collision with root package name */
    private final com.facebook.common.internal.m<Boolean> f94502d;
    @r7.h

    /* renamed from: e  reason: collision with root package name */
    private f f94503e;
    @r7.h

    /* renamed from: f  reason: collision with root package name */
    private e f94504f;
    @r7.h

    /* renamed from: g  reason: collision with root package name */
    private com.facebook.drawee.backends.pipeline.info.internal.d f94505g;
    @r7.h

    /* renamed from: h  reason: collision with root package name */
    private com.facebook.drawee.backends.pipeline.info.internal.a f94506h;
    @r7.h

    /* renamed from: i  reason: collision with root package name */
    private q1.d f94507i;
    @r7.h

    /* renamed from: j  reason: collision with root package name */
    private List<i> f94508j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f94509k;

    public j(s0.c monotonicClock, com.facebook.drawee.backends.pipeline.e pipelineDraweeController, com.facebook.common.internal.m<Boolean> asyncLogging) {
        this.f94500b = monotonicClock;
        this.f94499a = pipelineDraweeController;
        this.f94502d = asyncLogging;
    }

    private void i() {
        if (this.f94506h == null) {
            this.f94506h = new com.facebook.drawee.backends.pipeline.info.internal.a(this.f94500b, this.f94501c, this, this.f94502d, com.facebook.common.internal.n.f10985b);
        }
        if (this.f94505g == null) {
            this.f94505g = new com.facebook.drawee.backends.pipeline.info.internal.d(this.f94500b, this.f94501c);
        }
        if (this.f94504f == null) {
            this.f94504f = new com.facebook.drawee.backends.pipeline.info.internal.c(this.f94501c, this);
        }
        f fVar = this.f94503e;
        if (fVar == null) {
            this.f94503e = new f(this.f94499a.y(), this.f94504f);
        } else {
            fVar.l(this.f94499a.y());
        }
        if (this.f94507i == null) {
            this.f94507i = new q1.d(this.f94505g, this.f94503e);
        }
    }

    @Override // x0.k
    public void a(l state, int visibilityState) {
        List<i> list;
        if (!this.f94509k || (list = this.f94508j) == null || list.isEmpty()) {
            return;
        }
        h H = state.H();
        for (i iVar : this.f94508j) {
            iVar.b(H, visibilityState);
        }
    }

    @Override // x0.k
    public void b(l state, int imageLoadStatus) {
        List<i> list;
        state.u(imageLoadStatus);
        if (!this.f94509k || (list = this.f94508j) == null || list.isEmpty()) {
            return;
        }
        if (imageLoadStatus == 3) {
            d();
        }
        h H = state.H();
        for (i iVar : this.f94508j) {
            iVar.a(H, imageLoadStatus);
        }
    }

    public void c(@r7.h i imagePerfDataListener) {
        if (imagePerfDataListener == null) {
            return;
        }
        if (this.f94508j == null) {
            this.f94508j = new CopyOnWriteArrayList();
        }
        this.f94508j.add(imagePerfDataListener);
    }

    public void d() {
        z0.b f10 = this.f94499a.f();
        if (f10 == null || f10.d() == null) {
            return;
        }
        Rect bounds = f10.d().getBounds();
        this.f94501c.B(bounds.width());
        this.f94501c.A(bounds.height());
    }

    public void e() {
        List<i> list = this.f94508j;
        if (list != null) {
            list.clear();
        }
    }

    public void f(i imagePerfDataListener) {
        List<i> list = this.f94508j;
        if (list == null) {
            return;
        }
        list.remove(imagePerfDataListener);
    }

    public void g() {
        e();
        h(false);
        this.f94501c.e();
    }

    public void h(boolean enabled) {
        this.f94509k = enabled;
        if (enabled) {
            i();
            e eVar = this.f94504f;
            if (eVar != null) {
                this.f94499a.l0(eVar);
            }
            com.facebook.drawee.backends.pipeline.info.internal.a aVar = this.f94506h;
            if (aVar != null) {
                this.f94499a.o(aVar);
            }
            q1.d dVar = this.f94507i;
            if (dVar != null) {
                this.f94499a.m0(dVar);
                return;
            }
            return;
        }
        e eVar2 = this.f94504f;
        if (eVar2 != null) {
            this.f94499a.E0(eVar2);
        }
        com.facebook.drawee.backends.pipeline.info.internal.a aVar2 = this.f94506h;
        if (aVar2 != null) {
            this.f94499a.V(aVar2);
        }
        q1.d dVar2 = this.f94507i;
        if (dVar2 != null) {
            this.f94499a.F0(dVar2);
        }
    }

    public void j(AbstractDraweeControllerBuilder<com.facebook.drawee.backends.pipeline.f, ImageRequest, com.facebook.common.references.a<com.facebook.imagepipeline.image.c>, com.facebook.imagepipeline.image.g> pipelineDraweeControllerBuilder) {
        this.f94501c.m(pipelineDraweeControllerBuilder.t(), pipelineDraweeControllerBuilder.v(), pipelineDraweeControllerBuilder.s());
    }
}
