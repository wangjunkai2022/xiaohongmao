package com.google.android.exoplayer2.source.mediaparser;

import android.annotation.SuppressLint;
import android.media.DrmInitData;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaParser;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.extractor.e;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.upstream.i;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.u0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.common.collect.ImmutableList;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: OutputConsumerAdapterV30.java */
@RequiresApi(30)
@SuppressLint({"Override"})
/* loaded from: classes2.dex */
public final class c implements MediaParser.OutputConsumer {
    private static final String A = "chunk-index-long-us-times";
    private static final Pattern B;

    /* renamed from: u  reason: collision with root package name */
    private static final String f25019u = "OutputConsumerAdapterV30";

    /* renamed from: v  reason: collision with root package name */
    private static final Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> f25020v;

    /* renamed from: w  reason: collision with root package name */
    private static final String f25021w = "track-type-string";

    /* renamed from: x  reason: collision with root package name */
    private static final String f25022x = "chunk-index-int-sizes";

    /* renamed from: y  reason: collision with root package name */
    private static final String f25023y = "chunk-index-long-offsets";

    /* renamed from: z  reason: collision with root package name */
    private static final String f25024z = "chunk-index-long-us-durations";

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<e0> f25025a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<Format> f25026b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<MediaCodec.CryptoInfo> f25027c;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<e0.a> f25028d;

    /* renamed from: e  reason: collision with root package name */
    private final b f25029e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f25030f;

    /* renamed from: g  reason: collision with root package name */
    private final int f25031g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final Format f25032h;

    /* renamed from: i  reason: collision with root package name */
    private m f25033i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private MediaParser.SeekMap f25034j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private MediaParser.SeekMap f25035k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f25036l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private e f25037m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private u0 f25038n;

    /* renamed from: o  reason: collision with root package name */
    private List<Format> f25039o;

    /* renamed from: p  reason: collision with root package name */
    private int f25040p;

    /* renamed from: q  reason: collision with root package name */
    private long f25041q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f25042r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f25043s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f25044t;

    /* compiled from: OutputConsumerAdapterV30.java */
    /* loaded from: classes2.dex */
    private static final class b implements i {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public MediaParser.InputReader f25045b;

        private b() {
        }

        @Override // com.google.android.exoplayer2.upstream.i
        public int read(byte[] bArr, int i4, int i10) throws IOException {
            return ((MediaParser.InputReader) z0.k(this.f25045b)).read(bArr, i4, i10);
        }
    }

    /* compiled from: OutputConsumerAdapterV30.java */
    /* renamed from: com.google.android.exoplayer2.source.mediaparser.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static final class C0176c implements b0 {

        /* renamed from: d  reason: collision with root package name */
        private final MediaParser.SeekMap f25046d;

        public C0176c(MediaParser.SeekMap seekMap) {
            this.f25046d = seekMap;
        }

        private static c0 a(MediaParser.SeekPoint seekPoint) {
            return new c0(seekPoint.timeMicros, seekPoint.position);
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public b0.a e(long j4) {
            Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> seekPoints = this.f25046d.getSeekPoints(j4);
            Object obj = seekPoints.first;
            if (obj == seekPoints.second) {
                return new b0.a(a((MediaParser.SeekPoint) obj));
            }
            return new b0.a(a((MediaParser.SeekPoint) obj), a((MediaParser.SeekPoint) seekPoints.second));
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public boolean g() {
            return this.f25046d.isSeekable();
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public long i() {
            long durationMicros = this.f25046d.getDurationMicros();
            return durationMicros != -2147483648L ? durationMicros : com.google.android.exoplayer2.i.f23649b;
        }
    }

    static {
        MediaParser.SeekPoint seekPoint = MediaParser.SeekPoint.START;
        f25020v = Pair.create(seekPoint, seekPoint);
        B = Pattern.compile("pattern \\(encrypt: (\\d+), skip: (\\d+)\\)");
    }

    public c() {
        this(null, 7, false);
    }

    private void b(int i4) {
        for (int size = this.f25025a.size(); size <= i4; size++) {
            this.f25025a.add(null);
            this.f25026b.add(null);
            this.f25027c.add(null);
            this.f25028d.add(null);
        }
    }

    private static byte[] c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return bArr;
    }

    @Nullable
    private static ColorInfo e(MediaFormat mediaFormat) {
        ByteBuffer byteBuffer = mediaFormat.getByteBuffer("hdr-static-info");
        byte[] c10 = byteBuffer != null ? c(byteBuffer) : null;
        int integer = mediaFormat.getInteger("color-transfer", -1);
        int integer2 = mediaFormat.getInteger("color-range", -1);
        int integer3 = mediaFormat.getInteger("color-standard", -1);
        if (c10 == null && integer == -1 && integer2 == -1 && integer3 == -1) {
            return null;
        }
        return new ColorInfo(integer3, integer2, integer, c10);
    }

    private static int g(MediaFormat mediaFormat, String str, int i4) {
        if (mediaFormat.getInteger(str, 0) != 0) {
            return i4;
        }
        return 0;
    }

    private static List<byte[]> h(MediaFormat mediaFormat) {
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (true) {
            int i10 = i4 + 1;
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i4);
            ByteBuffer byteBuffer = mediaFormat.getByteBuffer(sb.toString());
            if (byteBuffer == null) {
                return arrayList;
            }
            arrayList.add(c(byteBuffer));
            i4 = i10;
        }
    }

