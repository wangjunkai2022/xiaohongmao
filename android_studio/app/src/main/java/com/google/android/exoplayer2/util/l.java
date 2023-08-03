package com.google.android.exoplayer2.util;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.i1;
import com.google.android.exoplayer2.analytics.j1;
import com.google.android.exoplayer2.f1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.s2;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.t1;
import com.google.android.exoplayer2.trackselection.i;
import com.google.android.exoplayer2.v1;
import io.sentry.protocol.t;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import okhttp3.HttpUrl;

/* compiled from: EventLogger.java */
/* loaded from: classes2.dex */
public class l implements j1 {

    /* renamed from: h0  reason: collision with root package name */
    private static final String f27570h0 = "EventLogger";

    /* renamed from: i0  reason: collision with root package name */
    private static final int f27571i0 = 3;

    /* renamed from: j0  reason: collision with root package name */
    private static final NumberFormat f27572j0;
    @Nullable

    /* renamed from: c0  reason: collision with root package name */
    private final com.google.android.exoplayer2.trackselection.i f27573c0;

    /* renamed from: d0  reason: collision with root package name */
    private final String f27574d0;

    /* renamed from: e0  reason: collision with root package name */
    private final s2.d f27575e0;

    /* renamed from: f0  reason: collision with root package name */
    private final s2.b f27576f0;

    /* renamed from: g0  reason: collision with root package name */
    private final long f27577g0;

    static {
        NumberFormat numberFormat = NumberFormat.getInstance(Locale.US);
        f27572j0 = numberFormat;
        numberFormat.setMinimumFractionDigits(2);
        numberFormat.setMaximumFractionDigits(2);
        numberFormat.setGroupingUsed(false);
    }

    public l(@Nullable com.google.android.exoplayer2.trackselection.i iVar) {
        this(iVar, f27570h0);
    }

    private static String A0(int i4) {
        return i4 != 1 ? i4 != 2 ? i4 != 3 ? i4 != 4 ? "?" : "ENDED" : "READY" : "BUFFERING" : "IDLE";
    }

    private static String B0(long j4) {
        return j4 == com.google.android.exoplayer2.i.f23649b ? "?" : f27572j0.format(((float) j4) / 1000.0f);
    }

    private static String C0(int i4) {
        return i4 != 0 ? i4 != 1 ? "?" : "SOURCE_UPDATE" : "PLAYLIST_CHANGED";
    }

    private static String D0(@Nullable com.google.android.exoplayer2.trackselection.l lVar, TrackGroup trackGroup, int i4) {
        return E0((lVar == null || lVar.l() != trackGroup || lVar.k(i4) == -1) ? false : true);
    }

    private static String E0(boolean z9) {
        return z9 ? "[X]" : "[ ]";
    }

    private void F0(j1.b bVar, String str) {
        H0(o0(bVar, str, null, null));
    }

    private void G0(j1.b bVar, String str, String str2) {
        H0(o0(bVar, str, str2, null));
    }

    private void I0(j1.b bVar, String str, String str2, @Nullable Throwable th) {
        K0(o0(bVar, str, str2, th));
    }

    private void J0(j1.b bVar, String str, @Nullable Throwable th) {
        K0(o0(bVar, str, null, th));
    }

    private void L0(j1.b bVar, String str, Exception exc) {
        I0(bVar, "internalError", str, exc);
    }

