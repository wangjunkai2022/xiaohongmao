package com.google.android.play.core.assetpacks;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class c1 {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.core.internal.n1 f31257a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c1(com.google.android.play.core.internal.n1 n1Var) {
        this.f31257a = n1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final InputStream a(int i4, String str, String str2, int i10) {
        try {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) com.google.android.play.core.tasks.f.a(((x4) this.f31257a.zza()).c(i4, str, str2, i10));
            if (parcelFileDescriptor != null && parcelFileDescriptor.getFileDescriptor() != null) {
                return new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
            }
            throw new t1(String.format("Corrupted ParcelFileDescriptor, session %s packName %s sliceId %s, chunkNumber %s", Integer.valueOf(i4), str, str2, Integer.valueOf(i10)), i4);
        } catch (InterruptedException e4) {
            throw new t1("Extractor was interrupted while waiting for chunk file.", e4, i4);
        } catch (ExecutionException e10) {
            throw new t1(String.format("Error opening chunk file, session %s packName %s sliceId %s, chunkNumber %s", Integer.valueOf(i4), str, str2, Integer.valueOf(i10)), e10, i4);
        }
    }
}
