package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: InitialObjectDescriptor.java */
/* loaded from: classes2.dex */
public class k extends l {

    /* renamed from: e  reason: collision with root package name */
    private int f36825e;

    /* renamed from: f  reason: collision with root package name */
    int f36826f;

    /* renamed from: g  reason: collision with root package name */
    int f36827g;

    /* renamed from: h  reason: collision with root package name */
    int f36828h;

    /* renamed from: i  reason: collision with root package name */
    String f36829i;

    /* renamed from: j  reason: collision with root package name */
    int f36830j;

    /* renamed from: k  reason: collision with root package name */
    int f36831k;

    /* renamed from: l  reason: collision with root package name */
    int f36832l;

    /* renamed from: m  reason: collision with root package name */
    int f36833m;

    /* renamed from: n  reason: collision with root package name */
    int f36834n;

    /* renamed from: o  reason: collision with root package name */
    List<h> f36835o = new ArrayList();

    /* renamed from: p  reason: collision with root package name */
    List<i> f36836p = new ArrayList();

    /* renamed from: q  reason: collision with root package name */
    List<b> f36837q = new ArrayList();

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        int i4;
        int i10 = com.coremedia.iso.g.i(byteBuffer);
        this.f36825e = (65472 & i10) >> 6;
        this.f36826f = (i10 & 63) >> 5;
        this.f36827g = (i10 & 31) >> 4;
        int a10 = a() - 2;
        if (this.f36826f == 1) {
            int p9 = com.coremedia.iso.g.p(byteBuffer);
            this.f36828h = p9;
            this.f36829i = com.coremedia.iso.g.h(byteBuffer, p9);
            i4 = a10 - (this.f36828h + 1);
        } else {
            this.f36830j = com.coremedia.iso.g.p(byteBuffer);
            this.f36831k = com.coremedia.iso.g.p(byteBuffer);
            this.f36832l = com.coremedia.iso.g.p(byteBuffer);
            this.f36833m = com.coremedia.iso.g.p(byteBuffer);
            this.f36834n = com.coremedia.iso.g.p(byteBuffer);
            i4 = a10 - 5;
            if (i4 > 2) {
                b a11 = m.a(-1, byteBuffer);
                i4 -= a11.a();
                if (a11 instanceof h) {
                    this.f36835o.add((h) a11);
                } else {
                    this.f36837q.add(a11);
                }
            }
        }
        if (i4 > 2) {
            b a12 = m.a(-1, byteBuffer);
            if (a12 instanceof i) {
                this.f36836p.add((i) a12);
            } else {
                this.f36837q.add(a12);
            }
        }
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        return "InitialObjectDescriptor{objectDescriptorId=" + this.f36825e + ", urlFlag=" + this.f36826f + ", includeInlineProfileLevelFlag=" + this.f36827g + ", urlLength=" + this.f36828h + ", urlString='" + this.f36829i + "', oDProfileLevelIndication=" + this.f36830j + ", sceneProfileLevelIndication=" + this.f36831k + ", audioProfileLevelIndication=" + this.f36832l + ", visualProfileLevelIndication=" + this.f36833m + ", graphicsProfileLevelIndication=" + this.f36834n + ", esDescriptors=" + this.f36835o + ", extensionDescriptors=" + this.f36836p + ", unknownDescriptors=" + this.f36837q + '}';
    }
}
