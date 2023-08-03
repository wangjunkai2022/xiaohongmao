package com.facebook.drawee.controller;

import android.graphics.drawable.Animatable;
import android.util.Log;
import i1.h;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ForwardingControllerListener.java */
@s7.d
/* loaded from: classes.dex */
public class e<INFO> implements c<INFO>, h<INFO> {

    /* renamed from: b  reason: collision with root package name */
    private static final String f11386b = "FdingControllerListener";

    /* renamed from: a  reason: collision with root package name */
    private final List<c<? super INFO>> f11387a = new ArrayList(2);

    public static <INFO> e<INFO> i() {
        return new e<>();
    }

    public static <INFO> e<INFO> j(c<? super INFO> listener) {
        e<INFO> i4 = i();
        i4.g(listener);
        return i4;
    }

    public static <INFO> e<INFO> k(c<? super INFO> listener1, c<? super INFO> listener2) {
        e<INFO> i4 = i();
        i4.g(listener1);
        i4.g(listener2);
        return i4;
    }

    private synchronized void l(String message, Throwable t9) {
        Log.e(f11386b, message, t9);
    }

    @Override // com.facebook.drawee.controller.c
    public void a(String id, @r7.h INFO imageInfo) {
        int size = this.f11387a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                c<? super INFO> cVar = this.f11387a.get(i4);
                if (cVar != null) {
                    cVar.a(id, imageInfo);
                }
            } catch (Exception e4) {
                l("InternalListener exception in onIntermediateImageSet", e4);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public synchronized void b(String id, Throwable throwable) {
        int size = this.f11387a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                c<? super INFO> cVar = this.f11387a.get(i4);
                if (cVar != null) {
                    cVar.b(id, throwable);
                }
            } catch (Exception e4) {
                l("InternalListener exception in onFailure", e4);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public synchronized void c(String id) {
        int size = this.f11387a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                c<? super INFO> cVar = this.f11387a.get(i4);
                if (cVar != null) {
                    cVar.c(id);
                }
            } catch (Exception e4) {
                l("InternalListener exception in onRelease", e4);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public synchronized void d(String id, @r7.h INFO imageInfo, @r7.h Animatable animatable) {
        int size = this.f11387a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                c<? super INFO> cVar = this.f11387a.get(i4);
                if (cVar != null) {
                    cVar.d(id, imageInfo, animatable);
                }
            } catch (Exception e4) {
                l("InternalListener exception in onFinalImageSet", e4);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public synchronized void e(String id, Object callerContext) {
        int size = this.f11387a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                c<? super INFO> cVar = this.f11387a.get(i4);
                if (cVar != null) {
                    cVar.e(id, callerContext);
                }
            } catch (Exception e4) {
                l("InternalListener exception in onSubmit", e4);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public void f(String id, Throwable throwable) {
        int size = this.f11387a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                c<? super INFO> cVar = this.f11387a.get(i4);
                if (cVar != null) {
                    cVar.f(id, throwable);
                }
            } catch (Exception e4) {
                l("InternalListener exception in onIntermediateImageFailed", e4);
            }
        }
    }

    public synchronized void g(c<? super INFO> listener) {
        this.f11387a.add(listener);
    }

    public synchronized void h() {
        this.f11387a.clear();
    }

    public synchronized void m(c<? super INFO> listener) {
        int indexOf = this.f11387a.indexOf(listener);
        if (indexOf != -1) {
            this.f11387a.set(indexOf, null);
        }
    }

    @Override // i1.h
    public void p(String id, INFO imageInfo, i1.d dimensionsInfo) {
        int size = this.f11387a.size();
        for (int i4 = 0; i4 < size; i4++) {
            try {
                c<? super INFO> cVar = this.f11387a.get(i4);
                if (cVar instanceof h) {
                    ((h) cVar).p(id, imageInfo, dimensionsInfo);
                }
            } catch (Exception e4) {
                l("InternalListener exception in onImageDrawn", e4);
            }
        }
    }
}
