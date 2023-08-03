package com.posthog.android;

import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedList;

/* compiled from: PayloadQueue.java */
/* loaded from: classes3.dex */
abstract class l implements Closeable {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PayloadQueue.java */
    /* loaded from: classes3.dex */
    public interface a {
        boolean d(InputStream inputStream, int i4) throws IOException;
    }

    /* compiled from: PayloadQueue.java */
    /* loaded from: classes3.dex */
    static class b extends l {

        /* renamed from: a  reason: collision with root package name */
        final LinkedList<byte[]> f47507a = new LinkedList<>();

        @Override // com.posthog.android.l
        void a(byte[] bArr) throws IOException {
            this.f47507a.add(bArr);
        }

        @Override // com.posthog.android.l
        void b(a aVar) throws IOException {
            for (int i4 = 0; i4 < this.f47507a.size(); i4++) {
                byte[] bArr = this.f47507a.get(i4);
                if (!aVar.d(new ByteArrayInputStream(bArr), bArr.length)) {
                    return;
                }
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // com.posthog.android.l
        void d(int i4) throws IOException {
            for (int i10 = 0; i10 < i4; i10++) {
                this.f47507a.remove();
            }
        }

        @Override // com.posthog.android.l
        int size() {
            return this.f47507a.size();
        }
    }

    /* compiled from: PayloadQueue.java */
    /* loaded from: classes3.dex */
    static class c extends l {

        /* renamed from: a  reason: collision with root package name */
        final t f47508a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(t tVar) {
            this.f47508a = tVar;
        }

        @Override // com.posthog.android.l
        void a(byte[] bArr) throws IOException {
            this.f47508a.a(bArr);
        }

        @Override // com.posthog.android.l
        void b(a aVar) throws IOException {
            this.f47508a.i(aVar);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f47508a.close();
        }

        @Override // com.posthog.android.l
        void d(int i4) throws IOException {
            try {
                this.f47508a.G(i4);
            } catch (ArrayIndexOutOfBoundsException e4) {
                throw new IOException(e4);
            }
        }

        @Override // com.posthog.android.l
        int size() {
            return this.f47508a.size();
        }
    }

    l() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(byte[] bArr) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(a aVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void d(int i4) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int size();
}
