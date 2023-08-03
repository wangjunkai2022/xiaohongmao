package com.google.mlkit.common.sdkinternal.model;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.internal.mlkit_common.d7;
import com.google.mlkit.common.MlKitException;
import io.sentry.instrumentation.file.h;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private MappedByteBuffer f35837a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f35838b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.mlkit.common.model.c f35839c;

    @u2.a
    public c(@NonNull Context context, @NonNull com.google.mlkit.common.model.c cVar) {
        this.f35838b = context;
        this.f35839c = cVar;
    }

    @NonNull
    @u2.a
    public com.google.mlkit.common.model.c a() {
        return this.f35839c;
    }

    @NonNull
    @u2.a
    @WorkerThread
    public MappedByteBuffer b() throws MlKitException {
        FileChannel channel;
        u.l(this.f35838b, "Context can not be null");
        u.l(this.f35839c, "Model source can not be null");
        MappedByteBuffer mappedByteBuffer = this.f35837a;
        if (mappedByteBuffer != null) {
            return mappedByteBuffer;
        }
        String a10 = this.f35839c.a();
        String b10 = this.f35839c.b();
        Uri c10 = this.f35839c.c();
        if (a10 != null) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(a10, "r");
                FileChannel channel2 = randomAccessFile.getChannel();
                this.f35837a = channel2.map(FileChannel.MapMode.READ_ONLY, 0L, channel2.size());
                channel2.close();
                randomAccessFile.close();
                return this.f35837a;
            } catch (IOException e4) {
                throw new MlKitException("Can not open the local file: ".concat(String.valueOf(this.f35839c.a())), 14, e4);
            }
        } else if (b10 == null) {
            if (c10 != null) {
                try {
                    AssetFileDescriptor a11 = d7.a(this.f35838b, c10, "r");
                    channel = a11.createInputStream().getChannel();
                    try {
                        this.f35837a = channel.map(FileChannel.MapMode.READ_ONLY, a11.getStartOffset(), a11.getLength());
                        channel.close();
                        a11.close();
                        return this.f35837a;
                    } finally {
                    }
                } catch (IOException e10) {
                    throw new MlKitException("Can not load the file from URI: ".concat(c10.toString()), 14, e10);
                }
            }
            throw new MlKitException("Can not load the model. One of filePath, assetFilePath or URI must be set for the model.", 14);
        } else {
            try {
                AssetFileDescriptor openFd = this.f35838b.getAssets().openFd(b10);
                FileDescriptor fileDescriptor = openFd.getFileDescriptor();
                channel = h.b.c(new FileInputStream(fileDescriptor), fileDescriptor).getChannel();
                try {
                    this.f35837a = channel.map(FileChannel.MapMode.READ_ONLY, openFd.getStartOffset(), openFd.getDeclaredLength());
                    channel.close();
                    openFd.close();
                    return this.f35837a;
                } finally {
                }
            } catch (IOException e11) {
                throw new MlKitException("Can not load the file from asset: " + b10 + ". Please double check your asset file name and ensure it's not compressed. See documentation for details how to use aaptOptions to skip file compression", 14, e11);
            }
        }
    }
}
