package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.ContactsContract;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import io.sentry.instrumentation.file.h;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;

/* compiled from: LocalContentUriFetchProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class c0 extends e0 {

    /* renamed from: d  reason: collision with root package name */
    public static final String f12908d = "LocalContentUriFetchProducer";

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f12909e = {"_id", "_data"};

    /* renamed from: c  reason: collision with root package name */
    private final ContentResolver f12910c;

    public c0(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory, ContentResolver contentResolver) {
        super(executor, pooledByteBufferFactory);
        this.f12910c = contentResolver;
    }

    @r7.h
    private com.facebook.imagepipeline.image.e g(Uri uri) throws IOException {
        try {
            ParcelFileDescriptor openFileDescriptor = this.f12910c.openFileDescriptor(uri, "r");
            com.facebook.common.internal.j.i(openFileDescriptor);
            FileDescriptor fileDescriptor = openFileDescriptor.getFileDescriptor();
            return e(h.b.c(new FileInputStream(fileDescriptor), fileDescriptor), (int) openFileDescriptor.getStatSize());
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    @Override // com.facebook.imagepipeline.producers.e0
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        com.facebook.imagepipeline.image.e g4;
        InputStream createInputStream;
        Uri w9 = imageRequest.w();
        if (!com.facebook.common.util.f.j(w9)) {
            return (!com.facebook.common.util.f.i(w9) || (g4 = g(w9)) == null) ? e((InputStream) com.facebook.common.internal.j.i(this.f12910c.openInputStream(w9)), -1) : g4;
        }
        if (w9.toString().endsWith("/photo")) {
            createInputStream = this.f12910c.openInputStream(w9);
        } else if (w9.toString().endsWith("/display_photo")) {
            try {
                AssetFileDescriptor openAssetFileDescriptor = this.f12910c.openAssetFileDescriptor(w9, "r");
                com.facebook.common.internal.j.i(openAssetFileDescriptor);
                createInputStream = openAssetFileDescriptor.createInputStream();
            } catch (IOException unused) {
                throw new IOException("Contact photo does not exist: " + w9);
            }
        } else {
            InputStream openContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(this.f12910c, w9);
            if (openContactPhotoInputStream == null) {
                throw new IOException("Contact photo does not exist: " + w9);
            }
            createInputStream = openContactPhotoInputStream;
        }
        com.facebook.common.internal.j.i(createInputStream);
        return e(createInputStream, -1);
    }

    @Override // com.facebook.imagepipeline.producers.e0
    protected String f() {
        return f12908d;
    }
}
