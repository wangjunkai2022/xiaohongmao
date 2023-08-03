package com.google.mlkit.nl.languageid.bundled.internal;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.u;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.nl.languageid.IdentifiedLanguage;
import io.sentry.instrumentation.file.h;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.mlkit:language-id@@17.0.4 */
/* loaded from: classes2.dex */
public class ThickLanguageIdentifier implements com.google.mlkit.nl.languageid.internal.b {

    /* renamed from: c  reason: collision with root package name */
    private static boolean f35930c;

    /* renamed from: a  reason: collision with root package name */
    private final Context f35931a;

    /* renamed from: b  reason: collision with root package name */
    private long f35932b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ThickLanguageIdentifier(Context context, com.google.mlkit.nl.languageid.b bVar) {
        this.f35931a = context;
    }

    @VisibleForTesting
    @WorkerThread
    public static synchronized void c() throws MlKitException {
        synchronized (ThickLanguageIdentifier.class) {
            if (f35930c) {
                return;
            }
            try {
                System.loadLibrary("language_id_l2c_jni");
                f35930c = true;
            } catch (UnsatisfiedLinkError e4) {
                throw new MlKitException("Couldn't load language identification library.", 13, e4);
            }
        }
    }

    private native void nativeDestroy(long j4);

    private native IdentifiedLanguage[] nativeIdentifyPossibleLanguages(long j4, byte[] bArr, float f10);

    private native long nativeInitFromBuffer(MappedByteBuffer mappedByteBuffer, long j4);

    @Override // com.google.mlkit.nl.languageid.internal.b
    @NonNull
    @WorkerThread
    public final List a(@NonNull String str, float f10) {
        u.q(this.f35932b != 0);
        IdentifiedLanguage[] nativeIdentifyPossibleLanguages = nativeIdentifyPossibleLanguages(this.f35932b, str.getBytes(com.google.android.gms.internal.mlkit_language_id_bundled.a.f30277c), f10);
        ArrayList arrayList = new ArrayList();
        for (IdentifiedLanguage identifiedLanguage : nativeIdentifyPossibleLanguages) {
            arrayList.add(new IdentifiedLanguage(identifiedLanguage.b(), identifiedLanguage.a()));
        }
        return arrayList;
    }

    @Override // com.google.mlkit.nl.languageid.internal.b
    @WorkerThread
    public final void b() throws MlKitException {
        u.q(this.f35932b == 0);
        c();
        try {
            AssetFileDescriptor openFd = this.f35931a.getAssets().openFd("tflite_langid.tflite.jpg");
            FileDescriptor fileDescriptor = openFd.getFileDescriptor();
            FileChannel channel = h.b.c(new FileInputStream(fileDescriptor), fileDescriptor).getChannel();
            try {
                long nativeInitFromBuffer = nativeInitFromBuffer(channel.map(FileChannel.MapMode.READ_ONLY, openFd.getStartOffset(), openFd.getDeclaredLength()), openFd.getDeclaredLength());
                this.f35932b = nativeInitFromBuffer;
                if (nativeInitFromBuffer != 0) {
                    channel.close();
                    openFd.close();
                    return;
                }
                throw new MlKitException("Couldn't load language identification model", 13);
            } catch (Throwable th) {
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (Throwable th2) {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            throw new MlKitException("Couldn't open language identification model file", 13, e4);
        }
    }

    @Override // com.google.mlkit.nl.languageid.internal.b
    @WorkerThread
    public final void release() {
        long j4 = this.f35932b;
        if (j4 == 0) {
            return;
        }
        nativeDestroy(j4);
        this.f35932b = 0L;
    }
}
