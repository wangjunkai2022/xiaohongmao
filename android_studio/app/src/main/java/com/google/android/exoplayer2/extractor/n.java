package com.google.android.exoplayer2.extractor;

import java.io.EOFException;
import java.io.IOException;

/* compiled from: ExtractorUtil.java */
/* loaded from: classes2.dex */
public final class n {
    private n() {
    }

    public static boolean a(l lVar, byte[] bArr, int i4, int i10, boolean z9) throws IOException {
        try {
            return lVar.g(bArr, i4, i10, z9);
        } catch (EOFException e4) {
            if (z9) {
                return false;
            }
            throw e4;
        }
    }

    public static int b(l lVar, byte[] bArr, int i4, int i10) throws IOException {
        int i11 = 0;
        while (i11 < i10) {
            int n9 = lVar.n(bArr, i4 + i11, i10 - i11);
            if (n9 == -1) {
                break;
            }
            i11 += n9;
        }
        return i11;
    }

    public static boolean c(l lVar, byte[] bArr, int i4, int i10) throws IOException {
        try {
            lVar.readFully(bArr, i4, i10);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean d(l lVar, int i4) throws IOException {
        try {
            lVar.o(i4);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
