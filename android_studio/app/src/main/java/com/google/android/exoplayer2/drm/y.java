package com.google.android.exoplayer2.drm;

import android.media.MediaDrmException;
import android.os.PersistableBundle;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.b0;
import com.google.android.exoplayer2.util.z0;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: DummyExoMediaDrm.java */
@RequiresApi(18)
/* loaded from: classes2.dex */
public final class y implements b0 {
    public static y s() {
        return new y();
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public Class<m0> a() {
        return m0.class;
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void acquire() {
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public Map<String, String> b(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public a0 c(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public b0.h d() {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void e(@Nullable b0.e eVar) {
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public byte[] f() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void g(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void h(String str, String str2) {
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void i(@Nullable b0.d dVar) {
    }

    @Override // com.google.android.exoplayer2.drm.b0
    @Nullable
    public PersistableBundle j() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void k(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void l(String str, byte[] bArr) {
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public String m(String str) {
        return "";
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void n(byte[] bArr) {
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public byte[] o(String str) {
        return z0.f27748f;
    }

    @Override // com.google.android.exoplayer2.drm.b0
    @Nullable
    public byte[] p(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public b0.b q(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i4, @Nullable HashMap<String, String> hashMap) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void r(@Nullable b0.f fVar) {
    }

    @Override // com.google.android.exoplayer2.drm.b0
    public void release() {
    }
}
