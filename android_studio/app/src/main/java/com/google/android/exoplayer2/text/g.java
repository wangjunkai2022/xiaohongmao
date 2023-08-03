package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.a0;

/* compiled from: SubtitleDecoderFactory.java */
/* loaded from: classes2.dex */
public interface g {

    /* renamed from: a  reason: collision with root package name */
    public static final g f25560a = new a();

    /* compiled from: SubtitleDecoderFactory.java */
    /* loaded from: classes2.dex */
    class a implements g {
        a() {
        }

        @Override // com.google.android.exoplayer2.text.g
        public boolean a(Format format) {
            String str = format.sampleMimeType;
            return a0.f27440e0.equals(str) || a0.f27442f0.equals(str) || a0.f27464q0.equals(str) || a0.f27468s0.equals(str) || a0.f27462p0.equals(str) || a0.f27466r0.equals(str) || a0.f27458n0.equals(str) || a0.f27470t0.equals(str) || a0.f27460o0.equals(str) || a0.A0.equals(str) || a0.f27476w0.equals(str);
        }

        @Override // com.google.android.exoplayer2.text.g
        public f b(Format format) {
            String str = format.sampleMimeType;
            if (str != null) {
                char c10 = 65535;
                switch (str.hashCode()) {
                    case -1351681404:
                        if (str.equals(a0.A0)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1248334819:
                        if (str.equals(a0.f27476w0)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1026075066:
                        if (str.equals(a0.f27468s0)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -1004728940:
                        if (str.equals(a0.f27440e0)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 691401887:
                        if (str.equals(a0.f27466r0)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 822864842:
                        if (str.equals(a0.f27442f0)) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 930165504:
                        if (str.equals(a0.f27470t0)) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 1566015601:
                        if (str.equals(a0.f27458n0)) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 1566016562:
                        if (str.equals(a0.f27460o0)) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case 1668750253:
                        if (str.equals(a0.f27462p0)) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case 1693976202:
                        if (str.equals(a0.f27464q0)) {
                            c10 = '\n';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        return new com.google.android.exoplayer2.text.dvb.a(format.initializationData);
                    case 1:
                        return new com.google.android.exoplayer2.text.pgs.a();
                    case 2:
                        return new com.google.android.exoplayer2.text.webvtt.b();
                    case 3:
                        return new com.google.android.exoplayer2.text.webvtt.h();
                    case 4:
                        return new com.google.android.exoplayer2.text.tx3g.a(format.initializationData);
                    case 5:
                        return new com.google.android.exoplayer2.text.ssa.a(format.initializationData);
                    case 6:
                    case 7:
                        return new com.google.android.exoplayer2.text.cea.a(str, format.accessibilityChannel, com.google.android.exoplayer2.text.cea.a.A);
                    case '\b':
                        return new com.google.android.exoplayer2.text.cea.c(format.accessibilityChannel, format.initializationData);
                    case '\t':
                        return new com.google.android.exoplayer2.text.subrip.a();
                    case '\n':
                        return new com.google.android.exoplayer2.text.ttml.c();
                }
            }
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Attempted to create decoder for unsupported MIME type: ".concat(valueOf) : new String("Attempted to create decoder for unsupported MIME type: "));
        }
    }

    boolean a(Format format);

    f b(Format format);
}