    private void M0(Metadata metadata, String str) {
        for (int i4 = 0; i4 < metadata.length(); i4++) {
            String valueOf = String.valueOf(metadata.get(i4));
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + valueOf.length());
            sb.append(str);
            sb.append(valueOf);
            H0(sb.toString());
        }
    }

    private static String a0(int i4, int i10) {
        if (i4 < 2) {
            return "N/A";
        }
        if (i10 != 0) {
            if (i10 != 8) {
                if (i10 == 16) {
                    return "YES";
                }
                throw new IllegalStateException();
            }
            return "YES_NOT_SEAMLESS";
        }
        return "NO";
    }

    private static String b0(int i4) {
        return i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? i4 != 4 ? i4 != 5 ? "?" : "INTERNAL" : "REMOVE" : "SKIP" : "SEEK_ADJUSTMENT" : "SEEK" : "AUTO_TRANSITION";
    }

    private String o0(j1.b bVar, String str, @Nullable String str2, @Nullable Throwable th) {
        String v02 = v0(bVar);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(v02).length());
        sb.append(str);
        sb.append(" [");
        sb.append(v02);
        String sb2 = sb.toString();
        if (str2 != null) {
            String valueOf = String.valueOf(sb2);
            StringBuilder sb3 = new StringBuilder(valueOf.length() + 2 + str2.length());
            sb3.append(valueOf);
            sb3.append(", ");
            sb3.append(str2);
            sb2 = sb3.toString();
        }
        String h4 = w.h(th);
        if (!TextUtils.isEmpty(h4)) {
            String valueOf2 = String.valueOf(sb2);
            String replace = h4.replace("\n", "\n  ");
            StringBuilder sb4 = new StringBuilder(valueOf2.length() + 4 + String.valueOf(replace).length());
            sb4.append(valueOf2);
            sb4.append("\n  ");
            sb4.append(replace);
            sb4.append('\n');
            sb2 = sb4.toString();
        }
        return String.valueOf(sb2).concat("]");
    }

    private String v0(j1.b bVar) {
        int i4 = bVar.f20826c;
        StringBuilder sb = new StringBuilder(18);
        sb.append("window=");
        sb.append(i4);
        String sb2 = sb.toString();
        if (bVar.f20827d != null) {
            String valueOf = String.valueOf(sb2);
            int f10 = bVar.f20825b.f(bVar.f20827d.f25221a);
            StringBuilder sb3 = new StringBuilder(valueOf.length() + 20);
            sb3.append(valueOf);
            sb3.append(", period=");
            sb3.append(f10);
            sb2 = sb3.toString();
            if (bVar.f20827d.c()) {
                String valueOf2 = String.valueOf(sb2);
                int i10 = bVar.f20827d.f25222b;
                StringBuilder sb4 = new StringBuilder(valueOf2.length() + 21);
                sb4.append(valueOf2);
                sb4.append(", adGroup=");
                sb4.append(i10);
                String valueOf3 = String.valueOf(sb4.toString());
                int i11 = bVar.f20827d.f25223c;
                StringBuilder sb5 = new StringBuilder(valueOf3.length() + 16);
                sb5.append(valueOf3);
                sb5.append(", ad=");
                sb5.append(i11);
                sb2 = sb5.toString();
            }
        }
        String B0 = B0(bVar.f20824a - this.f27577g0);
        String B02 = B0(bVar.f20828e);
        StringBuilder sb6 = new StringBuilder(String.valueOf(B0).length() + 23 + String.valueOf(B02).length() + String.valueOf(sb2).length());
        sb6.append("eventTime=");
        sb6.append(B0);
        sb6.append(", mediaPos=");
        sb6.append(B02);
        sb6.append(", ");
        sb6.append(sb2);
        return sb6.toString();
    }

    private static String w0(int i4) {
        return i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? "?" : "PLAYLIST_CHANGED" : "SEEK" : "AUTO" : "REPEAT";
    }

    private static String x0(int i4) {
        return i4 != 1 ? i4 != 2 ? i4 != 3 ? i4 != 4 ? i4 != 5 ? "?" : "END_OF_MEDIA_ITEM" : "REMOTE" : "AUDIO_BECOMING_NOISY" : "AUDIO_FOCUS_LOSS" : "USER_REQUEST";
    }

    private static String y0(int i4) {
        return i4 != 0 ? i4 != 1 ? "?" : "TRANSIENT_AUDIO_FOCUS_LOSS" : "NONE";
    }

    private static String z0(int i4) {
        return i4 != 0 ? i4 != 1 ? i4 != 2 ? "?" : shaded.org.apache.commons.codec.language.bm.f.f93599f : "ONE" : "OFF";
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void A(j1.b bVar, Format format, @Nullable com.google.android.exoplayer2.decoder.e eVar) {
        G0(bVar, "videoInputFormat", Format.toLogString(format));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void B(j1.b bVar, Exception exc) {
        i1.g0(this, bVar, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void C(j1.b bVar, int i4) {
        int m9 = bVar.f20825b.m();
        int u9 = bVar.f20825b.u();
        String v02 = v0(bVar);
        String C0 = C0(i4);
        StringBuilder sb = new StringBuilder(String.valueOf(v02).length() + 69 + String.valueOf(C0).length());
        sb.append("timeline [");
        sb.append(v02);
        sb.append(", periodCount=");
        sb.append(m9);
        sb.append(", windowCount=");
        sb.append(u9);
        sb.append(", reason=");
        sb.append(C0);
        H0(sb.toString());
        for (int i10 = 0; i10 < Math.min(m9, 3); i10++) {
            bVar.f20825b.j(i10, this.f27576f0);
            String B0 = B0(this.f27576f0.l());
            StringBuilder sb2 = new StringBuilder(String.valueOf(B0).length() + 11);
            sb2.append("  period [");
            sb2.append(B0);
            sb2.append("]");
            H0(sb2.toString());
        }
        if (m9 > 3) {
            H0("  ...");
        }
        for (int i11 = 0; i11 < Math.min(u9, 3); i11++) {
            bVar.f20825b.r(i11, this.f27575e0);
            String B02 = B0(this.f27575e0.f());
            s2.d dVar = this.f27575e0;
            boolean z9 = dVar.f24580h;
            boolean z10 = dVar.f24581i;
            StringBuilder sb3 = new StringBuilder(String.valueOf(B02).length() + 42);
            sb3.append("  window [");
            sb3.append(B02);
            sb3.append(", seekable=");
            sb3.append(z9);
            sb3.append(", dynamic=");
            sb3.append(z10);
            sb3.append("]");
            H0(sb3.toString());
        }
        if (u9 > 3) {
            H0("  ...");
        }
        H0("]");
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void D(j1.b bVar) {
        i1.Y(this, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void E(j1.b bVar, @Nullable com.google.android.exoplayer2.b1 b1Var, int i4) {
        String v02 = v0(bVar);
        String w02 = w0(i4);
        StringBuilder sb = new StringBuilder(String.valueOf(v02).length() + 21 + String.valueOf(w02).length());
        sb.append("mediaItem [");
        sb.append(v02);
        sb.append(", reason=");
        sb.append(w02);
        sb.append("]");
        H0(sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void F(j1.b bVar) {
        i1.w(this, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void G(j1.b bVar, com.google.android.exoplayer2.decoder.d dVar) {
        F0(bVar, "videoDisabled");
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void H(j1.b bVar) {
        F0(bVar, "drmKeysRemoved");
    }

    protected void H0(String str) {
        w.b(this.f27574d0, str);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void I(j1.b bVar, ExoPlaybackException exoPlaybackException) {
        J0(bVar, "playerFailed", exoPlaybackException);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void J(j1.b bVar, int i4, long j4, long j10) {
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void K(j1.b bVar, int i4, int i10, int i11, float f10) {
        i1.p0(this, bVar, i4, i10, i11, f10);
    }

    protected void K0(String str) {
        w.d(this.f27574d0, str);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void L(j1.b bVar, int i4, Format format) {
        i1.r(this, bVar, i4, format);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void M(j1.b bVar) {
        i1.X(this, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void N(j1.b bVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar) {
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void O(j1.b bVar, int i4, String str, long j4) {
        i1.q(this, bVar, i4, str, j4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void P(j1.b bVar, int i4) {
        i1.T(this, bVar, i4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void Q(j1.b bVar) {
        F0(bVar, "drmSessionReleased");
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void R(j1.b bVar, t1 t1Var) {
        G0(bVar, "playbackParameters", t1Var.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void S(j1.b bVar, int i4, long j4, long j10) {
        StringBuilder sb = new StringBuilder(55);
        sb.append(i4);
        sb.append(", ");
        sb.append(j4);
        sb.append(", ");
        sb.append(j10);
        I0(bVar, "audioTrackUnderrun", sb.toString(), null);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void T(j1.b bVar, com.google.android.exoplayer2.decoder.d dVar) {
        F0(bVar, "audioDisabled");
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void U(j1.b bVar, com.google.android.exoplayer2.decoder.d dVar) {
        F0(bVar, "videoEnabled");
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void V(j1.b bVar, String str, long j4, long j10) {
        i1.d(this, bVar, str, j4, j10);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void W(j1.b bVar, int i4) {
        G0(bVar, "repeatMode", z0(i4));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void X(j1.b bVar, com.google.android.exoplayer2.audio.e eVar) {
        int i4 = eVar.f21191a;
        int i10 = eVar.f21192b;
        int i11 = eVar.f21193c;
        int i12 = eVar.f21194d;
        StringBuilder sb = new StringBuilder(47);
        sb.append(i4);
        sb.append(",");
        sb.append(i10);
        sb.append(",");
        sb.append(i11);
        sb.append(",");
        sb.append(i12);
        G0(bVar, "audioAttributes", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void Y(j1.b bVar) {
        i1.R(this, bVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void Z(j1.b bVar, com.google.android.exoplayer2.video.b0 b0Var) {
        int i4 = b0Var.f27885a;
        int i10 = b0Var.f27886b;
        StringBuilder sb = new StringBuilder(24);
        sb.append(i4);
        sb.append(", ");
        sb.append(i10);
        G0(bVar, "videoSize", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void a(j1.b bVar, String str) {
        G0(bVar, "videoDecoderReleased", str);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void b(j1.b bVar, long j4, int i4) {
        i1.m0(this, bVar, j4, i4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void c(j1.b bVar, int i4) {
        StringBuilder sb = new StringBuilder(17);
        sb.append("state=");
        sb.append(i4);
        G0(bVar, "drmSessionAcquired", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void c0(j1.b bVar, Format format) {
        i1.h(this, bVar, format);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void d(j1.b bVar, Exception exc) {
        L0(bVar, "drmSessionManagerError", exc);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void d0(j1.b bVar) {
        F0(bVar, "drmKeysLoaded");
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void e(j1.b bVar) {
        F0(bVar, "drmKeysRestored");
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void e0(j1.b bVar, float f10) {
        G0(bVar, "volume", Float.toString(f10));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void f(j1.b bVar, int i4) {
        G0(bVar, "playbackSuppressionReason", y0(i4));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void f0(j1.b bVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar) {
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void g(j1.b bVar, boolean z9) {
        i1.I(this, bVar, z9);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void g0(j1.b bVar, TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.m mVar) {
        com.google.android.exoplayer2.trackselection.i iVar = this.f27573c0;
        i.a g4 = iVar != null ? iVar.g() : null;
        if (g4 == null) {
            G0(bVar, "tracks", HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            return;
        }
        String valueOf = String.valueOf(v0(bVar));
        H0(valueOf.length() != 0 ? "tracks [".concat(valueOf) : new String("tracks ["));
        int c10 = g4.c();
        int i4 = 0;
        while (true) {
            String str = "    Group:";
            String str2 = " [";
            if (i4 >= c10) {
                break;
            }
            TrackGroupArray g10 = g4.g(i4);
            com.google.android.exoplayer2.trackselection.l a10 = mVar.a(i4);
            int i10 = c10;
            if (g10.length == 0) {
                String d4 = g4.d(i4);
                StringBuilder sb = new StringBuilder(String.valueOf(d4).length() + 5);
                sb.append("  ");
                sb.append(d4);
                sb.append(" []");
                H0(sb.toString());
            } else {
                String d10 = g4.d(i4);
                StringBuilder sb2 = new StringBuilder(String.valueOf(d10).length() + 4);
                sb2.append("  ");
                sb2.append(d10);
                sb2.append(" [");
                H0(sb2.toString());
                int i11 = 0;
                while (i11 < g10.length) {
                    TrackGroup trackGroup = g10.get(i11);
                    TrackGroupArray trackGroupArray2 = g10;
                    String a02 = a0(trackGroup.length, g4.a(i4, i11, false));
                    StringBuilder sb3 = new StringBuilder(String.valueOf(a02).length() + 44);
                    sb3.append(str);
                    sb3.append(i11);
                    sb3.append(", adaptive_supported=");
                    sb3.append(a02);
                    sb3.append(str2);
                    H0(sb3.toString());
                    int i12 = 0;
                    while (i12 < trackGroup.length) {
                        String D0 = D0(a10, trackGroup, i12);
                        String b10 = com.google.android.exoplayer2.i.b(g4.h(i4, i11, i12));
                        TrackGroup trackGroup2 = trackGroup;
                        String logString = Format.toLogString(trackGroup.getFormat(i12));
                        String str3 = str;
                        StringBuilder sb4 = new StringBuilder(String.valueOf(D0).length() + 38 + String.valueOf(logString).length() + String.valueOf(b10).length());
                        sb4.append("      ");
                        sb4.append(D0);
                        sb4.append(" Track:");
                        sb4.append(i12);
                        sb4.append(", ");
                        sb4.append(logString);
                        sb4.append(", supported=");
                        sb4.append(b10);
                        H0(sb4.toString());
                        i12++;
                        str = str3;
                        trackGroup = trackGroup2;
                        str2 = str2;
                    }
                    H0("    ]");
                    i11++;
                    g10 = trackGroupArray2;
                }
                if (a10 != null) {
                    int i13 = 0;
                    while (true) {
                        if (i13 >= a10.length()) {
                            break;
                        }
                        Metadata metadata = a10.f(i13).metadata;
                        if (metadata != null) {
                            H0("    Metadata [");
                            M0(metadata, "      ");
                            H0("    ]");
                            break;
                        }
                        i13++;
                    }
                }
                H0("  ]");
            }
            i4++;
            c10 = i10;
        }
        String str4 = "    Group:";
        String str5 = " [";
        TrackGroupArray j4 = g4.j();
        if (j4.length > 0) {
            H0("  Unmapped [");
            int i14 = 0;
            while (i14 < j4.length) {
                StringBuilder sb5 = new StringBuilder(23);
                String str6 = str4;
                sb5.append(str6);
                sb5.append(i14);
                String str7 = str5;
                sb5.append(str7);
                H0(sb5.toString());
                TrackGroup trackGroup3 = j4.get(i14);
                int i15 = 0;
                while (i15 < trackGroup3.length) {
                    String E0 = E0(false);
                    String b11 = com.google.android.exoplayer2.i.b(0);
                    String logString2 = Format.toLogString(trackGroup3.getFormat(i15));
                    String str8 = str6;
                    StringBuilder sb6 = new StringBuilder(String.valueOf(E0).length() + 38 + String.valueOf(logString2).length() + String.valueOf(b11).length());
                    sb6.append("      ");
                    sb6.append(E0);
                    sb6.append(" Track:");
                    sb6.append(i15);
                    sb6.append(", ");
                    sb6.append(logString2);
                    sb6.append(", supported=");
                    sb6.append(b11);
                    H0(sb6.toString());
                    i15++;
                    j4 = j4;
                    str6 = str8;
                }
                str4 = str6;
                H0("    ]");
                i14++;
                str5 = str7;
            }
            H0("  ]");
        }
        H0("]");
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void h(j1.b bVar, f1 f1Var) {
        i1.K(this, bVar, f1Var);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void h0(j1.b bVar, boolean z9) {
        G0(bVar, "isPlaying", Boolean.toString(z9));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void i(j1.b bVar, com.google.android.exoplayer2.decoder.d dVar) {
        F0(bVar, "audioEnabled");
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void i0(j1.b bVar, Exception exc) {
        i1.b(this, bVar, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void j(j1.b bVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar, IOException iOException, boolean z9) {
        L0(bVar, "loadError", iOException);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void j0(j1.b bVar, com.google.android.exoplayer2.source.s sVar) {
        G0(bVar, "downstreamFormat", Format.toLogString(sVar.f25166c));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void k(j1.b bVar, int i4, com.google.android.exoplayer2.decoder.d dVar) {
        i1.p(this, bVar, i4, dVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void k0(j1.b bVar, com.google.android.exoplayer2.source.o oVar, com.google.android.exoplayer2.source.s sVar) {
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void l(j1.b bVar, String str, long j4) {
        G0(bVar, "audioDecoderInitialized", str);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void l0(j1.b bVar, com.google.android.exoplayer2.source.s sVar) {
        G0(bVar, "upstreamDiscarded", Format.toLogString(sVar.f25166c));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void m(j1.b bVar, Metadata metadata) {
        String valueOf = String.valueOf(v0(bVar));
        H0(valueOf.length() != 0 ? "metadata [".concat(valueOf) : new String("metadata ["));
        M0(metadata, "  ");
        H0("]");
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void m0(j1.b bVar, v1.l lVar, v1.l lVar2, int i4) {
        StringBuilder sb = new StringBuilder();
        sb.append("reason=");
        sb.append(b0(i4));
        sb.append(", PositionInfo:old [");
        sb.append("window=");
        sb.append(lVar.f27814b);
        sb.append(", period=");
        sb.append(lVar.f27816d);
        sb.append(", pos=");
        sb.append(lVar.f27817e);
        if (lVar.f27819g != -1) {
            sb.append(", contentPos=");
            sb.append(lVar.f27818f);
            sb.append(", adGroup=");
            sb.append(lVar.f27819g);
            sb.append(", ad=");
            sb.append(lVar.f27820h);
        }
        sb.append("], PositionInfo:new [");
        sb.append("window=");
        sb.append(lVar2.f27814b);
        sb.append(", period=");
        sb.append(lVar2.f27816d);
        sb.append(", pos=");
        sb.append(lVar2.f27817e);
        if (lVar2.f27819g != -1) {
            sb.append(", contentPos=");
            sb.append(lVar2.f27818f);
            sb.append(", adGroup=");
            sb.append(lVar2.f27819g);
            sb.append(", ad=");
            sb.append(lVar2.f27820h);
        }
        sb.append("]");
        G0(bVar, "positionDiscontinuity", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void n(v1 v1Var, j1.c cVar) {
        i1.B(this, v1Var, cVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void n0(j1.b bVar, String str) {
        G0(bVar, "audioDecoderReleased", str);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void o(j1.b bVar, boolean z9, int i4) {
        i1.S(this, bVar, z9, i4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void p(j1.b bVar, int i4) {
        G0(bVar, t.b.f83859d, A0(i4));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void p0(j1.b bVar, String str, long j4) {
        G0(bVar, "videoDecoderInitialized", str);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void q(j1.b bVar, int i4) {
        G0(bVar, "audioSessionId", Integer.toString(i4));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void q0(j1.b bVar, Format format, @Nullable com.google.android.exoplayer2.decoder.e eVar) {
        G0(bVar, "audioInputFormat", Format.toLogString(format));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void r(j1.b bVar, Format format) {
        i1.n0(this, bVar, format);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void r0(j1.b bVar, Object obj, long j4) {
        G0(bVar, "renderedFirstFrame", String.valueOf(obj));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void s(j1.b bVar, long j4) {
        i1.j(this, bVar, j4);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void s0(j1.b bVar, int i4, com.google.android.exoplayer2.decoder.d dVar) {
        i1.o(this, bVar, i4, dVar);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void t(j1.b bVar, int i4, int i10) {
        StringBuilder sb = new StringBuilder(24);
        sb.append(i4);
        sb.append(", ");
        sb.append(i10);
        G0(bVar, "surfaceSize", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void t0(j1.b bVar, List<Metadata> list) {
        String valueOf = String.valueOf(v0(bVar));
        H0(valueOf.length() != 0 ? "staticMetadata [".concat(valueOf) : new String("staticMetadata ["));
        for (int i4 = 0; i4 < list.size(); i4++) {
            Metadata metadata = list.get(i4);
            if (metadata.length() != 0) {
                StringBuilder sb = new StringBuilder(24);
                sb.append("  Metadata:");
                sb.append(i4);
                sb.append(" [");
                H0(sb.toString());
                M0(metadata, "    ");
                H0("  ]");
            }
        }
        H0("]");
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void u(j1.b bVar, boolean z9) {
        G0(bVar, "shuffleModeEnabled", Boolean.toString(z9));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void u0(j1.b bVar, boolean z9) {
        G0(bVar, "loading", Boolean.toString(z9));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void v(j1.b bVar, int i4, long j4) {
        G0(bVar, "droppedFrames", Integer.toString(i4));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void w(j1.b bVar, Exception exc) {
        i1.l(this, bVar, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void x(j1.b bVar, boolean z9) {
        G0(bVar, "skipSilenceEnabled", Boolean.toString(z9));
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public void y(j1.b bVar, boolean z9, int i4) {
        String x02 = x0(i4);
        StringBuilder sb = new StringBuilder(String.valueOf(x02).length() + 7);
        sb.append(z9);
        sb.append(", ");
        sb.append(x02);
        G0(bVar, "playWhenReady", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.j1
    public /* synthetic */ void z(j1.b bVar, String str, long j4, long j10) {
        i1.i0(this, bVar, str, j4, j10);
    }

    public l(@Nullable com.google.android.exoplayer2.trackselection.i iVar, String str) {
        this.f27573c0 = iVar;
        this.f27574d0 = str;
        this.f27575e0 = new s2.d();
        this.f27576f0 = new s2.b();
        this.f27577g0 = SystemClock.elapsedRealtime();
    }
}
