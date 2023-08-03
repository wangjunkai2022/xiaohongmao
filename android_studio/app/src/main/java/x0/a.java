package x0;

import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* compiled from: ForwardingImageOriginListener.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class a implements e {

    /* renamed from: b  reason: collision with root package name */
    private static final String f94468b = "ForwardingImageOriginListener";

    /* renamed from: a  reason: collision with root package name */
    private final List<e> f94469a;

    public a(Set<e> imageOriginListeners) {
        this.f94469a = new ArrayList(imageOriginListeners);
    }

    @Override // x0.e
    public synchronized void a(String controllerId, int imageOrigin, boolean successful, @r7.h String ultimateProducerName) {
        int size = this.f94469a.size();
        for (int i4 = 0; i4 < size; i4++) {
            e eVar = this.f94469a.get(i4);
            if (eVar != null) {
                try {
                    eVar.a(controllerId, imageOrigin, successful, ultimateProducerName);
                } catch (Exception e4) {
                    p0.a.v(f94468b, "InternalListener exception in onImageLoaded", e4);
                }
            }
        }
    }

    public synchronized void b(e listener) {
        this.f94469a.add(listener);
    }

    public synchronized void c(e listener) {
        this.f94469a.remove(listener);
    }

    public a(e... imageOriginListeners) {
        ArrayList arrayList = new ArrayList(imageOriginListeners.length);
        this.f94469a = arrayList;
        Collections.addAll(arrayList, imageOriginListeners);
    }
}
