package com.google.android.exoplayer2.extractor.mp4;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import java.nio.ByteBuffer;
import java.util.UUID;

/* compiled from: PsshAtomUtil.java */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final String f22780a = "PsshAtomUtil";

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PsshAtomUtil.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final UUID f22781a;

        /* renamed from: b  reason: collision with root package name */
        private final int f22782b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f22783c;

        public a(UUID uuid, int i4, byte[] bArr) {
            this.f22781a = uuid;
            this.f22782b = i4;
            this.f22783c = bArr;
        }
    }

    private l() {
    }

    public static byte[] a(UUID uuid, @Nullable byte[] bArr) {
        return b(uuid, null, bArr);
    }

    public static byte[] b(UUID uuid, @Nullable UUID[] uuidArr, @Nullable byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length);
        allocate.putInt(com.google.android.exoplayer2.extractor.mp4.a.f22617t0);
        allocate.putInt(uuidArr != null ? 16777216 : 0);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            allocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                allocate.putLong(uuid2.getMostSignificantBits());
                allocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr != null && bArr.length != 0) {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        return allocate.array();
    }

    public static boolean c(byte[] bArr) {
        return d(bArr) != null;
    }

    @Nullable
    private static a d(byte[] bArr) {
        h0 h0Var = new h0(bArr);
        if (h0Var.f() < 32) {
            return null;
        }
        h0Var.S(0);
        if (h0Var.o() == h0Var.a() + 4 && h0Var.o() == 1886614376) {
            int c10 = com.google.android.exoplayer2.extractor.mp4.a.c(h0Var.o());
            if (c10 > 1) {
                StringBuilder sb = new StringBuilder(37);
                sb.append("Unsupported pssh version: ");
                sb.append(c10);
                w.n(f22780a, sb.toString());
                return null;
            }
            UUID uuid = new UUID(h0Var.z(), h0Var.z());
            if (c10 == 1) {
                h0Var.T(h0Var.K() * 16);
            }
            int K = h0Var.K();
            if (K != h0Var.a()) {
                return null;
            }
            byte[] bArr2 = new byte[K];
            h0Var.k(bArr2, 0, K);
            return new a(uuid, c10, bArr2);
        }
        return null;
    }

    @Nullable
    public static byte[] e(byte[] bArr, UUID uuid) {
        a d4 = d(bArr);
        if (d4 == null) {
            return null;
        }
        if (!uuid.equals(d4.f22781a)) {
            String valueOf = String.valueOf(uuid);
            String valueOf2 = String.valueOf(d4.f22781a);
            StringBuilder sb = new StringBuilder(valueOf.length() + 33 + valueOf2.length());
            sb.append("UUID mismatch. Expected: ");
            sb.append(valueOf);
            sb.append(", got: ");
            sb.append(valueOf2);
            sb.append(".");
            w.n(f22780a, sb.toString());
            return null;
        }
        return d4.f22783c;
    }

    @Nullable
    public static UUID f(byte[] bArr) {
        a d4 = d(bArr);
        if (d4 == null) {
            return null;
        }
        return d4.f22781a;
    }

    public static int g(byte[] bArr) {
        a d4 = d(bArr);
        if (d4 == null) {
            return -1;
        }
        return d4.f22782b;
    }
}
