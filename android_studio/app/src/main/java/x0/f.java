package x0;

/* compiled from: ImageOriginRequestListener.java */
/* loaded from: classes.dex */
public class f extends q1.b {

    /* renamed from: a  reason: collision with root package name */
    private String f94471a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private final e f94472b;

    public f(String controllerId, @r7.h e imageOriginLister) {
        this.f94472b = imageOriginLister;
        l(controllerId);
    }

    @Override // q1.b, com.facebook.imagepipeline.producers.v0
    public void h(String requestId, String ultimateProducerName, boolean successful) {
        e eVar = this.f94472b;
        if (eVar != null) {
            eVar.a(this.f94471a, g.a(ultimateProducerName), successful, ultimateProducerName);
        }
    }

    public void l(String controllerId) {
        this.f94471a = controllerId;
    }
}
