package com.bumptech.glide.load.model.stream;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.model.h;
import com.bumptech.glide.load.model.m;
import com.bumptech.glide.load.model.n;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* compiled from: BaseGlideUrlLoader.java */
/* loaded from: classes.dex */
public abstract class a<Model> implements n<Model, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final n<com.bumptech.glide.load.model.g, InputStream> f9109a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final m<Model, com.bumptech.glide.load.model.g> f9110b;

    protected a(n<com.bumptech.glide.load.model.g, InputStream> nVar) {
        this(nVar, null);
    }

    private static List<com.bumptech.glide.load.c> c(Collection<String> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (String str : collection) {
            arrayList.add(new com.bumptech.glide.load.model.g(str));
        }
        return arrayList;
    }

    @Override // com.bumptech.glide.load.model.n
    @Nullable
    public n.a<InputStream> b(@NonNull Model model, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        m<Model, com.bumptech.glide.load.model.g> mVar = this.f9110b;
        com.bumptech.glide.load.model.g b10 = mVar != null ? mVar.b(model, i4, i10) : null;
        if (b10 == null) {
            String f10 = f(model, i4, i10, fVar);
            if (TextUtils.isEmpty(f10)) {
                return null;
            }
            com.bumptech.glide.load.model.g gVar = new com.bumptech.glide.load.model.g(f10, e(model, i4, i10, fVar));
            m<Model, com.bumptech.glide.load.model.g> mVar2 = this.f9110b;
            if (mVar2 != null) {
                mVar2.c(model, i4, i10, gVar);
            }
            b10 = gVar;
        }
        List<String> d4 = d(model, i4, i10, fVar);
        n.a<InputStream> b11 = this.f9109a.b(b10, i4, i10, fVar);
        return (b11 == null || d4.isEmpty()) ? b11 : new n.a<>(b11.f9077a, c(d4), b11.f9079c);
    }

    protected List<String> d(Model model, int i4, int i10, com.bumptech.glide.load.f fVar) {
        return Collections.emptyList();
    }

    @Nullable
    protected h e(Model model, int i4, int i10, com.bumptech.glide.load.f fVar) {
        return h.f9055b;
    }

    protected abstract String f(Model model, int i4, int i10, com.bumptech.glide.load.f fVar);

    protected a(n<com.bumptech.glide.load.model.g, InputStream> nVar, @Nullable m<Model, com.bumptech.glide.load.model.g> mVar) {
        this.f9109a = nVar;
        this.f9110b = mVar;
    }
}
