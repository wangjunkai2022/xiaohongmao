package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.cache.a;
import java.io.File;

/* compiled from: DataCacheWriter.java */
/* loaded from: classes.dex */
class e<DataType> implements a.b {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.a<DataType> f8750a;

    /* renamed from: b  reason: collision with root package name */
    private final DataType f8751b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.f f8752c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(com.bumptech.glide.load.a<DataType> aVar, DataType datatype, com.bumptech.glide.load.f fVar) {
        this.f8750a = aVar;
        this.f8751b = datatype;
        this.f8752c = fVar;
    }

    @Override // com.bumptech.glide.load.engine.cache.a.b
    public boolean a(@NonNull File file) {
        return this.f8750a.a(this.f8751b, file, this.f8752c);
    }
}
