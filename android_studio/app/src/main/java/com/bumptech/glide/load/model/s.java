package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.model.n;
import java.io.InputStream;

/* compiled from: ResourceLoader.java */
/* loaded from: classes.dex */
public class s<Data> implements n<Integer, Data> {

    /* renamed from: c  reason: collision with root package name */
    private static final String f9102c = "ResourceLoader";

    /* renamed from: a  reason: collision with root package name */
    private final n<Uri, Data> f9103a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f9104b;

    /* compiled from: ResourceLoader.java */
    /* loaded from: classes.dex */
    public static final class a implements o<Integer, AssetFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        private final Resources f9105a;

        public a(Resources resources) {
            this.f9105a = resources;
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        public n<Integer, AssetFileDescriptor> c(r rVar) {
            return new s(this.f9105a, rVar.d(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* compiled from: ResourceLoader.java */
    /* loaded from: classes.dex */
    public static class b implements o<Integer, ParcelFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        private final Resources f9106a;

        public b(Resources resources) {
            this.f9106a = resources;
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Integer, ParcelFileDescriptor> c(r rVar) {
            return new s(this.f9106a, rVar.d(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* compiled from: ResourceLoader.java */
    /* loaded from: classes.dex */
    public static class c implements o<Integer, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final Resources f9107a;

        public c(Resources resources) {
            this.f9107a = resources;
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Integer, InputStream> c(r rVar) {
            return new s(this.f9107a, rVar.d(Uri.class, InputStream.class));
        }
    }

    /* compiled from: ResourceLoader.java */
    /* loaded from: classes.dex */
    public static class d implements o<Integer, Uri> {

        /* renamed from: a  reason: collision with root package name */
        private final Resources f9108a;

        public d(Resources resources) {
            this.f9108a = resources;
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Integer, Uri> c(r rVar) {
            return new s(this.f9108a, v.c());
        }
    }

    public s(Resources resources, n<Uri, Data> nVar) {
        this.f9104b = resources;
        this.f9103a = nVar;
    }

    @Nullable
    private Uri d(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.f9104b.getResourcePackageName(num.intValue()) + com.fasterxml.jackson.core.e.f13819f + this.f9104b.getResourceTypeName(num.intValue()) + com.fasterxml.jackson.core.e.f13819f + this.f9104b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e4) {
            if (Log.isLoggable(f9102c, 5)) {
                Log.w(f9102c, "Received invalid resource id: " + num, e4);
                return null;
            }
            return null;
        }
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: c */
    public n.a<Data> b(@NonNull Integer num, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        Uri d4 = d(num);
        if (d4 == null) {
            return null;
        }
        return this.f9103a.b(d4, i4, i10, fVar);
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: e */
    public boolean a(@NonNull Integer num) {
        return true;
    }
}
