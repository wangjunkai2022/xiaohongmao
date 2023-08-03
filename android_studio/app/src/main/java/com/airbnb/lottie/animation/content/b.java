package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CompoundTrimPathContent.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private List<t> f4077a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(t tVar) {
        this.f4077a.add(tVar);
    }

    public void b(Path path) {
        for (int size = this.f4077a.size() - 1; size >= 0; size--) {
            com.airbnb.lottie.utils.h.b(path, this.f4077a.get(size));
        }
    }
}
