package com.google.android.gms.internal.mlkit_common;

import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class cc {

    /* renamed from: a  reason: collision with root package name */
    final long f29530a;

    /* renamed from: b  reason: collision with root package name */
    final long f29531b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f29532c;

    private cc(long j4, long j10, boolean z9) {
        this.f29530a = j4;
        this.f29531b = j10;
        this.f29532c = z9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static cc a(final FileDescriptor fileDescriptor) throws IOException {
        StructStat structStat = (StructStat) c(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.z8
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Os.fstat(fileDescriptor);
            }
        });
        return new cc(structStat.st_dev, structStat.st_ino, OsConstants.S_ISLNK(structStat.st_mode));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static cc b(final String str) throws IOException {
        StructStat structStat = (StructStat) c(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.a8
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Os.lstat(str);
            }
        });
        return new cc(structStat.st_dev, structStat.st_ino, OsConstants.S_ISLNK(structStat.st_mode));
    }

    private static Object c(Callable callable) throws IOException {
        try {
            return callable.call();
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }
}
