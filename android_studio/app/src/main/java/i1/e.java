package i1;

import android.util.Log;
import com.facebook.infer.annotation.Nullsafe;
import i1.c;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ForwardingControllerListener2.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class e<I> extends a<I> {

    /* renamed from: c  reason: collision with root package name */
    private static final String f69259c = "FwdControllerListener2";

    /* renamed from: b  reason: collision with root package name */
    private final List<c<I>> f69260b = new ArrayList(2);

    private synchronized void s(String message, Throwable t9) {
        Log.e(f69259c, message, t9);
    }

    public synchronized void A(c<I> listener) {
        int indexOf = this.f69260b.indexOf(listener);
        if (indexOf != -1) {
            this.f69260b.remove(indexOf);
        }
    }

    @Override // i1.a, i1.c
    public void b(String id, @r7.h I imageInfo, @r7.h c.a extraData) {
        int size = this.f69260b.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                c<I> cVar = this.f69260b.get(i4);
                if (cVar != null) {
                    cVar.b(id, imageInfo, extraData);
                }
            } catch (Exception e4) {
                s("ForwardingControllerListener2 exception in onFinalImageSet", e4);
            }
        }
    }

    @Override // i1.a, i1.c
    public void d(String id, @r7.h Throwable throwable, @r7.h c.a extras) {
        int size = this.f69260b.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                c<I> cVar = this.f69260b.get(i4);
                if (cVar != null) {
                    cVar.d(id, throwable, extras);
                }
            } catch (Exception e4) {
                s("ForwardingControllerListener2 exception in onFailure", e4);
            }
        }
    }

    @Override // i1.a, i1.c
    public void i(String id, @r7.h Object callerContext, @r7.h c.a extras) {
        int size = this.f69260b.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                c<I> cVar = this.f69260b.get(i4);
                if (cVar != null) {
                    cVar.i(id, callerContext, extras);
                }
            } catch (Exception e4) {
                s("ForwardingControllerListener2 exception in onSubmit", e4);
            }
        }
    }

    @Override // i1.a, i1.c
    public void k(String id, @r7.h c.a extras) {
        int size = this.f69260b.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                c<I> cVar = this.f69260b.get(i4);
                if (cVar != null) {
                    cVar.k(id, extras);
                }
            } catch (Exception e4) {
                s("ForwardingControllerListener2 exception in onRelease", e4);
            }
        }
    }

    public synchronized void r(c<I> listener) {
        this.f69260b.add(listener);
    }

    public synchronized void y() {
        this.f69260b.clear();
    }
}
