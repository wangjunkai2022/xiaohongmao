package m1;

import com.facebook.common.references.SharedReference;
import r7.h;

/* compiled from: CloseableReferenceLeakTracker.java */
/* loaded from: classes.dex */
public interface a {

    /* compiled from: CloseableReferenceLeakTracker.java */
    /* renamed from: m1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0772a {
        void a(SharedReference<Object> reference, @h Throwable stacktrace);
    }

    void a(SharedReference<Object> reference, @h Throwable stacktrace);

    void b(@h InterfaceC0772a listener);

    boolean c();
}
