package io.sentry;

import java.util.ArrayList;
import java.util.List;
import m8.a;

/* compiled from: PerformanceCollectionData.java */
@a.c
/* loaded from: classes4.dex */
public final class k2 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final List<r1> f83368a = new ArrayList();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final List<i> f83369b = new ArrayList();
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private r1 f83370c = null;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private i f83371d = null;

    public void a(@m8.h i iVar) {
        if (iVar != null) {
            this.f83371d = iVar;
        }
    }

    public void b(@m8.h r1 r1Var) {
        if (r1Var != null) {
            this.f83370c = r1Var;
        }
    }

    public void c() {
        r1 r1Var = this.f83370c;
        if (r1Var != null) {
            this.f83368a.add(r1Var);
            this.f83370c = null;
        }
        i iVar = this.f83371d;
        if (iVar != null) {
            this.f83369b.add(iVar);
            this.f83371d = null;
        }
    }

    @m8.g
    public List<i> d() {
        return this.f83369b;
    }

    @m8.g
    public List<r1> e() {
        return this.f83368a;
    }
}
