package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import com.airbnb.lottie.model.content.Mask;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MaskKeyframeAnimation.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final List<a<com.airbnb.lottie.model.content.h, Path>> f4214a;

    /* renamed from: b  reason: collision with root package name */
    private final List<a<Integer, Integer>> f4215b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Mask> f4216c;

    public g(List<Mask> list) {
        this.f4216c = list;
        this.f4214a = new ArrayList(list.size());
        this.f4215b = new ArrayList(list.size());
        for (int i4 = 0; i4 < list.size(); i4++) {
            this.f4214a.add(list.get(i4).b().a());
            this.f4215b.add(list.get(i4).c().a());
        }
    }

    public List<a<com.airbnb.lottie.model.content.h, Path>> a() {
        return this.f4214a;
    }

    public List<Mask> b() {
        return this.f4216c;
    }

    public List<a<Integer, Integer>> c() {
        return this.f4215b;
    }
}
