package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;

/* compiled from: ModelLoader.java */
/* loaded from: classes.dex */
public interface n<Model, Data> {

    /* compiled from: ModelLoader.java */
    /* loaded from: classes.dex */
    public static class a<Data> {

        /* renamed from: a  reason: collision with root package name */
        public final com.bumptech.glide.load.c f9077a;

        /* renamed from: b  reason: collision with root package name */
        public final List<com.bumptech.glide.load.c> f9078b;

        /* renamed from: c  reason: collision with root package name */
        public final com.bumptech.glide.load.data.d<Data> f9079c;

        public a(@NonNull com.bumptech.glide.load.c cVar, @NonNull com.bumptech.glide.load.data.d<Data> dVar) {
            this(cVar, Collections.emptyList(), dVar);
        }

        public a(@NonNull com.bumptech.glide.load.c cVar, @NonNull List<com.bumptech.glide.load.c> list, @NonNull com.bumptech.glide.load.data.d<Data> dVar) {
            this.f9077a = (com.bumptech.glide.load.c) com.bumptech.glide.util.m.d(cVar);
            this.f9078b = (List) com.bumptech.glide.util.m.d(list);
            this.f9079c = (com.bumptech.glide.load.data.d) com.bumptech.glide.util.m.d(dVar);
        }
    }

    boolean a(@NonNull Model model);

    @Nullable
    a<Data> b(@NonNull Model model, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar);
}