    private static String i(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2063506020:
                if (str.equals("android.media.mediaparser.Mp4Parser")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1870824006:
                if (str.equals("android.media.mediaparser.OggParser")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1566427438:
                if (str.equals("android.media.mediaparser.TsParser")) {
                    c10 = 2;
                    break;
                }
                break;
            case -900207883:
                if (str.equals("android.media.mediaparser.AdtsParser")) {
                    c10 = 3;
                    break;
                }
                break;
            case -589864617:
                if (str.equals("android.media.mediaparser.WavParser")) {
                    c10 = 4;
                    break;
                }
                break;
            case 52265814:
                if (str.equals("android.media.mediaparser.PsParser")) {
                    c10 = 5;
                    break;
                }
                break;
            case 116768877:
                if (str.equals("android.media.mediaparser.FragmentedMp4Parser")) {
                    c10 = 6;
                    break;
                }
                break;
            case 376876796:
                if (str.equals("android.media.mediaparser.Ac3Parser")) {
                    c10 = 7;
                    break;
                }
                break;
            case 703268017:
                if (str.equals("android.media.mediaparser.AmrParser")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 768643067:
                if (str.equals("android.media.mediaparser.FlacParser")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 965962719:
                if (str.equals("android.media.mediaparser.MatroskaParser")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1264380477:
                if (str.equals("android.media.mediaparser.Ac4Parser")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1343957595:
                if (str.equals("android.media.mediaparser.Mp3Parser")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 2063134683:
                if (str.equals("android.media.mediaparser.FlvParser")) {
                    c10 = '\r';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 6:
                return a0.f27441f;
            case 1:
                return a0.f27434b0;
            case 2:
                return a0.f27459o;
            case 3:
                return "audio/mp4a-latm";
            case 4:
                return a0.I;
            case 5:
                return a0.f27465r;
            case 7:
                return a0.L;
            case '\b':
                return a0.V;
            case '\t':
                return a0.Y;
            case '\n':
                return a0.f27445h;
            case 11:
                return a0.O;
            case '\f':
                return a0.D;
            case '\r':
                return a0.f27473v;
            default:
                throw new IllegalArgumentException(str.length() != 0 ? "Illegal parser name: ".concat(str) : new String("Illegal parser name: "));
        }
    }

    private static int l(MediaFormat mediaFormat) {
        return g(mediaFormat, "is-forced-subtitle", 2) | g(mediaFormat, "is-autoselect", 4) | 0 | g(mediaFormat, "is-default", 1);
    }

    private void m() {
        if (!this.f25042r || this.f25043s) {
            return;
        }
        int size = this.f25025a.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (this.f25025a.get(i4) == null) {
                return;
            }
        }
        this.f25033i.t();
        this.f25043s = true;
    }

    private boolean n(MediaFormat mediaFormat) {
        ByteBuffer byteBuffer = mediaFormat.getByteBuffer(f25022x);
        if (byteBuffer == null) {
            return false;
        }
        IntBuffer asIntBuffer = byteBuffer.asIntBuffer();
        LongBuffer asLongBuffer = ((ByteBuffer) com.google.android.exoplayer2.util.a.g(mediaFormat.getByteBuffer(f25023y))).asLongBuffer();
        LongBuffer asLongBuffer2 = ((ByteBuffer) com.google.android.exoplayer2.util.a.g(mediaFormat.getByteBuffer(f25024z))).asLongBuffer();
        LongBuffer asLongBuffer3 = ((ByteBuffer) com.google.android.exoplayer2.util.a.g(mediaFormat.getByteBuffer(A))).asLongBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        long[] jArr = new long[asLongBuffer.remaining()];
        long[] jArr2 = new long[asLongBuffer2.remaining()];
        long[] jArr3 = new long[asLongBuffer3.remaining()];
        asIntBuffer.get(iArr);
        asLongBuffer.get(jArr);
        asLongBuffer2.get(jArr2);
        asLongBuffer3.get(jArr3);
        e eVar = new e(iArr, jArr, jArr2, jArr3);
        this.f25037m = eVar;
        this.f25033i.q(eVar);
        return true;
    }

    @Nullable
    private e0.a t(int i4, @Nullable MediaCodec.CryptoInfo cryptoInfo) {
        int i10;
        if (cryptoInfo == null) {
            return null;
        }
        if (this.f25027c.get(i4) == cryptoInfo) {
            return (e0.a) com.google.android.exoplayer2.util.a.g(this.f25028d.get(i4));
        }
        int i11 = 0;
        try {
            Matcher matcher = B.matcher(cryptoInfo.toString());
            matcher.find();
            int parseInt = Integer.parseInt((String) z0.k(matcher.group(1)));
            i10 = Integer.parseInt((String) z0.k(matcher.group(2)));
            i11 = parseInt;
        } catch (RuntimeException e4) {
            String valueOf = String.valueOf(cryptoInfo);
            StringBuilder sb = new StringBuilder(valueOf.length() + 43);
            sb.append("Unexpected error while parsing CryptoInfo: ");
            sb.append(valueOf);
            w.e(f25019u, sb.toString(), e4);
            i10 = 0;
        }
        e0.a aVar = new e0.a(cryptoInfo.mode, cryptoInfo.key, i11, i10);
        this.f25027c.set(i4, cryptoInfo);
        this.f25028d.set(i4, aVar);
        return aVar;
    }

    @Nullable
    private static DrmInitData u(@Nullable String str, @Nullable android.media.DrmInitData drmInitData) {
        if (drmInitData == null) {
            return null;
        }
        int schemeInitDataCount = drmInitData.getSchemeInitDataCount();
        DrmInitData.SchemeData[] schemeDataArr = new DrmInitData.SchemeData[schemeInitDataCount];
        for (int i4 = 0; i4 < schemeInitDataCount; i4++) {
            DrmInitData.SchemeInitData schemeInitDataAt = drmInitData.getSchemeInitDataAt(i4);
            schemeDataArr[i4] = new DrmInitData.SchemeData(schemeInitDataAt.uuid, schemeInitDataAt.mimeType, schemeInitDataAt.data);
        }
        return new com.google.android.exoplayer2.drm.DrmInitData(str, schemeDataArr);
    }

    private Format v(MediaParser.TrackData trackData) {
        MediaFormat mediaFormat = trackData.mediaFormat;
        String string = mediaFormat.getString(com.ksyun.media.player.misc.c.f45557a);
        int integer = mediaFormat.getInteger("caption-service-number", -1);
        int i4 = 0;
        Format.b F = new Format.b().L(u(mediaFormat.getString("crypto-mode-fourcc"), trackData.drmInitData)).K(this.f25036l).Z(mediaFormat.getInteger(KSYMediaMeta.IJKM_KEY_BITRATE, -1)).H(mediaFormat.getInteger("channel-count", -1)).J(e(mediaFormat)).e0(string).I(mediaFormat.getString("codecs-string")).P(mediaFormat.getFloat("frame-rate", -1.0f)).j0(mediaFormat.getInteger("width", -1)).Q(mediaFormat.getInteger("height", -1)).T(h(mediaFormat)).V(mediaFormat.getString("language")).W(mediaFormat.getInteger("max-input-size", -1)).Y(mediaFormat.getInteger("exo-pcm-encoding", -1)).d0(mediaFormat.getInteger("rotation-degrees", 0)).f0(mediaFormat.getInteger("sample-rate", -1)).g0(l(mediaFormat)).M(mediaFormat.getInteger("encoder-delay", 0)).N(mediaFormat.getInteger("encoder-padding", 0)).a0(mediaFormat.getFloat("pixel-width-height-ratio-float", 1.0f)).i0(mediaFormat.getLong("subsample-offset-us-long", Long.MAX_VALUE)).F(integer);
        while (true) {
            if (i4 >= this.f25039o.size()) {
                break;
            }
            Format format = this.f25039o.get(i4);
            if (z0.c(format.sampleMimeType, string) && format.accessibilityChannel == integer) {
                F.V(format.language).c0(format.roleFlags).g0(format.selectionFlags).U(format.label).X(format.metadata);
                break;
            }
            i4++;
        }
        return F.E();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int w(@Nullable String str) {
        char c10;
        if (str == null) {
            return -1;
        }
        switch (str.hashCode()) {
            case -450004177:
                if (str.equals(com.google.android.exoplayer2.text.ttml.d.f25744y)) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -284840886:
                if (str.equals("unknown")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 3556653:
                if (str.equals("text")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 93166550:
                if (str.equals("audio")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 112202875:
                if (str.equals("video")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                return 5;
            case 1:
                return -1;
            case 2:
                return 3;
            case 3:
                return 1;
            case 4:
                return 2;
            default:
                return a0.l(str);
        }
    }

    public void a() {
        this.f25044t = true;
    }

    @Nullable
    public e d() {
        return this.f25037m;
    }

    @Nullable
    public MediaParser.SeekMap f() {
        return this.f25034j;
    }

    @Nullable
    public Format[] j() {
        if (this.f25042r) {
            Format[] formatArr = new Format[this.f25026b.size()];
            for (int i4 = 0; i4 < this.f25026b.size(); i4++) {
                formatArr[i4] = (Format) com.google.android.exoplayer2.util.a.g(this.f25026b.get(i4));
            }
            return formatArr;
        }
        return null;
    }

    public Pair<MediaParser.SeekPoint, MediaParser.SeekPoint> k(long j4) {
        MediaParser.SeekMap seekMap = this.f25035k;
        return seekMap != null ? seekMap.getSeekPoints(j4) : f25020v;
    }

    public void o(m mVar) {
        this.f25033i = mVar;
    }

    @Override // android.media.MediaParser.OutputConsumer
    public void onSampleCompleted(int i4, long j4, int i10, int i11, int i12, @Nullable MediaCodec.CryptoInfo cryptoInfo) {
        long j10 = this.f25041q;
        if (j10 == com.google.android.exoplayer2.i.f23649b || j4 < j10) {
            u0 u0Var = this.f25038n;
            if (u0Var != null) {
                j4 = u0Var.a(j4);
            }
            ((e0) com.google.android.exoplayer2.util.a.g(this.f25025a.get(i4))).e(j4, i10, i11, i12, t(i4, cryptoInfo));
        }
    }

    @Override // android.media.MediaParser.OutputConsumer
    public void onSampleDataFound(int i4, MediaParser.InputReader inputReader) throws IOException {
        b(i4);
        this.f25029e.f25045b = inputReader;
        e0 e0Var = this.f25025a.get(i4);
        if (e0Var == null) {
            e0Var = this.f25033i.f(i4, -1);
            this.f25025a.set(i4, e0Var);
        }
        e0Var.b(this.f25029e, (int) inputReader.getLength(), true);
    }

    @Override // android.media.MediaParser.OutputConsumer
    public void onSeekMapFound(MediaParser.SeekMap seekMap) {
        b0 c0176c;
        if (this.f25030f && this.f25034j == null) {
            this.f25034j = seekMap;
            return;
        }
        this.f25035k = seekMap;
        long durationMicros = seekMap.getDurationMicros();
        m mVar = this.f25033i;
        if (this.f25044t) {
            if (durationMicros == -2147483648L) {
                durationMicros = com.google.android.exoplayer2.i.f23649b;
            }
            c0176c = new b0.b(durationMicros);
        } else {
            c0176c = new C0176c(seekMap);
        }
        mVar.q(c0176c);
    }

    @Override // android.media.MediaParser.OutputConsumer
    public void onTrackCountFound(int i4) {
        this.f25042r = true;
        m();
    }

    @Override // android.media.MediaParser.OutputConsumer
    public void onTrackDataFound(int i4, MediaParser.TrackData trackData) {
        if (n(trackData.mediaFormat)) {
            return;
        }
        b(i4);
        e0 e0Var = this.f25025a.get(i4);
        if (e0Var == null) {
            String string = trackData.mediaFormat.getString(f25021w);
            int w9 = w(string != null ? string : trackData.mediaFormat.getString(com.ksyun.media.player.misc.c.f45557a));
            if (w9 == this.f25031g) {
                this.f25040p = i4;
            }
            e0 f10 = this.f25033i.f(i4, w9);
            this.f25025a.set(i4, f10);
            if (string != null) {
                return;
            }
            e0Var = f10;
        }
        Format v9 = v(trackData);
        Format format = this.f25032h;
        e0Var.d((format == null || i4 != this.f25040p) ? v9 : v9.withManifestFormatInfo(format));
        this.f25026b.set(i4, v9);
        m();
    }

    public void p(List<Format> list) {
        this.f25039o = list;
    }

    public void q(long j4) {
        this.f25041q = j4;
    }

    public void r(String str) {
        this.f25036l = i(str);
    }

    public void s(u0 u0Var) {
        this.f25038n = u0Var;
    }

    public c(@Nullable Format format, int i4, boolean z9) {
        this.f25030f = z9;
        this.f25032h = format;
        this.f25031g = i4;
        this.f25025a = new ArrayList<>();
        this.f25026b = new ArrayList<>();
        this.f25027c = new ArrayList<>();
        this.f25028d = new ArrayList<>();
        this.f25029e = new b();
        this.f25033i = new com.google.android.exoplayer2.extractor.i();
        this.f25041q = com.google.android.exoplayer2.i.f23649b;
        this.f25039o = ImmutableList.of();
    }
}
