package com.google.mlkit.common.model;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.internal.mlkit_common.jc;
import com.google.android.gms.internal.mlkit_common.kc;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public class c {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f35749a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f35750b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Uri f35751c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f35752d;

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    /* loaded from: classes2.dex */
    public static class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f35753a = null;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private String f35754b = null;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Uri f35755c = null;

        /* renamed from: d  reason: collision with root package name */
        private boolean f35756d = false;

        @NonNull
        public c a() {
            String str = this.f35753a;
            boolean z9 = true;
            if ((str == null || this.f35754b != null || this.f35755c != null) && ((str != null || this.f35754b == null || this.f35755c != null) && (str != null || this.f35754b != null || this.f35755c == null))) {
                z9 = false;
            }
            u.b(z9, "Set one of filePath, assetFilePath and URI.");
            return new c(this.f35753a, this.f35754b, this.f35755c, this.f35756d, null);
        }

        @NonNull
        public a b(@NonNull String str) {
            u.h(str, "Model Source file path can not be empty");
            boolean z9 = false;
            if (this.f35754b == null && this.f35755c == null && !this.f35756d) {
                z9 = true;
            }
            u.b(z9, "A local model source is from absolute file path, asset file path or URI, you can only set one of them.");
            this.f35753a = str;
            return this;
        }

        @NonNull
        public a c(@NonNull String str) {
            u.h(str, "Manifest file path can not be empty");
            boolean z9 = false;
            if (this.f35754b == null && this.f35755c == null && (this.f35753a == null || this.f35756d)) {
                z9 = true;
            }
            u.b(z9, "A local model source is from absolute file path, asset file path or URI, you can only set one of them.");
            this.f35753a = str;
            this.f35756d = true;
            return this;
        }

        @NonNull
        public a d(@NonNull String str) {
            u.h(str, "Model Source file path can not be empty");
            boolean z9 = false;
            if (this.f35753a == null && this.f35755c == null && !this.f35756d) {
                z9 = true;
            }
            u.b(z9, "A local model source is from absolute file path, asset file path or URI, you can only set one of them.");
            this.f35754b = str;
            return this;
        }

        @NonNull
        public a e(@NonNull String str) {
            u.h(str, "Manifest file path can not be empty");
            boolean z9 = false;
            if (this.f35753a == null && this.f35755c == null && (this.f35754b == null || this.f35756d)) {
                z9 = true;
            }
            u.b(z9, "A local model source is from absolute file path, asset file path or URI, you can only set one of them.");
            this.f35754b = str;
            this.f35756d = true;
            return this;
        }

        @NonNull
        public a f(@NonNull Uri uri) {
            boolean z9 = false;
            if (this.f35753a == null && this.f35754b == null) {
                z9 = true;
            }
            u.b(z9, "A local model source is from absolute file path, asset file path or URI, you can only set one of them.");
            this.f35755c = uri;
            return this;
        }
    }

    /* synthetic */ c(String str, String str2, Uri uri, boolean z9, i iVar) {
        this.f35749a = str;
        this.f35750b = str2;
        this.f35751c = uri;
        this.f35752d = z9;
    }

    @Nullable
    @u2.a
    public String a() {
        return this.f35749a;
    }

    @Nullable
    @u2.a
    public String b() {
        return this.f35750b;
    }

    @Nullable
    @u2.a
    public Uri c() {
        return this.f35751c;
    }

    @u2.a
    public boolean d() {
        return this.f35752d;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            return s.b(this.f35749a, cVar.f35749a) && s.b(this.f35750b, cVar.f35750b) && s.b(this.f35751c, cVar.f35751c) && this.f35752d == cVar.f35752d;
        }
        return false;
    }

    public int hashCode() {
        return s.c(this.f35749a, this.f35750b, this.f35751c, Boolean.valueOf(this.f35752d));
    }

    @NonNull
    public String toString() {
        jc a10 = kc.a(this);
        a10.a("absoluteFilePath", this.f35749a);
        a10.a("assetFilePath", this.f35750b);
        a10.a("uri", this.f35751c);
        a10.b("isManifestFile", this.f35752d);
        return a10.toString();
    }
}
