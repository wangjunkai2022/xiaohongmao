package com.coremedia.iso.boxes.mdat;

import com.coremedia.iso.boxes.d;
import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.j;
import com.googlecode.mp4parser.authoring.f;
import java.util.AbstractList;
import java.util.List;

/* compiled from: SampleList.java */
/* loaded from: classes.dex */
public class b extends AbstractList<f> {

    /* renamed from: a  reason: collision with root package name */
    List<f> f10250a;

    public b(f1 f1Var, com.coremedia.iso.f... fVarArr) {
        j parent = ((d) f1Var.getParent()).getParent();
        if (f1Var.getParent().h(com.coremedia.iso.boxes.fragment.a.class).isEmpty()) {
            if (fVarArr.length <= 0) {
                this.f10250a = new com.googlecode.mp4parser.authoring.samples.a(f1Var.L().C(), parent);
                return;
            }
            throw new RuntimeException("The TrackBox comes from a standard MP4 file. Only use the additionalFragments param if you are dealing with ( fragmented MP4 files AND additional fragments in standalone files )");
        }
        this.f10250a = new com.googlecode.mp4parser.authoring.samples.b(f1Var.L().C(), parent, fVarArr);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a */
    public f get(int i4) {
        return this.f10250a.get(i4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f10250a.size();
    }
}
