package com.googlecode.mp4parser.authoring;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: AbstractTrack.java */
/* loaded from: classes2.dex */
public abstract class a implements h {

    /* renamed from: a  reason: collision with root package name */
    String f35987a;

    /* renamed from: b  reason: collision with root package name */
    List<c> f35988b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> f35989c = new HashMap();

    public a(String str) {
        this.f35987a = str;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<c> T() {
        return this.f35988b;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> V() {
        return this.f35989c;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        long j4 = 0;
        for (long j10 : c0()) {
            j4 += j10;
        }
        return j4;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return this.f35987a;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return null;
    }
}
