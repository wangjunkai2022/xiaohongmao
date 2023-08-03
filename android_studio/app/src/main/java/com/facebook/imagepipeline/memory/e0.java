package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;
import java.lang.reflect.InvocationTargetException;

/* compiled from: PoolFactory.java */
@s7.c
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class e0 {

    /* renamed from: a  reason: collision with root package name */
    private final d0 f12598a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private w f12599b;
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    private e f12600c;
    @r7.h

    /* renamed from: d  reason: collision with root package name */
    private w f12601d;
    @r7.h

    /* renamed from: e  reason: collision with root package name */
    private r f12602e;
    @r7.h

    /* renamed from: f  reason: collision with root package name */
    private w f12603f;
    @r7.h

    /* renamed from: g  reason: collision with root package name */
    private com.facebook.common.memory.g f12604g;
    @r7.h

    /* renamed from: h  reason: collision with root package name */
    private com.facebook.common.memory.j f12605h;
    @r7.h

    /* renamed from: i  reason: collision with root package name */
    private h0 f12606i;
    @r7.h

    /* renamed from: j  reason: collision with root package name */
    private com.facebook.common.memory.a f12607j;

    public e0(d0 config) {
        this.f12598a = (d0) com.facebook.common.internal.j.i(config);
    }

    @r7.h
    private w a() {
        if (this.f12599b == null) {
            try {
                this.f12599b = (w) AshmemMemoryChunkPool.class.getConstructor(com.facebook.common.memory.c.class, f0.class, g0.class).newInstance(this.f12598a.i(), this.f12598a.g(), this.f12598a.h());
            } catch (ClassNotFoundException unused) {
                this.f12599b = null;
            } catch (IllegalAccessException unused2) {
                this.f12599b = null;
            } catch (InstantiationException unused3) {
                this.f12599b = null;
            } catch (NoSuchMethodException unused4) {
                this.f12599b = null;
            } catch (InvocationTargetException unused5) {
                this.f12599b = null;
            }
        }
        return this.f12599b;
    }

    @r7.h
    private w f(int memoryChunkType) {
        if (memoryChunkType != 0) {
            if (memoryChunkType != 1) {
                if (memoryChunkType == 2) {
                    return a();
                }
                throw new IllegalArgumentException("Invalid MemoryChunkType");
            }
            return c();
        }
        return g();
    }

    public e b() {
        if (this.f12600c == null) {
            String e4 = this.f12598a.e();
            char c10 = 65535;
            switch (e4.hashCode()) {
                case -1868884870:
                    if (e4.equals(g.f12617a0)) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -1106578487:
                    if (e4.equals("legacy")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case -404562712:
                    if (e4.equals(g.f12620d0)) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -402149703:
                    if (e4.equals(g.f12619c0)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 95945896:
                    if (e4.equals(g.f12618b0)) {
                        c10 = 0;
                        break;
                    }
                    break;
            }
            if (c10 == 0) {
                this.f12600c = new p();
            } else if (c10 == 1) {
                this.f12600c = new q();
            } else if (c10 == 2) {
                this.f12600c = new t(this.f12598a.b(), this.f12598a.a(), a0.h(), this.f12598a.m() ? this.f12598a.i() : null);
            } else if (c10 != 3) {
                this.f12600c = new j(this.f12598a.i(), this.f12598a.c(), this.f12598a.d(), this.f12598a.l());
            } else {
                this.f12600c = new j(this.f12598a.i(), l.a(), this.f12598a.d(), this.f12598a.l());
            }
        }
        return this.f12600c;
    }

    @r7.h
    public w c() {
        if (this.f12601d == null) {
            try {
                this.f12601d = (w) BufferMemoryChunkPool.class.getConstructor(com.facebook.common.memory.c.class, f0.class, g0.class).newInstance(this.f12598a.i(), this.f12598a.g(), this.f12598a.h());
            } catch (ClassNotFoundException unused) {
                this.f12601d = null;
            } catch (IllegalAccessException unused2) {
                this.f12601d = null;
            } catch (InstantiationException unused3) {
                this.f12601d = null;
            } catch (NoSuchMethodException unused4) {
                this.f12601d = null;
            } catch (InvocationTargetException unused5) {
                this.f12601d = null;
            }
        }
        return this.f12601d;
    }

    public r d() {
        if (this.f12602e == null) {
            this.f12602e = new r(this.f12598a.i(), this.f12598a.f());
        }
        return this.f12602e;
    }

    public int e() {
        return this.f12598a.f().f12616g;
    }

    @r7.h
    public w g() {
        if (this.f12603f == null) {
            try {
                this.f12603f = (w) NativeMemoryChunkPool.class.getConstructor(com.facebook.common.memory.c.class, f0.class, g0.class).newInstance(this.f12598a.i(), this.f12598a.g(), this.f12598a.h());
            } catch (ClassNotFoundException e4) {
                p0.a.v("PoolFactory", "", e4);
                this.f12603f = null;
            } catch (IllegalAccessException e10) {
                p0.a.v("PoolFactory", "", e10);
                this.f12603f = null;
            } catch (InstantiationException e11) {
                p0.a.v("PoolFactory", "", e11);
                this.f12603f = null;
            } catch (NoSuchMethodException e12) {
                p0.a.v("PoolFactory", "", e12);
                this.f12603f = null;
            } catch (InvocationTargetException e13) {
                p0.a.v("PoolFactory", "", e13);
                this.f12603f = null;
            }
        }
        return this.f12603f;
    }

    public com.facebook.common.memory.g h() {
        return i(!com.facebook.imagepipeline.core.o.a() ? 1 : 0);
    }

    public com.facebook.common.memory.g i(int memoryChunkType) {
        if (this.f12604g == null) {
            w f10 = f(memoryChunkType);
            com.facebook.common.internal.j.j(f10, "failed to get pool for chunk type: " + memoryChunkType);
            this.f12604g = new z(f10, j());
        }
        return this.f12604g;
    }

    public com.facebook.common.memory.j j() {
        if (this.f12605h == null) {
            this.f12605h = new com.facebook.common.memory.j(l());
        }
        return this.f12605h;
    }

    public h0 k() {
        if (this.f12606i == null) {
            this.f12606i = new h0(this.f12598a.i(), this.f12598a.f());
        }
        return this.f12606i;
    }

    public com.facebook.common.memory.a l() {
        if (this.f12607j == null) {
            this.f12607j = new s(this.f12598a.i(), this.f12598a.j(), this.f12598a.k());
        }
        return this.f12607j;
    }
}
