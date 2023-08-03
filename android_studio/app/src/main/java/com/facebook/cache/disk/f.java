package com.facebook.cache.disk;

import androidx.annotation.VisibleForTesting;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.disk.d;
import com.facebook.common.file.FileUtils;
import com.facebook.common.internal.m;
import com.facebook.infer.annotation.Nullsafe;
import java.io.File;
import java.io.IOException;
import java.util.Collection;

/* compiled from: DynamicDefaultDiskStorage.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class f implements d {

    /* renamed from: f  reason: collision with root package name */
    private static final Class<?> f10927f = f.class;

    /* renamed from: a  reason: collision with root package name */
    private final int f10928a;

    /* renamed from: b  reason: collision with root package name */
    private final m<File> f10929b;

    /* renamed from: c  reason: collision with root package name */
    private final String f10930c;

    /* renamed from: d  reason: collision with root package name */
    private final CacheErrorLogger f10931d;
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    volatile a f10932e = new a(null, null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DynamicDefaultDiskStorage.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a {
        @r7.h

        /* renamed from: a  reason: collision with root package name */
        public final d f10933a;
        @r7.h

        /* renamed from: b  reason: collision with root package name */
        public final File f10934b;

        @VisibleForTesting
        a(@r7.h File rootDirectory, @r7.h d delegate) {
            this.f10933a = delegate;
            this.f10934b = rootDirectory;
        }
    }

    public f(int version, m<File> baseDirectoryPathSupplier, String baseDirectoryName, CacheErrorLogger cacheErrorLogger) {
        this.f10928a = version;
        this.f10931d = cacheErrorLogger;
        this.f10929b = baseDirectoryPathSupplier;
        this.f10930c = baseDirectoryName;
    }

    private void m() throws IOException {
        File file = new File(this.f10929b.get(), this.f10930c);
        l(file);
        this.f10932e = new a(file, new com.facebook.cache.disk.a(file, this.f10928a, this.f10931d));
    }

    private boolean p() {
        File file;
        a aVar = this.f10932e;
        return aVar.f10933a == null || (file = aVar.f10934b) == null || !file.exists();
    }

    @Override // com.facebook.cache.disk.d
    public void a() throws IOException {
        o().a();
    }

    @Override // com.facebook.cache.disk.d
    public d.a b() throws IOException {
        return o().b();
    }

    @Override // com.facebook.cache.disk.d
    public long c(String resourceId) throws IOException {
        return o().c(resourceId);
    }

    @Override // com.facebook.cache.disk.d
    public void d() {
        try {
            o().d();
        } catch (IOException e4) {
            p0.a.r(f10927f, "purgeUnexpectedResources", e4);
        }
    }

    @Override // com.facebook.cache.disk.d
    public boolean e(String resourceId, Object debugInfo) throws IOException {
        return o().e(resourceId, debugInfo);
    }

    @Override // com.facebook.cache.disk.d
    public long f(d.c entry) throws IOException {
        return o().f(entry);
    }

    @Override // com.facebook.cache.disk.d
    public d.InterfaceC0079d g(String resourceId, Object debugInfo) throws IOException {
        return o().g(resourceId, debugInfo);
    }

    @Override // com.facebook.cache.disk.d
    public boolean h(String resourceId, Object debugInfo) throws IOException {
        return o().h(resourceId, debugInfo);
    }

    @Override // com.facebook.cache.disk.d
    @r7.h
    public k0.a i(String resourceId, Object debugInfo) throws IOException {
        return o().i(resourceId, debugInfo);
    }

    @Override // com.facebook.cache.disk.d
    public boolean isEnabled() {
        try {
            return o().isEnabled();
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // com.facebook.cache.disk.d
    public boolean isExternal() {
        try {
            return o().isExternal();
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // com.facebook.cache.disk.d
    public Collection<d.c> j() throws IOException {
        return o().j();
    }

    @Override // com.facebook.cache.disk.d
    public String k() {
        try {
            return o().k();
        } catch (IOException unused) {
            return "";
        }
    }

    @VisibleForTesting
    void l(File rootDirectory) throws IOException {
        try {
            FileUtils.a(rootDirectory);
            p0.a.b(f10927f, "Created cache directory %s", rootDirectory.getAbsolutePath());
        } catch (FileUtils.CreateDirectoryException e4) {
            this.f10931d.a(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_DIR, f10927f, "createRootDirectoryIfNecessary", e4);
            throw e4;
        }
    }

    @VisibleForTesting
    void n() {
        if (this.f10932e.f10933a == null || this.f10932e.f10934b == null) {
            return;
        }
        n0.a.b(this.f10932e.f10934b);
    }

    @VisibleForTesting
    synchronized d o() throws IOException {
        if (p()) {
            n();
            m();
        }
        return (d) com.facebook.common.internal.j.i(this.f10932e.f10933a);
    }
}
