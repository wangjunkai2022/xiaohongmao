package com.facebook.imagepipeline.platform;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.MemoryFile;
import com.facebook.common.internal.j;
import com.facebook.common.internal.o;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder;
import com.facebook.infer.annotation.Nullsafe;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import r7.h;

@com.facebook.common.internal.e
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class GingerbreadPurgeableDecoder extends DalvikPurgeableDecoder {

    /* renamed from: d  reason: collision with root package name */
    private static Method f12821d;
    @h

    /* renamed from: c  reason: collision with root package name */
    private final t0.b f12822c = t0.c.j();

    private static MemoryFile j(com.facebook.common.references.a<PooledByteBuffer> bytesRef, int inputLength, @h byte[] suffix) throws IOException {
        OutputStream outputStream;
        r0.a aVar;
        com.facebook.common.memory.h hVar = null;
        OutputStream outputStream2 = null;
        MemoryFile memoryFile = new MemoryFile(null, (suffix == null ? 0 : suffix.length) + inputLength);
        memoryFile.allowPurging(false);
        try {
            com.facebook.common.memory.h hVar2 = new com.facebook.common.memory.h(bytesRef.q());
            try {
                aVar = new r0.a(hVar2, inputLength);
            } catch (Throwable th) {
                th = th;
                outputStream = null;
                aVar = null;
            }
            try {
                outputStream2 = memoryFile.getOutputStream();
                com.facebook.common.internal.b.a(aVar, outputStream2);
                if (suffix != null) {
                    memoryFile.writeBytes(suffix, 0, inputLength, suffix.length);
                }
                com.facebook.common.references.a.k(bytesRef);
                com.facebook.common.internal.c.b(hVar2);
                com.facebook.common.internal.c.b(aVar);
                com.facebook.common.internal.c.a(outputStream2, true);
                return memoryFile;
            } catch (Throwable th2) {
                th = th2;
                outputStream = outputStream2;
                hVar = hVar2;
                com.facebook.common.references.a.k(bytesRef);
                com.facebook.common.internal.c.b(hVar);
                com.facebook.common.internal.c.b(aVar);
                com.facebook.common.internal.c.a(outputStream, true);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
            aVar = null;
        }
    }

    private Bitmap k(com.facebook.common.references.a<PooledByteBuffer> bytesRef, int inputLength, @h byte[] suffix, BitmapFactory.Options options) {
        MemoryFile memoryFile = null;
        try {
            try {
                MemoryFile j4 = j(bytesRef, inputLength, suffix);
                try {
                    FileDescriptor m9 = m(j4);
                    t0.b bVar = this.f12822c;
                    if (bVar != null) {
                        Bitmap bitmap = (Bitmap) j.j(bVar.d(m9, null, options), "BitmapFactory returned null");
                        if (j4 != null) {
                            j4.close();
                        }
                        return bitmap;
                    }
                    throw new IllegalStateException("WebpBitmapFactory is null");
                } catch (IOException e4) {
                    e = e4;
                    memoryFile = j4;
                    throw o.d(e);
                } catch (Throwable th) {
                    th = th;
                    memoryFile = j4;
                    if (memoryFile != null) {
                        memoryFile.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e10) {
            e = e10;
        }
    }

    private synchronized Method l() {
        if (f12821d == null) {
            try {
                f12821d = MemoryFile.class.getDeclaredMethod("getFileDescriptor", new Class[0]);
            } catch (Exception e4) {
                throw o.d(e4);
            }
        }
        return f12821d;
    }

    private FileDescriptor m(MemoryFile memoryFile) {
        try {
            return (FileDescriptor) j.i(l().invoke(memoryFile, new Object[0]));
        } catch (Exception e4) {
            throw o.d(e4);
        }
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap e(com.facebook.common.references.a<PooledByteBuffer> bytesRef, BitmapFactory.Options options) {
        return k(bytesRef, bytesRef.q().size(), null, options);
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap f(com.facebook.common.references.a<PooledByteBuffer> bytesRef, int length, BitmapFactory.Options options) {
        return k(bytesRef, length, DalvikPurgeableDecoder.g(bytesRef, length) ? null : DalvikPurgeableDecoder.f12686b, options);
    }
}
