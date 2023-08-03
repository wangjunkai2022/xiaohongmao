package x0;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Collection;

/* compiled from: ForwardingImagePerfDataListener.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class b implements i {

    /* renamed from: a  reason: collision with root package name */
    private final Collection<i> f94470a;

    public b(Collection<i> listeners) {
        this.f94470a = listeners;
    }

    @Override // x0.i
    public void a(h imagePerfData, int imageLoadStatus) {
        for (i iVar : this.f94470a) {
            iVar.a(imagePerfData, imageLoadStatus);
        }
    }

    @Override // x0.i
    public void b(h imagePerfData, int visibilityState) {
        for (i iVar : this.f94470a) {
            iVar.b(imagePerfData, visibilityState);
        }
    }
}
