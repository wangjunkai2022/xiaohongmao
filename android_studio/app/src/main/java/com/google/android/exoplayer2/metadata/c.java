package com.google.android.exoplayer2.metadata;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.a0;

/* compiled from: MetadataDecoderFactory.java */
/* loaded from: classes2.dex */
public interface c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f24100a = new a();

    /* compiled from: MetadataDecoderFactory.java */
    /* loaded from: classes2.dex */
    class a implements c {
        a() {
        }

        @Override // com.google.android.exoplayer2.metadata.c
        public boolean a(Format format) {
            String str = format.sampleMimeType;
            return a0.f27456m0.equals(str) || a0.f27482z0.equals(str) || a0.f27478x0.equals(str) || a0.C0.equals(str) || a0.D0.equals(str);
        }

        @Override // com.google.android.exoplayer2.metadata.c
        public b b(Format format) {
            String str = format.sampleMimeType;
            if (str != null) {
                char c10 = 65535;
                switch (str.hashCode()) {
                    case -1354451219:
                        if (str.equals(a0.D0)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1348231605:
                        if (str.equals(a0.C0)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1248341703:
                        if (str.equals(a0.f27456m0)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 1154383568:
                        if (str.equals(a0.f27482z0)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 1652648887:
                        if (str.equals(a0.f27478x0)) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        return new com.google.android.exoplayer2.metadata.dvbsi.a();
                    case 1:
                        return new com.google.android.exoplayer2.metadata.icy.a();
                    case 2:
                        return new com.google.android.exoplayer2.metadata.id3.b();
                    case 3:
                        return new com.google.android.exoplayer2.metadata.emsg.a();
                    case 4:
                        return new com.google.android.exoplayer2.metadata.scte35.a();
                }
            }
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Attempted to create decoder for unsupported MIME type: ".concat(valueOf) : new String("Attempted to create decoder for unsupported MIME type: "));
        }
    }

    boolean a(Format format);

    b b(Format format);
}
