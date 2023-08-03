package com.facebook.drawee.backends.pipeline;

import com.facebook.common.internal.ImmutableList;
import com.facebook.common.internal.j;
import com.facebook.common.internal.m;
import com.facebook.common.internal.n;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DraweeConfig.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class c {
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<n1.a> f11109a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private final h f11110b;

    /* renamed from: c  reason: collision with root package name */
    private final m<Boolean> f11111c;
    @r7.h

    /* renamed from: d  reason: collision with root package name */
    private final x0.i f11112d;

    /* compiled from: DraweeConfig.java */
    /* loaded from: classes.dex */
    public static class b {
        @r7.h

        /* renamed from: a  reason: collision with root package name */
        private List<n1.a> f11113a;
        @r7.h

        /* renamed from: b  reason: collision with root package name */
        private m<Boolean> f11114b;
        @r7.h

        /* renamed from: c  reason: collision with root package name */
        private h f11115c;
        @r7.h

        /* renamed from: d  reason: collision with root package name */
        private x0.i f11116d;

        public b e(n1.a factory) {
            if (this.f11113a == null) {
                this.f11113a = new ArrayList();
            }
            this.f11113a.add(factory);
            return this;
        }

        public c f() {
            return new c(this);
        }

        public b g(m<Boolean> debugOverlayEnabledSupplier) {
            j.i(debugOverlayEnabledSupplier);
            this.f11114b = debugOverlayEnabledSupplier;
            return this;
        }

        public b h(boolean drawDebugOverlay) {
            return g(n.a(Boolean.valueOf(drawDebugOverlay)));
        }

        public b i(@r7.h x0.i imagePerfDataListener) {
            this.f11116d = imagePerfDataListener;
            return this;
        }

        public b j(h factory) {
            this.f11115c = factory;
            return this;
        }
    }

    public static b e() {
        return new b();
    }

    @r7.h
    public ImmutableList<n1.a> a() {
        return this.f11109a;
    }

    public m<Boolean> b() {
        return this.f11111c;
    }

    @r7.h
    public x0.i c() {
        return this.f11112d;
    }

    @r7.h
    public h d() {
        return this.f11110b;
    }

    private c(b builder) {
        m<Boolean> a10;
        this.f11109a = builder.f11113a != null ? ImmutableList.copyOf(builder.f11113a) : null;
        if (builder.f11114b != null) {
            a10 = builder.f11114b;
        } else {
            a10 = n.a(Boolean.FALSE);
        }
        this.f11111c = a10;
        this.f11110b = builder.f11115c;
        this.f11112d = builder.f11116d;
    }
}
