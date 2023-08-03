package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.os.Handler;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.b0;
import com.google.android.exoplayer2.util.z0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* compiled from: FrameworkMediaDrm.java */
@RequiresApi(18)
/* loaded from: classes2.dex */
public final class h0 implements b0 {

    /* renamed from: j  reason: collision with root package name */
    private static final String f21770j = "FrameworkMediaDrm";

    /* renamed from: k  reason: collision with root package name */
    public static final b0.g f21771k = g0.f21767a;

    /* renamed from: l  reason: collision with root package name */
    private static final String f21772l = "cenc";

    /* renamed from: m  reason: collision with root package name */
    private static final String f21773m = "https://x";

    /* renamed from: n  reason: collision with root package name */
    private static final String f21774n = "<LA_URL>https://x</LA_URL>";

    /* renamed from: o  reason: collision with root package name */
    private static final int f21775o = 2;

    /* renamed from: g  reason: collision with root package name */
    private final UUID f21776g;

    /* renamed from: h  reason: collision with root package name */
    private final MediaDrm f21777h;

    /* renamed from: i  reason: collision with root package name */
    private int f21778i;

    private h0(UUID uuid) throws UnsupportedSchemeException {
        com.google.android.exoplayer2.util.a.g(uuid);
        com.google.android.exoplayer2.util.a.b(!com.google.android.exoplayer2.i.J1.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f21776g = uuid;
        MediaDrm mediaDrm = new MediaDrm(A(uuid));
        this.f21777h = mediaDrm;
        this.f21778i = 1;
        if (com.google.android.exoplayer2.i.L1.equals(uuid) && J()) {
            C(mediaDrm);
        }
    }

    private static UUID A(UUID uuid) {
        return (z0.f27743a >= 27 || !com.google.android.exoplayer2.i.K1.equals(uuid)) ? uuid : com.google.android.exoplayer2.i.J1;
    }

    @SuppressLint({"WrongConstant"})
    private static void C(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    private static DrmInitData.SchemeData D(UUID uuid, List<DrmInitData.SchemeData> list) {
        boolean z9;
        if (!com.google.android.exoplayer2.i.L1.equals(uuid)) {
            return list.get(0);
        }
        if (z0.f27743a >= 28 && list.size() > 1) {
            DrmInitData.SchemeData schemeData = list.get(0);
            int i4 = 0;
            for (int i10 = 0; i10 < list.size(); i10++) {
                DrmInitData.SchemeData schemeData2 = list.get(i10);
                byte[] bArr = (byte[]) com.google.android.exoplayer2.util.a.g(schemeData2.data);
                if (!z0.c(schemeData2.mimeType, schemeData.mimeType) || !z0.c(schemeData2.licenseServerUrl, schemeData.licenseServerUrl) || !com.google.android.exoplayer2.extractor.mp4.l.c(bArr)) {
                    z9 = false;
                    break;
                }
                i4 += bArr.length;
            }
            z9 = true;
            if (z9) {
                byte[] bArr2 = new byte[i4];
                int i11 = 0;
                for (int i12 = 0; i12 < list.size(); i12++) {
                    byte[] bArr3 = (byte[]) com.google.android.exoplayer2.util.a.g(list.get(i12).data);
                    int length = bArr3.length;
                    System.arraycopy(bArr3, 0, bArr2, i11, length);
                    i11 += length;
                }
                return schemeData.copyWithData(bArr2);
            }
        }
        for (int i13 = 0; i13 < list.size(); i13++) {
            DrmInitData.SchemeData schemeData3 = list.get(i13);
            int g4 = com.google.android.exoplayer2.extractor.mp4.l.g((byte[]) com.google.android.exoplayer2.util.a.g(schemeData3.data));
            int i14 = z0.f27743a;
            if (i14 < 23 && g4 == 0) {
                return schemeData3;
            }
            if (i14 >= 23 && g4 == 1) {
                return schemeData3;
            }
        }
        return list.get(0);
    }

    public static boolean E(UUID uuid) {
        return MediaDrm.isCryptoSchemeSupported(A(uuid));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(b0.d dVar, MediaDrm mediaDrm, byte[] bArr, int i4, int i10, byte[] bArr2) {
        dVar.a(this, bArr, i4, i10, bArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G(b0.e eVar, MediaDrm mediaDrm, byte[] bArr, long j4) {
        eVar.a(this, bArr, j4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(b0.f fVar, MediaDrm mediaDrm, byte[] bArr, List list, boolean z9) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaDrm.KeyStatus keyStatus = (MediaDrm.KeyStatus) it.next();
            arrayList.add(new b0.c(keyStatus.getStatusCode(), keyStatus.getKeyId()));
        }
        fVar.a(this, bArr, arrayList, z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ b0 I(UUID uuid) {
        try {
            return K(uuid);
        } catch (UnsupportedDrmException unused) {
            String valueOf = String.valueOf(uuid);
            StringBuilder sb = new StringBuilder(valueOf.length() + 53);
            sb.append("Failed to instantiate a FrameworkMediaDrm for uuid: ");
            sb.append(valueOf);
            sb.append(".");
            com.google.android.exoplayer2.util.w.d(f21770j, sb.toString());
            return new y();
        }
    }

    private static boolean J() {
        return "ASUS_Z00AD".equals(z0.f27746d);
    }

    public static h0 K(UUID uuid) throws UnsupportedDrmException {
        try {
            return new h0(uuid);
        } catch (UnsupportedSchemeException e4) {
            throw new UnsupportedDrmException(1, e4);
        } catch (Exception e10) {
            throw new UnsupportedDrmException(2, e10);
        }
    }

    private static byte[] w(byte[] bArr) {
        com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(bArr);
        int r9 = h0Var.r();
        short u9 = h0Var.u();
        short u10 = h0Var.u();
        if (u9 == 1 && u10 == 1) {
            short u11 = h0Var.u();
            Charset charset = com.google.common.base.e.f32192e;
            String E = h0Var.E(u11, charset);
            if (E.contains("<LA_URL>")) {
                return bArr;
            }
            int indexOf = E.indexOf("</DATA>");
            if (indexOf == -1) {
                com.google.android.exoplayer2.util.w.n(f21770j, "Could not find the </DATA> tag. Skipping LA_URL workaround.");
            }
            String substring = E.substring(0, indexOf);
            String substring2 = E.substring(indexOf);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 26 + String.valueOf(substring2).length());
            sb.append(substring);
            sb.append(f21774n);
            sb.append(substring2);
            String sb2 = sb.toString();
            int i4 = r9 + 52;
            ByteBuffer allocate = ByteBuffer.allocate(i4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(i4);
            allocate.putShort(u9);
            allocate.putShort(u10);
            allocate.putShort((short) (sb2.length() * 2));
            allocate.put(sb2.getBytes(charset));
            return allocate.array();
        }
        com.google.android.exoplayer2.util.w.i(f21770j, "Unexpected record count or type. Skipping LA_URL workaround.");
        return bArr;
    }

    private static byte[] x(UUID uuid, byte[] bArr) {
        return com.google.android.exoplayer2.i.K1.equals(uuid) ? a.a(bArr) : bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
        if ("AFTT".equals(r0) == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static byte[] y(java.util.UUID r3, byte[] r4) {
        /*
            java.util.UUID r0 = com.google.android.exoplayer2.i.M1
            boolean r1 = r0.equals(r3)
            if (r1 == 0) goto L18
            byte[] r1 = com.google.android.exoplayer2.extractor.mp4.l.e(r4, r3)
            if (r1 != 0) goto Lf
            goto L10
        Lf:
            r4 = r1
        L10:
            byte[] r4 = w(r4)
            byte[] r4 = com.google.android.exoplayer2.extractor.mp4.l.a(r0, r4)
        L18:
            int r1 = com.google.android.exoplayer2.util.z0.f27743a
            r2 = 23
            if (r1 >= r2) goto L26
            java.util.UUID r1 = com.google.android.exoplayer2.i.L1
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L58
        L26:
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L5f
            java.lang.String r0 = com.google.android.exoplayer2.util.z0.f27745c
            java.lang.String r1 = "Amazon"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L5f
            java.lang.String r0 = com.google.android.exoplayer2.util.z0.f27746d
            java.lang.String r1 = "AFTB"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTS"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTM"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L58
            java.lang.String r1 = "AFTT"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L5f
        L58:
            byte[] r3 = com.google.android.exoplayer2.extractor.mp4.l.e(r4, r3)
            if (r3 == 0) goto L5f
            return r3
        L5f:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.h0.y(java.util.UUID, byte[]):byte[]");
    }

    private static String z(UUID uuid, String str) {
        return (z0.f27743a < 26 && com.google.android.exoplayer2.i.K1.equals(uuid) && (com.google.android.exoplayer2.util.a0.f27441f.equals(str) || com.google.android.exoplayer2.util.a0.f27481z.equals(str))) ? "cenc" : str;
    }

    @Override // com.google.android.exoplayer2.drm.b0
    /* renamed from: B */
    public c0 c(byte[] bArr) throws MediaCryptoException {
        return new c0(A(this.f21776g), bArr, z0.f27743a < 21 && com.google.android.exoplayer2.i.L1.equals(this.f21776g) && "L3".equals(m("securityLevel")));
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public Class<c0> a() {
        return c0.class;
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public synchronized void acquire() {
        com.google.android.exoplayer2.util.a.i(this.f21778i > 0);
        this.f21778i++;
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public Map<String, String> b(byte[] bArr) {
        return this.f21777h.queryKeyStatus(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public b0.h d() {
        MediaDrm.ProvisionRequest provisionRequest = this.f21777h.getProvisionRequest();
        return new b0.h(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // com.google.android.exoplayer2.drm.b0
    @RequiresApi(23)
    public void e(@Nullable final b0.e eVar) {
        if (z0.f27743a >= 23) {
            this.f21777h.setOnExpirationUpdateListener(eVar == null ? null : new MediaDrm.OnExpirationUpdateListener() { // from class: com.google.android.exoplayer2.drm.e0
                @Override // android.media.MediaDrm.OnExpirationUpdateListener
                public final void onExpirationUpdate(MediaDrm mediaDrm, byte[] bArr, long j4) {
                    h0.this.G(eVar, mediaDrm, bArr, j4);
                }
            }, (Handler) null);
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public byte[] f() throws MediaDrmException {
        return this.f21777h.openSession();
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void g(byte[] bArr, byte[] bArr2) {
        this.f21777h.restoreKeys(bArr, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void h(String str, String str2) {
        this.f21777h.setPropertyString(str, str2);
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void i(@Nullable final b0.d dVar) {
        this.f21777h.setOnEventListener(dVar == null ? null : new MediaDrm.OnEventListener() { // from class: com.google.android.exoplayer2.drm.d0
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i4, int i10, byte[] bArr2) {
                h0.this.F(dVar, mediaDrm, bArr, i4, i10, bArr2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.b0
    @Nullable
    public PersistableBundle j() {
        if (z0.f27743a < 28) {
            return null;
        }
        return this.f21777h.getMetrics();
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void k(byte[] bArr) throws DeniedByServerException {
        this.f21777h.provideProvisionResponse(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void l(String str, byte[] bArr) {
        this.f21777h.setPropertyByteArray(str, bArr);
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public String m(String str) {
        return this.f21777h.getPropertyString(str);
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void n(byte[] bArr) {
        this.f21777h.closeSession(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public byte[] o(String str) {
        return this.f21777h.getPropertyByteArray(str);
    }

    @Override // com.google.android.exoplayer2.drm.b0
    @Nullable
    public byte[] p(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException {
        if (com.google.android.exoplayer2.i.K1.equals(this.f21776g)) {
            bArr2 = a.b(bArr2);
        }
        return this.f21777h.provideKeyResponse(bArr, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public b0.b q(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i4, @Nullable HashMap<String, String> hashMap) throws NotProvisionedException {
        byte[] bArr2;
        String str;
        DrmInitData.SchemeData schemeData = null;
        if (list != null) {
            schemeData = D(this.f21776g, list);
            bArr2 = y(this.f21776g, (byte[]) com.google.android.exoplayer2.util.a.g(schemeData.data));
            str = z(this.f21776g, schemeData.mimeType);
        } else {
            bArr2 = null;
            str = null;
        }
        MediaDrm.KeyRequest keyRequest = this.f21777h.getKeyRequest(bArr, bArr2, str, i4, hashMap);
        byte[] x9 = x(this.f21776g, keyRequest.getData());
        String defaultUrl = keyRequest.getDefaultUrl();
        if (f21773m.equals(defaultUrl)) {
            defaultUrl = "";
        }
        if (TextUtils.isEmpty(defaultUrl) && schemeData != null && !TextUtils.isEmpty(schemeData.licenseServerUrl)) {
            defaultUrl = schemeData.licenseServerUrl;
        }
        return new b0.b(x9, defaultUrl, z0.f27743a >= 23 ? keyRequest.getRequestType() : Integer.MIN_VALUE);
    }

    @Override // com.google.android.exoplayer2.drm.b0
    @RequiresApi(23)
    public void r(@Nullable final b0.f fVar) {
        if (z0.f27743a >= 23) {
            this.f21777h.setOnKeyStatusChangeListener(fVar == null ? null : new MediaDrm.OnKeyStatusChangeListener() { // from class: com.google.android.exoplayer2.drm.f0
                @Override // android.media.MediaDrm.OnKeyStatusChangeListener
                public final void onKeyStatusChange(MediaDrm mediaDrm, byte[] bArr, List list, boolean z9) {
                    h0.this.H(fVar, mediaDrm, bArr, list, z9);
                }
            }, (Handler) null);
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public synchronized void release() {
        int i4 = this.f21778i - 1;
        this.f21778i = i4;
        if (i4 == 0) {
            this.f21777h.release();
        }
    }
}
