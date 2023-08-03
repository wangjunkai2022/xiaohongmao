.class public Lcom/google/android/exoplayer2/extractor/mkv/e;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mkv/e$d;,
        Lcom/google/android/exoplayer2/extractor/mkv/e$e;,
        Lcom/google/android/exoplayer2/extractor/mkv/e$c;,
        Lcom/google/android/exoplayer2/extractor/mkv/e$b;
    }
.end annotation


# static fields
.field private static final A0:Ljava/lang/String; = "A_AAC"

.field private static final A1:I = 0x55aa

.field private static final A2:I = 0x55d0

.field private static final B0:Ljava/lang/String; = "A_MPEG/L2"

.field private static final B1:I = 0x23e383

.field private static final B2:I = 0x55d1

.field private static final C0:Ljava/lang/String; = "A_MPEG/L3"

.field private static final C1:I = 0x55ee

.field private static final C2:I = 0x55d2

.field private static final D0:Ljava/lang/String; = "A_AC3"

.field private static final D1:I = 0x41e4

.field private static final D2:I = 0x55d3

.field private static final E0:Ljava/lang/String; = "A_EAC3"

.field private static final E1:I = 0x41e7

.field private static final E2:I = 0x55d4

.field private static final F0:Ljava/lang/String; = "A_TRUEHD"

.field private static final F1:I = 0x41ed

.field private static final F2:I = 0x55d5

.field private static final G0:Ljava/lang/String; = "A_DTS"

.field private static final G1:I = 0x536e

.field private static final G2:I = 0x55d6

.field private static final H0:Ljava/lang/String; = "A_DTS/EXPRESS"

.field private static final H1:I = 0x86

.field private static final H2:I = 0x55d7

.field private static final I0:Ljava/lang/String; = "A_DTS/LOSSLESS"

.field private static final I1:I = 0x63a2

.field private static final I2:I = 0x55d8

.field private static final J0:Ljava/lang/String; = "A_FLAC"

.field private static final J1:I = 0x56aa

.field private static final J2:I = 0x55d9

.field private static final K0:Ljava/lang/String; = "A_MS/ACM"

.field private static final K1:I = 0x56bb

.field private static final K2:I = 0x55da

.field private static final L0:Ljava/lang/String; = "A_PCM/INT/LIT"

.field private static final L1:I = 0xe0

.field private static final L2:I = 0x4

.field private static final M0:Ljava/lang/String; = "A_PCM/INT/BIG"

.field private static final M1:I = 0xb0

.field private static final M2:I = 0x64766343

.field private static final N0:Ljava/lang/String; = "A_PCM/FLOAT/IEEE"

.field private static final N1:I = 0xba

.field private static final N2:I = 0x64767643

.field private static final O0:Ljava/lang/String; = "S_TEXT/UTF8"

.field private static final O1:I = 0x54b0

.field private static final O2:I = 0x0

.field private static final P0:Ljava/lang/String; = "S_TEXT/ASS"

.field private static final P1:I = 0x54ba

.field private static final P2:I = 0x1

.field private static final Q0:Ljava/lang/String; = "S_VOBSUB"

.field private static final Q1:I = 0x54b2

.field private static final Q2:I = 0x2

.field private static final R0:Ljava/lang/String; = "S_HDMV/PGS"

.field private static final R1:I = 0xe1

.field private static final R2:I = 0x3

.field private static final S0:Ljava/lang/String; = "S_DVBSUB"

.field private static final S1:I = 0x9f

.field private static final S2:I = 0x58564944

.field private static final T0:I = 0x2000

.field private static final T1:I = 0x6264

.field private static final T2:I = 0x33363248

.field private static final U0:I = 0x1680

.field private static final U1:I = 0xb5

.field private static final U2:I = 0x31435657

.field private static final V0:I = 0x8

.field private static final V1:I = 0x6d80

.field private static final V2:[B

.field private static final W0:I = 0x2

.field private static final W1:I = 0x6240

.field private static final W2:I = 0x13

.field private static final X0:I = 0x1a45dfa3

.field private static final X1:I = 0x5031

.field private static final X2:J = 0x3e8L

.field private static final Y0:I = 0x42f7

.field private static final Y1:I = 0x5032

.field private static final Y2:Ljava/lang/String; = "%02d:%02d:%02d,%03d"

.field private static final Z0:I = 0x4282

.field private static final Z1:I = 0x5034

.field private static final Z2:[B

.field private static final a1:I = 0x4285

.field private static final a2:I = 0x4254

.field private static final a3:[B

.field private static final b1:I = 0x18538067

.field private static final b2:I = 0x4255

.field private static final b3:I = 0x15

.field private static final c1:I = 0x1549a966

.field private static final c2:I = 0x5035

.field private static final c3:J = 0x2710L

.field private static final d1:I = 0x114d9b74

.field private static final d2:I = 0x47e1

.field private static final d3:Ljava/lang/String; = "%01d:%02d:%02d:%02d"

.field public static final e0:Lcom/google/android/exoplayer2/extractor/q;

.field private static final e1:I = 0x4dbb

.field private static final e2:I = 0x47e2

.field private static final e3:I = 0x12

.field public static final f0:I = 0x1

.field private static final f1:I = 0x53ab

.field private static final f2:I = 0x47e7

.field private static final f3:I = 0xfffe

.field private static final g0:Ljava/lang/String; = "MatroskaExtractor"

.field private static final g1:I = 0x53ac

.field private static final g2:I = 0x47e8

.field private static final g3:I = 0x1

.field private static final h0:I = -0x1

.field private static final h1:I = 0x1549a966

.field private static final h2:I = 0x1c53bb6b

.field private static final h3:Ljava/util/UUID;

.field private static final i0:I = 0x0

.field private static final i1:I = 0x2ad7b1

.field private static final i2:I = 0xbb

.field private static final i3:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final j0:I = 0x1

.field private static final j1:I = 0x4489

.field private static final j2:I = 0xb3

.field private static final k0:I = 0x2

.field private static final k1:I = 0x1f43b675

.field private static final k2:I = 0xb7

.field private static final l0:Ljava/lang/String; = "matroska"

.field private static final l1:I = 0xe7

.field private static final l2:I = 0xf1

.field private static final m0:Ljava/lang/String; = "webm"

.field private static final m1:I = 0xa3

.field private static final m2:I = 0x22b59c

.field private static final n0:Ljava/lang/String; = "V_VP8"

.field private static final n1:I = 0xa0

.field private static final n2:I = 0x7670

.field private static final o0:Ljava/lang/String; = "V_VP9"

.field private static final o1:I = 0xa1

.field private static final o2:I = 0x7671

.field private static final p0:Ljava/lang/String; = "V_AV1"

.field private static final p1:I = 0x9b

.field private static final p2:I = 0x7672

.field private static final q0:Ljava/lang/String; = "V_MPEG2"

.field private static final q1:I = 0x75a1

.field private static final q2:I = 0x7673

.field private static final r0:Ljava/lang/String; = "V_MPEG4/ISO/SP"

.field private static final r1:I = 0xa6

.field private static final r2:I = 0x7674

.field private static final s0:Ljava/lang/String; = "V_MPEG4/ISO/ASP"

.field private static final s1:I = 0xee

.field private static final s2:I = 0x7675

.field private static final t0:Ljava/lang/String; = "V_MPEG4/ISO/AP"

.field private static final t1:I = 0xa5

.field private static final t2:I = 0x53b8

.field private static final u0:Ljava/lang/String; = "V_MPEG4/ISO/AVC"

.field private static final u1:I = 0xfb

.field private static final u2:I = 0x55b0

.field private static final v0:Ljava/lang/String; = "V_MPEGH/ISO/HEVC"

.field private static final v1:I = 0x1654ae6b

.field private static final v2:I = 0x55b9

.field private static final w0:Ljava/lang/String; = "V_MS/VFW/FOURCC"

.field private static final w1:I = 0xae

.field private static final w2:I = 0x55ba

.field private static final x0:Ljava/lang/String; = "V_THEORA"

.field private static final x1:I = 0xd7

.field private static final x2:I = 0x55bb

.field private static final y0:Ljava/lang/String; = "A_VORBIS"

.field private static final y1:I = 0x83

.field private static final y2:I = 0x55bc

.field private static final z0:Ljava/lang/String; = "A_OPUS"

.field private static final z1:I = 0x88

.field private static final z2:I = 0x55bd


# instance fields
.field private A:J

.field private B:Z

.field private C:J

.field private D:J

.field private E:J

.field private F:Lcom/google/android/exoplayer2/util/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private G:Lcom/google/android/exoplayer2/util/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private H:Z

.field private I:Z

.field private J:I

.field private K:J

.field private L:J

.field private M:I

.field private N:I

.field private O:[I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:Z

.field private U:I

.field private V:I

.field private W:I

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private a0:I

.field private b0:B

.field private c0:Z

.field private final d:Lcom/google/android/exoplayer2/extractor/mkv/c;

.field private d0:Lcom/google/android/exoplayer2/extractor/m;

.field private final e:Lcom/google/android/exoplayer2/extractor/mkv/g;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mkv/e$d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z

.field private final h:Lcom/google/android/exoplayer2/util/h0;

.field private final i:Lcom/google/android/exoplayer2/util/h0;

.field private final j:Lcom/google/android/exoplayer2/util/h0;

.field private final k:Lcom/google/android/exoplayer2/util/h0;

.field private final l:Lcom/google/android/exoplayer2/util/h0;

.field private final m:Lcom/google/android/exoplayer2/util/h0;

.field private final n:Lcom/google/android/exoplayer2/util/h0;

.field private final o:Lcom/google/android/exoplayer2/util/h0;

.field private final p:Lcom/google/android/exoplayer2/util/h0;

.field private final q:Lcom/google/android/exoplayer2/util/h0;

.field private r:Ljava/nio/ByteBuffer;

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mkv/d;->b:Lcom/google/android/exoplayer2/extractor/mkv/d;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/e;->e0:Lcom/google/android/exoplayer2/extractor/q;

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 2
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/extractor/mkv/e;->V2:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/z0;->u0(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/mkv/e;->Z2:[B

    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/e;->a3:[B

    .line 5
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/e;->h3:Ljava/util/UUID;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/e;->i3:Ljava/util/Map;

    return-void

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mkv/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/a;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;-><init>(Lcom/google/android/exoplayer2/extractor/mkv/c;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/c;I)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->t:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->u:J

    .line 6
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->v:J

    .line 7
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->w:J

    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->C:J

    .line 9
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->D:J

    .line 10
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->E:J

    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->d:Lcom/google/android/exoplayer2/extractor/mkv/c;

    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e$c;-><init>(Lcom/google/android/exoplayer2/extractor/mkv/e;Lcom/google/android/exoplayer2/extractor/mkv/e$a;)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/mkv/c;->b(Lcom/google/android/exoplayer2/extractor/mkv/b;)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->g:Z

    .line 14
    new-instance p2, Lcom/google/android/exoplayer2/extractor/mkv/g;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/mkv/g;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->e:Lcom/google/android/exoplayer2/extractor/mkv/g;

    .line 15
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->f:Landroid/util/SparseArray;

    .line 16
    new-instance p2, Lcom/google/android/exoplayer2/util/h0;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    .line 17
    new-instance p2, Lcom/google/android/exoplayer2/util/h0;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/google/android/exoplayer2/util/h0;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->k:Lcom/google/android/exoplayer2/util/h0;

    .line 18
    new-instance p2, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->l:Lcom/google/android/exoplayer2/util/h0;

    .line 19
    new-instance p2, Lcom/google/android/exoplayer2/util/h0;

    sget-object v1, Lcom/google/android/exoplayer2/util/b0;->b:[B

    invoke-direct {p2, v1}, Lcom/google/android/exoplayer2/util/h0;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->h:Lcom/google/android/exoplayer2/util/h0;

    .line 20
    new-instance p2, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->i:Lcom/google/android/exoplayer2/util/h0;

    .line 21
    new-instance p2, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/h0;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->m:Lcom/google/android/exoplayer2/util/h0;

    .line 22
    new-instance p2, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/h0;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    .line 23
    new-instance p2, Lcom/google/android/exoplayer2/util/h0;

    const/16 v0, 0x8

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->o:Lcom/google/android/exoplayer2/util/h0;

    .line 24
    new-instance p2, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/h0;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->p:Lcom/google/android/exoplayer2/util/h0;

    .line 25
    new-instance p2, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/h0;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->q:Lcom/google/android/exoplayer2/util/h0;

    new-array p1, p1, [I

    .line 26
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    return-void
.end method

.method private static synthetic A()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/k;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/mkv/e;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mkv/e;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private B(Lcom/google/android/exoplayer2/extractor/z;J)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->B:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->D:J

    .line 3
    iget-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->C:J

    iput-wide p2, p1, Lcom/google/android/exoplayer2/extractor/z;->a:J

    .line 4
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->B:Z

    return v1

    .line 5
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->y:Z

    if-eqz p2, :cond_1

    iget-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->D:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    .line 6
    iput-wide p2, p1, Lcom/google/android/exoplayer2/extractor/z;->a:J

    .line 7
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->D:J

    return v1

    :cond_1
    return v2
.end method

.method private C(Lcom/google/android/exoplayer2/extractor/l;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->b()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->c(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/h0;->R(I)V

    return-void
.end method

.method private D()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->W:I

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->X:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->Y:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->Z:Z

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->a0:I

    .line 8
    iput-byte v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->b0:B

    .line 9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->c0:Z

    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->m:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    return-void
.end method

.method private E(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->u:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/z0;->f1(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static F(Ljava/lang/String;J[B)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "S_TEXT/ASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x3e8

    const-string p0, "%02d:%02d:%02d,%03d"

    .line 2
    invoke-static {p1, p2, p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->s(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x13

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-wide/16 v0, 0x2710

    const-string p0, "%01d:%02d:%02d:%02d"

    .line 4
    invoke-static {p1, p2, p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->s(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x15

    :goto_0
    const/4 p2, 0x0

    .line 5
    array-length v0, p0

    invoke-static {p0, p2, p3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private I(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/mkv/e$d;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.output"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p2, Lcom/google/android/exoplayer2/extractor/mkv/e;->V2:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/e;->J(Lcom/google/android/exoplayer2/extractor/l;[BI)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/e;->q()I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p2, Lcom/google/android/exoplayer2/extractor/mkv/e;->a3:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/e;->J(Lcom/google/android/exoplayer2/extractor/l;[BI)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/e;->q()I

    move-result p1

    return p1

    .line 7
    :cond_1
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->X:Lcom/google/android/exoplayer2/extractor/e0;

    .line 8
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->X:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_11

    .line 9
    iget-boolean v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->h:Z

    if-eqz v1, :cond_e

    .line 10
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->R:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->R:I

    .line 11
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->Y:Z

    const/16 v6, 0x80

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, v4}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 13
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_2

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    aget-byte v1, v1, v5

    iput-byte v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->b0:B

    .line 16
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->Y:Z

    goto :goto_0

    .line 17
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    :goto_0
    iget-byte v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->b0:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_f

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 19
    :goto_2
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->R:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->R:I

    .line 20
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->c0:Z

    if-nez v7, :cond_7

    .line 21
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v7

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 22
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    .line 23
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->c0:Z

    .line 24
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v7

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    or-int/2addr v6, v8

    int-to-byte v6, v6

    .line 25
    aput-byte v6, v7, v5

    .line 26
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 27
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {v0, v6, v4, v4}, Lcom/google/android/exoplayer2/extractor/e0;->f(Lcom/google/android/exoplayer2/util/h0;II)V

    .line 28
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    .line 29
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 30
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {v0, v6, v8, v4}, Lcom/google/android/exoplayer2/extractor/e0;->f(Lcom/google/android/exoplayer2/util/h0;II)V

    .line 31
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    add-int/2addr v6, v8

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    :cond_7
    if-eqz v1, :cond_f

    .line 32
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->Z:Z

    if-nez v1, :cond_8

    .line 33
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, v4}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 34
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    .line 35
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 36
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->a0:I

    .line 37
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->Z:Z

    .line 38
    :cond_8
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->a0:I

    mul-int/lit8 v1, v1, 0x4

    .line 39
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 40
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v6

    invoke-interface {p1, v6, v5, v1}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 41
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    .line 42
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->a0:I

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    .line 43
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->r:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_9

    .line 44
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_a

    .line 45
    :cond_9
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->r:Ljava/nio/ByteBuffer;

    .line 46
    :cond_a
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 48
    :goto_4
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->a0:I

    if-ge v1, v8, :cond_c

    .line 49
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/h0;->K()I

    move-result v8

    .line 50
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_b

    .line 51
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->r:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 52
    :cond_b
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->r:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_4

    .line 53
    :cond_c
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    .line 54
    rem-int/2addr v8, v3

    if-ne v8, v4, :cond_d

    .line 55
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 56
    :cond_d
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->r:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 57
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 58
    :goto_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->p:Lcom/google/android/exoplayer2/util/h0;

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lcom/google/android/exoplayer2/util/h0;->Q([BI)V

    .line 59
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->p:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {v0, v1, v6, v4}, Lcom/google/android/exoplayer2/extractor/e0;->f(Lcom/google/android/exoplayer2/util/h0;II)V

    .line 60
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    goto :goto_7

    .line 61
    :cond_e
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->i:[B

    if-eqz v1, :cond_f

    .line 62
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->m:Lcom/google/android/exoplayer2/util/h0;

    array-length v7, v1

    invoke-virtual {v6, v1, v7}, Lcom/google/android/exoplayer2/util/h0;->Q([BI)V

    .line 63
    :cond_f
    :goto_7
    iget v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->f:I

    if-lez v1, :cond_10

    .line 64
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->R:I

    const/high16 v6, 0x10000000

    or-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->R:I

    .line 65
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->q:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 66
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 67
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 68
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    .line 69
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    shr-int/lit8 v6, p3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 70
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    const/4 v6, 0x3

    and-int/lit16 v7, p3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 71
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/e0;->f(Lcom/google/android/exoplayer2/util/h0;II)V

    .line 72
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    .line 73
    :cond_10
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->X:Z

    .line 74
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->m:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v1

    add-int/2addr p3, v1

    .line 75
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->b:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->b:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_a

    .line 76
    :cond_12
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->T:Lcom/google/android/exoplayer2/extractor/mkv/e$e;

    if-eqz v1, :cond_14

    .line 77
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->m:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    :goto_8
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 78
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->T:Lcom/google/android/exoplayer2/extractor/mkv/e$e;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->d(Lcom/google/android/exoplayer2/extractor/l;)V

    .line 79
    :cond_14
    :goto_9
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    if-ge v1, p3, :cond_17

    sub-int v1, p3, v1

    .line 80
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->K(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/e0;I)I

    move-result v1

    .line 81
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    .line 82
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    goto :goto_9

    .line 83
    :cond_15
    :goto_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->i:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    .line 84
    aput-byte v5, v1, v5

    .line 85
    aput-byte v5, v1, v4

    .line 86
    aput-byte v5, v1, v3

    .line 87
    iget v3, p2, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->Y:I

    rsub-int/lit8 v4, v3, 0x4

    .line 88
    :goto_b
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    if-ge v6, p3, :cond_17

    .line 89
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->W:I

    if-nez v6, :cond_16

    .line 90
    invoke-direct {p0, p1, v1, v4, v3}, Lcom/google/android/exoplayer2/extractor/mkv/e;->L(Lcom/google/android/exoplayer2/extractor/l;[BII)V

    .line 91
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    .line 92
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->i:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 93
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->i:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/h0;->K()I

    move-result v6

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->W:I

    .line 94
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->h:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 95
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->h:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {v0, v6, v2}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 96
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    goto :goto_b

    .line 97
    :cond_16
    invoke-direct {p0, p1, v0, v6}, Lcom/google/android/exoplayer2/extractor/mkv/e;->K(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/e0;I)I

    move-result v6

    .line 98
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->U:I

    .line 99
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    .line 100
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->W:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->W:I

    goto :goto_b

    .line 101
    :cond_17
    iget-object p1, p2, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 102
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->k:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 103
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->k:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 104
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    .line 105
    :cond_18
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/e;->q()I

    move-result p1

    return p1
.end method

.method private J(Lcom/google/android/exoplayer2/extractor/l;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    add-int/2addr v0, p3

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->b()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    add-int v3, v0, p3

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/h0;->P([B)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/h0;->R(I)V

    return-void
.end method

.method private K(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/e0;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->m:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->m:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {p2, p3, p1}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/extractor/e0;->b(Lcom/google/android/exoplayer2/upstream/i;IZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method private L(Lcom/google/android/exoplayer2/extractor/l;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->m:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int/2addr p4, v0

    .line 2
    invoke-interface {p1, p2, v1, p4}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    if-lez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->m:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/util/h0;->k([BII)V

    :cond_0
    return-void
.end method

.method public static synthetic e()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/e;->A()[Lcom/google/android/exoplayer2/extractor/k;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()[B
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/mkv/e;->Z2:[B

    return-object v0
.end method

.method static synthetic g()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/mkv/e;->i3:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/mkv/e;->h3:Ljava/util/UUID;

    return-object v0
.end method

.method private i(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "cueTimesUs",
            "cueClusterPositions"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->F:Lcom/google/android/exoplayer2/util/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->G:Lcom/google/android/exoplayer2/util/x;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Element "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "currentTrack"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const/16 v1, 0x2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Element "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->d0:Lcom/google/android/exoplayer2/extractor/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private m(Lcom/google/android/exoplayer2/util/x;Lcom/google/android/exoplayer2/util/x;)Lcom/google/android/exoplayer2/extractor/b0;
    .locals 11
    .param p1    # Lcom/google/android/exoplayer2/util/x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/util/x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->t:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->w:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/x;->c()I

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/x;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/x;->c()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/x;->c()I

    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 6
    new-array v2, v0, [J

    .line 7
    new-array v3, v0, [J

    .line 8
    new-array v4, v0, [J

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_1

    .line 9
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/x;->b(I)J

    move-result-wide v7

    aput-wide v7, v4, v6

    .line 10
    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->t:J

    invoke-virtual {p2, v6}, Lcom/google/android/exoplayer2/util/x;->b(I)J

    move-result-wide v9

    add-long/2addr v7, v9

    aput-wide v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v5, p1, :cond_2

    add-int/lit8 p1, v5, 0x1

    .line 11
    aget-wide v6, v2, p1

    aget-wide v8, v2, v5

    sub-long/2addr v6, v8

    long-to-int p2, v6

    aput p2, v1, v5

    .line 12
    aget-wide v6, v4, p1

    aget-wide v8, v4, v5

    sub-long/2addr v6, v8

    aput-wide v6, v3, v5

    move v5, p1

    goto :goto_1

    .line 13
    :cond_2
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->t:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->s:J

    add-long/2addr v5, v7

    aget-wide v7, v2, p1

    sub-long/2addr v5, v7

    long-to-int p2, v5

    aput p2, v1, p1

    .line 14
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->w:J

    aget-wide v7, v4, p1

    sub-long/2addr v5, v7

    aput-wide v5, v3, p1

    .line 15
    aget-wide v5, v3, p1

    const-wide/16 v7, 0x0

    cmp-long p2, v5, v7

    if-gtz p2, :cond_3

    const/16 p2, 0x48

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Discarding last cue point with unexpected duration: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MatroskaExtractor"

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 18
    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 19
    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 20
    invoke-static {v4, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 21
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/extractor/e;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/e;-><init>([I[J[J[J)V

    return-object p1

    .line 22
    :cond_4
    :goto_2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/b0$b;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->w:J

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(J)V

    return-object p1
.end method

.method private n(Lcom/google/android/exoplayer2/extractor/mkv/e$d;JIII)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->T:Lcom/google/android/exoplayer2/extractor/mkv/e$e;

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mkv/e$e;->c(Lcom/google/android/exoplayer2/extractor/mkv/e$d;JIII)V

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->N:I

    const-string v1, "MatroskaExtractor"

    if-le v0, v7, :cond_2

    const-string v0, "Skipping subtitle sample in laced block."

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->L:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const-string v0, "Skipping subtitle sample with no duration."

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_3
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->F(Ljava/lang/String;J[B)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-nez v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/h0;->R(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_5
    :goto_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->X:Lcom/google/android/exoplayer2/extractor/e0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v0

    add-int/2addr p5, v0

    :cond_6
    :goto_2
    const/high16 v0, 0x10000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_8

    .line 14
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->N:I

    if-le v0, v7, :cond_7

    const v0, -0x10000001

    and-int/2addr p4, v0

    goto :goto_3

    .line 15
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->q:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v0

    .line 16
    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->X:Lcom/google/android/exoplayer2/extractor/e0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->q:Lcom/google/android/exoplayer2/util/h0;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/extractor/e0;->f(Lcom/google/android/exoplayer2/util/h0;II)V

    add-int/2addr p5, v0

    :cond_8
    :goto_3
    move v3, p4

    move v4, p5

    .line 17
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->X:Lcom/google/android/exoplayer2/extractor/e0;

    iget-object v6, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->j:Lcom/google/android/exoplayer2/extractor/e0$a;

    move-wide v1, p2

    move v5, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 18
    :goto_4
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->I:Z

    return-void
.end method

.method private static p([II)[I
    .locals 1
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    .line 1
    new-array p0, p1, [I

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 3
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method private q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->V:I

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/e;->D()V

    return v0
.end method

.method private static s(JLjava/lang/String;J)[B
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    const-wide v2, 0xd693a400L

    .line 2
    div-long v2, p0, v2

    long-to-int v3, v2

    mul-int/lit16 v2, v3, 0xe10

    int-to-long v4, v2

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    const-wide/32 v4, 0x3938700

    .line 3
    div-long v4, p0, v4

    long-to-int v2, v4

    mul-int/lit8 v4, v2, 0x3c

    int-to-long v4, v4

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    .line 4
    div-long v4, p0, v6

    long-to-int v5, v4

    int-to-long v8, v5

    mul-long v8, v8, v6

    sub-long/2addr p0, v8

    .line 5
    div-long/2addr p0, p3

    long-to-int p1, p0

    .line 6
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v0

    const/4 p4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, p4

    invoke-static {p0, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/z0;->u0(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->j(I)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    return-object p1
.end method

.method private static y(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "A_OPUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "A_FLAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "A_EAC3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "V_MPEG2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "S_TEXT/ASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "A_PCM/INT/LIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "A_PCM/INT/BIG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "A_PCM/FLOAT/IEEE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "A_DTS/EXPRESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "V_THEORA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "S_HDMV/PGS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "V_VP9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "V_VP8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "V_AV1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "A_DTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "A_AC3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "A_AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "A_DTS/LOSSLESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "S_VOBSUB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "S_DVBSUB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "V_MS/VFW/FOURCC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_19
    const-string v0, "A_MPEG/L3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1a
    const-string v0, "A_MPEG/L2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1b
    const-string v0, "A_VORBIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1c
    const-string v0, "A_TRUEHD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1d
    const-string v0, "A_MS/ACM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1e
    const-string v0, "V_MPEG4/ISO/SP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1f
    const-string v0, "V_MPEG4/ISO/AP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1f
        -0x7ce7f3b0 -> :sswitch_1e
        -0x76567dc0 -> :sswitch_1d
        -0x6a615338 -> :sswitch_1c
        -0x672350af -> :sswitch_1b
        -0x585f4fce -> :sswitch_1a
        -0x585f4fcd -> :sswitch_19
        -0x51dc40b2 -> :sswitch_18
        -0x37a9c464 -> :sswitch_17
        -0x2016c535 -> :sswitch_16
        -0x2016c4e5 -> :sswitch_15
        -0x19552dbd -> :sswitch_14
        -0x1538b2ba -> :sswitch_13
        0x3c02325 -> :sswitch_12
        0x3c02353 -> :sswitch_11
        0x3c030c5 -> :sswitch_10
        0x4e81333 -> :sswitch_f
        0x4e86155 -> :sswitch_e
        0x4e86156 -> :sswitch_d
        0x5e8da3e -> :sswitch_c
        0x1a8350d6 -> :sswitch_b
        0x2056f406 -> :sswitch_a
        0x25e26ee2 -> :sswitch_9
        0x2b45174d -> :sswitch_8
        0x2b453ce4 -> :sswitch_7
        0x2c0618eb -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected G(IJJ)V
    .locals 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/e;->k()V

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    const/16 v0, 0xae

    if-eq p1, v0, :cond_a

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_6

    const v0, 0x18538067

    if-eq p1, v0, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->y:Z

    if-nez p1, :cond_c

    .line 3
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->g:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->C:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    .line 4
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->B:Z

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->d0:Lcom/google/android/exoplayer2/extractor/m;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/b0$b;

    iget-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->w:J

    invoke-direct {p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 6
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->y:Z

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/util/x;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/x;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->F:Lcom/google/android/exoplayer2/util/x;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/util/x;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/x;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->G:Lcom/google/android/exoplayer2/util/x;

    goto :goto_1

    .line 9
    :cond_3
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->t:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    cmp-long p1, v3, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    :goto_0
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->t:J

    .line 12
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->s:J

    goto :goto_1

    .line 13
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    iput-boolean v3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->x:Z

    goto :goto_1

    .line 14
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    iput-boolean v3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->h:Z

    goto :goto_1

    :cond_8
    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->z:I

    .line 16
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->A:J

    goto :goto_1

    .line 17
    :cond_9
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->H:Z

    goto :goto_1

    .line 18
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/mkv/e$d;-><init>(Lcom/google/android/exoplayer2/extractor/mkv/e$a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    goto :goto_1

    .line 19
    :cond_b
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->T:Z

    :cond_c
    :goto_1
    return-void
.end method

.method protected H(ILjava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->d(Lcom/google/android/exoplayer2/extractor/mkv/e$d;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    iput-object p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "webm"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocType "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    iput-object p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->b:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method public a(JJ)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->E:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->J:I

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->d:Lcom/google/android/exoplayer2/extractor/mkv/c;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/mkv/c;->reset()V

    .line 4
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->e:Lcom/google/android/exoplayer2/extractor/mkv/g;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/mkv/g;->e()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/e;->D()V

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->f:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->f:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->m()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mkv/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mkv/f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/f;->b(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result p1

    return p1
.end method

.method public final c(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->I:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 2
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->I:Z

    if-nez v3, :cond_1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->d:Lcom/google/android/exoplayer2/extractor/mkv/c;

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/extractor/mkv/c;->a(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v3

    invoke-direct {p0, p2, v3, v4}, Lcom/google/android/exoplayer2/extractor/mkv/e;->B(Lcom/google/android/exoplayer2/extractor/z;J)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    if-nez v2, :cond_3

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->a(Lcom/google/android/exoplayer2/extractor/mkv/e$d;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->i()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    return v0
.end method

.method public final d(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->d0:Lcom/google/android/exoplayer2/extractor/m;

    return-void
.end method

.method protected l(IILcom/google/android/exoplayer2/extractor/l;)V
    .locals 21
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v8, p3

    const/16 v2, 0xa1

    const/16 v3, 0xa3

    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_8

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_6

    const/16 v2, 0x41ed

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4255

    if-eq v0, v2, :cond_4

    const/16 v2, 0x47e2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x53ab

    if-eq v0, v2, :cond_2

    const/16 v2, 0x63a2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7672

    if-ne v0, v2, :cond_0

    .line 1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->j(I)V

    .line 2
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->v:[B

    .line 3
    invoke-interface {v8, v2, v9, v1}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    goto/16 :goto_c

    .line 4
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const/16 v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected id: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->j(I)V

    .line 6
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->k:[B

    .line 7
    invoke-interface {v8, v2, v9, v1}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    goto/16 :goto_c

    .line 8
    :cond_2
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->l:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 9
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->l:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    rsub-int/lit8 v2, v1, 0x4

    invoke-interface {v8, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 10
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->l:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 11
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->l:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->z:I

    goto/16 :goto_c

    .line 12
    :cond_3
    new-array v2, v1, [B

    .line 13
    invoke-interface {v8, v2, v9, v1}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 14
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/extractor/e0$a;

    invoke-direct {v1, v10, v2, v9, v9}, Lcom/google/android/exoplayer2/extractor/e0$a;-><init>(I[BII)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->j:Lcom/google/android/exoplayer2/extractor/e0$a;

    goto/16 :goto_c

    .line 15
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->j(I)V

    .line 16
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->i:[B

    .line 17
    invoke-interface {v8, v2, v9, v1}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    goto/16 :goto_c

    .line 18
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object v0

    invoke-virtual {v7, v0, v8, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->v(Lcom/google/android/exoplayer2/extractor/mkv/e$d;Lcom/google/android/exoplayer2/extractor/l;I)V

    goto/16 :goto_c

    .line 19
    :cond_6
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->J:I

    if-eq v0, v4, :cond_7

    return-void

    .line 20
    :cond_7
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->f:Landroid/util/SparseArray;

    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->P:I

    .line 21
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->S:I

    .line 22
    invoke-virtual {v7, v0, v2, v8, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->w(Lcom/google/android/exoplayer2/extractor/mkv/e$d;ILcom/google/android/exoplayer2/extractor/l;I)V

    goto/16 :goto_c

    .line 23
    :cond_8
    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->J:I

    const/16 v5, 0x8

    if-nez v2, :cond_9

    .line 24
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->e:Lcom/google/android/exoplayer2/extractor/mkv/g;

    invoke-virtual {v2, v8, v9, v10, v5}, Lcom/google/android/exoplayer2/extractor/mkv/g;->d(Lcom/google/android/exoplayer2/extractor/l;ZZI)J

    move-result-wide v11

    long-to-int v2, v11

    iput v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->P:I

    .line 25
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->e:Lcom/google/android/exoplayer2/extractor/mkv/g;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mkv/g;->b()I

    move-result v2

    iput v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->Q:I

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    iput-wide v11, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->L:J

    .line 27
    iput v10, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->J:I

    .line 28
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 29
    :cond_9
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->f:Landroid/util/SparseArray;

    iget v6, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->P:I

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    if-nez v11, :cond_a

    .line 30
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->Q:I

    sub-int v0, v1, v0

    invoke-interface {v8, v0}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    .line 31
    iput v9, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->J:I

    return-void

    .line 32
    :cond_a
    invoke-static {v11}, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->a(Lcom/google/android/exoplayer2/extractor/mkv/e$d;)V

    .line 33
    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->J:I

    if-ne v2, v10, :cond_1a

    const/4 v2, 0x3

    .line 34
    invoke-direct {v7, v8, v2}, Lcom/google/android/exoplayer2/extractor/mkv/e;->C(Lcom/google/android/exoplayer2/extractor/l;I)V

    .line 35
    iget-object v6, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v6

    aget-byte v6, v6, v4

    and-int/lit8 v6, v6, 0x6

    shr-int/2addr v6, v10

    const/16 v12, 0xff

    if-nez v6, :cond_b

    .line 36
    iput v10, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->N:I

    .line 37
    iget-object v6, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    invoke-static {v6, v10}, Lcom/google/android/exoplayer2/extractor/mkv/e;->p([II)[I

    move-result-object v6

    iput-object v6, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    .line 38
    iget v13, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->Q:I

    sub-int/2addr v1, v13

    sub-int/2addr v1, v2

    aput v1, v6, v9

    goto/16 :goto_6

    :cond_b
    const/4 v13, 0x4

    .line 39
    invoke-direct {v7, v8, v13}, Lcom/google/android/exoplayer2/extractor/mkv/e;->C(Lcom/google/android/exoplayer2/extractor/l;I)V

    .line 40
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v14

    aget-byte v14, v14, v2

    and-int/2addr v14, v12

    add-int/2addr v14, v10

    iput v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->N:I

    .line 41
    iget-object v15, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    invoke-static {v15, v14}, Lcom/google/android/exoplayer2/extractor/mkv/e;->p([II)[I

    move-result-object v14

    iput-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    if-ne v6, v4, :cond_c

    .line 42
    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->Q:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v13

    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->N:I

    div-int/2addr v1, v2

    .line 43
    invoke-static {v14, v9, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_6

    :cond_c
    if-ne v6, v10, :cond_f

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 44
    :goto_0
    iget v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->N:I

    add-int/lit8 v15, v14, -0x1

    if-ge v2, v15, :cond_e

    .line 45
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    aput v9, v14, v2

    :cond_d
    add-int/2addr v13, v10

    .line 46
    invoke-direct {v7, v8, v13}, Lcom/google/android/exoplayer2/extractor/mkv/e;->C(Lcom/google/android/exoplayer2/extractor/l;I)V

    .line 47
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v14

    add-int/lit8 v15, v13, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v12

    .line 48
    iget-object v15, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    aget v16, v15, v2

    add-int v16, v16, v14

    aput v16, v15, v2

    if-eq v14, v12, :cond_d

    .line 49
    aget v14, v15, v2

    add-int/2addr v6, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_e
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    sub-int/2addr v14, v10

    iget v15, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->Q:I

    sub-int/2addr v1, v15

    sub-int/2addr v1, v13

    sub-int/2addr v1, v6

    aput v1, v2, v14

    goto/16 :goto_6

    :cond_f
    if-ne v6, v2, :cond_19

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 51
    :goto_1
    iget v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->N:I

    add-int/lit8 v15, v14, -0x1

    if-ge v2, v15, :cond_16

    .line 52
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    aput v9, v14, v2

    add-int/lit8 v13, v13, 0x1

    .line 53
    invoke-direct {v7, v8, v13}, Lcom/google/android/exoplayer2/extractor/mkv/e;->C(Lcom/google/android/exoplayer2/extractor/l;I)V

    .line 54
    iget-object v14, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v14

    add-int/lit8 v15, v13, -0x1

    aget-byte v14, v14, v15

    if-eqz v14, :cond_15

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v5, :cond_12

    rsub-int/lit8 v18, v14, 0x7

    shl-int v3, v10, v18

    .line 55
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v4

    aget-byte v4, v4, v15

    and-int/2addr v4, v3

    if-eqz v4, :cond_11

    add-int/2addr v13, v14

    .line 56
    invoke-direct {v7, v8, v13}, Lcom/google/android/exoplayer2/extractor/mkv/e;->C(Lcom/google/android/exoplayer2/extractor/l;I)V

    .line 57
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v4

    add-int/lit8 v16, v15, 0x1

    aget-byte v4, v4, v15

    and-int/2addr v4, v12

    not-int v3, v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    move-wide/from16 v19, v3

    move/from16 v3, v16

    :goto_3
    move-wide/from16 v16, v19

    if-ge v3, v13, :cond_10

    shl-long v15, v16, v5

    .line 58
    iget-object v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v4

    add-int/lit8 v17, v3, 0x1

    aget-byte v3, v4, v3

    and-int/2addr v3, v12

    int-to-long v3, v3

    or-long/2addr v3, v15

    move-wide/from16 v19, v3

    move/from16 v3, v17

    goto :goto_3

    :cond_10
    if-lez v2, :cond_12

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    const-wide/16 v3, 0x1

    shl-long v14, v3, v14

    sub-long/2addr v14, v3

    sub-long v16, v16, v14

    goto :goto_4

    :cond_11
    add-int/lit8 v14, v14, 0x1

    const/16 v3, 0xa3

    const/4 v4, 0x2

    goto :goto_2

    :cond_12
    :goto_4
    move-wide/from16 v3, v16

    const-wide/32 v14, -0x80000000

    cmp-long v16, v3, v14

    if-ltz v16, :cond_14

    const-wide/32 v14, 0x7fffffff

    cmp-long v16, v3, v14

    if-gtz v16, :cond_14

    long-to-int v4, v3

    .line 59
    iget-object v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    if-nez v2, :cond_13

    goto :goto_5

    :cond_13
    add-int/lit8 v14, v2, -0x1

    .line 60
    aget v14, v3, v14

    add-int/2addr v4, v14

    :goto_5
    aput v4, v3, v2

    .line 61
    aget v3, v3, v2

    add-int/2addr v6, v3

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa3

    const/4 v4, 0x2

    goto/16 :goto_1

    .line 62
    :cond_14
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "EBML lacing sample size out of range."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_15
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_16
    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    sub-int/2addr v14, v10

    iget v3, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->Q:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v13

    sub-int/2addr v1, v6

    aput v1, v2, v14

    .line 65
    :goto_6
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    aget-byte v1, v1, v9

    shl-int/2addr v1, v5

    iget-object v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v2

    aget-byte v2, v2, v10

    and-int/2addr v2, v12

    or-int/2addr v1, v2

    .line 66
    iget-wide v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->E:J

    int-to-long v4, v1

    invoke-direct {v7, v4, v5}, Lcom/google/android/exoplayer2/extractor/mkv/e;->E(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->K:J

    .line 67
    iget v1, v11, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->d:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_18

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_17

    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->j:Lcom/google/android/exoplayer2/util/h0;

    .line 68
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    aget-byte v1, v1, v2

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_17

    goto :goto_7

    :cond_17
    const/4 v1, 0x0

    goto :goto_8

    :cond_18
    :goto_7
    const/4 v1, 0x1

    .line 69
    :goto_8
    iput v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->R:I

    const/4 v1, 0x2

    .line 70
    iput v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->J:I

    .line 71
    iput v9, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->M:I

    goto :goto_9

    .line 72
    :cond_19
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const/16 v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected lacing value: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_9
    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1c

    .line 73
    :goto_a
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->M:I

    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->N:I

    if-ge v0, v1, :cond_1b

    .line 74
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    aget v0, v1, v0

    invoke-direct {v7, v8, v11, v0}, Lcom/google/android/exoplayer2/extractor/mkv/e;->I(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/mkv/e$d;I)I

    move-result v5

    .line 75
    iget-wide v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->K:J

    iget v2, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->M:I

    iget v3, v11, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->e:I

    mul-int v2, v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 76
    iget v4, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->R:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mkv/e;->n(Lcom/google/android/exoplayer2/extractor/mkv/e$d;JIII)V

    .line 77
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->M:I

    add-int/2addr v0, v10

    iput v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->M:I

    goto :goto_a

    .line 78
    :cond_1b
    iput v9, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->J:I

    goto :goto_c

    .line 79
    :cond_1c
    :goto_b
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->M:I

    iget v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->N:I

    if-ge v0, v1, :cond_1d

    .line 80
    iget-object v1, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    aget v2, v1, v0

    .line 81
    invoke-direct {v7, v8, v11, v2}, Lcom/google/android/exoplayer2/extractor/mkv/e;->I(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/mkv/e$d;I)I

    move-result v2

    aput v2, v1, v0

    .line 82
    iget v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->M:I

    add-int/2addr v0, v10

    iput v0, v7, Lcom/google/android/exoplayer2/extractor/mkv/e;->M:I

    goto :goto_b

    :cond_1d
    :goto_c
    return-void
.end method

.method protected o(I)V
    .locals 10
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/e;->k()V

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_f

    const/16 v0, 0xae

    const/4 v2, 0x0

    if-eq p1, v0, :cond_c

    const/16 v0, 0x4dbb

    const v3, 0x1c53bb6b

    if-eq p1, v0, :cond_a

    const/16 v0, 0x6240

    const/4 v4, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_6

    const v0, 0x1549a966

    if-eq p1, v0, :cond_4

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->y:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->d0:Lcom/google/android/exoplayer2/extractor/m;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->F:Lcom/google/android/exoplayer2/util/x;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->G:Lcom/google/android/exoplayer2/util/x;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->m(Lcom/google/android/exoplayer2/util/x;Lcom/google/android/exoplayer2/util/x;)Lcom/google/android/exoplayer2/extractor/b0;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 4
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->y:Z

    .line 5
    :cond_1
    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->F:Lcom/google/android/exoplayer2/util/x;

    .line 6
    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->G:Lcom/google/android/exoplayer2/util/x;

    goto/16 :goto_2

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->d0:Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->t()V

    goto/16 :goto_2

    .line 9
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "No valid tracks were found"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->u:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_5

    const-wide/32 v0, 0xf4240

    .line 11
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->u:J

    .line 12
    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->v:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_14

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->E(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->w:J

    goto/16 :goto_2

    .line 14
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->j(I)V

    .line 15
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->h:Z

    if-eqz v0, :cond_14

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->i:[B

    if-nez p1, :cond_7

    goto/16 :goto_2

    .line 16
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Combining encryption and compression is not supported"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->j(I)V

    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->h:Z

    if-eqz v0, :cond_14

    .line 19
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->j:Lcom/google/android/exoplayer2/extractor/e0$a;

    if-eqz v0, :cond_9

    .line 20
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    new-array v2, v4, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v4, Lcom/google/android/exoplayer2/i;->I1:Ljava/util/UUID;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->j:Lcom/google/android/exoplayer2/extractor/e0$a;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/e0$a;->b:[B

    const-string v6, "video/webm"

    invoke-direct {v3, v4, v6, v5}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    iput-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto/16 :goto_2

    .line 21
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_a
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->z:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->A:J

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_b

    if-ne p1, v3, :cond_14

    .line 23
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->C:J

    goto/16 :goto_2

    .line 24
    :cond_b
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_c
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    .line 26
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->b:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 27
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mkv/e;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->d0:Lcom/google/android/exoplayer2/extractor/m;

    iget v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->h(Lcom/google/android/exoplayer2/extractor/m;I)V

    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->f:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    :cond_d
    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    goto :goto_2

    .line 31
    :cond_e
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "CodecId is missing in TrackEntry element"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_f
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->J:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    return-void

    :cond_10
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 33
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->N:I

    if-ge p1, v2, :cond_11

    .line 34
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    aget v2, v2, p1

    add-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 35
    :cond_11
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->f:Landroid/util/SparseArray;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->P:I

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    .line 36
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->a(Lcom/google/android/exoplayer2/extractor/mkv/e$d;)V

    const/4 v9, 0x0

    .line 37
    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->N:I

    if-ge v9, v2, :cond_13

    .line 38
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->K:J

    iget v4, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->e:I

    mul-int v4, v4, v9

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 39
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->R:I

    if-nez v9, :cond_12

    .line 40
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->T:Z

    if-nez v3, :cond_12

    or-int/lit8 v2, v2, 0x1

    :cond_12
    move v6, v2

    .line 41
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->O:[I

    aget v7, v2, v9

    sub-int/2addr v0, v7

    move-object v2, p0

    move-object v3, p1

    move v8, v0

    .line 42
    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/mkv/e;->n(Lcom/google/android/exoplayer2/extractor/mkv/e$d;JIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 43
    :cond_13
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->J:I

    :cond_14
    :goto_2
    return-void
.end method

.method protected r(ID)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->u:F

    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->t:F

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->s:F

    goto :goto_0

    .line 4
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->M:F

    goto :goto_0

    .line 5
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->L:F

    goto :goto_0

    .line 6
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->K:F

    goto :goto_0

    .line 7
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->J:F

    goto :goto_0

    .line 8
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->I:F

    goto :goto_0

    .line 9
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->H:F

    goto :goto_0

    .line 10
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->G:F

    goto :goto_0

    .line 11
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->F:F

    goto :goto_0

    .line 12
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->E:F

    goto :goto_0

    .line 13
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->D:F

    goto :goto_0

    :cond_0
    double-to-long p1, p2

    .line 14
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->v:J

    goto :goto_0

    .line 15
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    double-to-int p2, p2

    iput p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->Q:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method protected u(I)I
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    const/4 p1, 0x5

    return p1

    :sswitch_1
    const/4 p1, 0x4

    return p1

    :sswitch_2
    const/4 p1, 0x1

    return p1

    :sswitch_3
    const/4 p1, 0x3

    return p1

    :sswitch_4
    const/4 p1, 0x2

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method protected v(Lcom/google/android/exoplayer2/extractor/mkv/e$d;Lcom/google/android/exoplayer2/extractor/l;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->b(Lcom/google/android/exoplayer2/extractor/mkv/e$d;)I

    move-result v0

    const v1, 0x64767643

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->b(Lcom/google/android/exoplayer2/extractor/mkv/e$d;)I

    move-result v0

    const v1, 0x64766343

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2, p3}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    new-array v0, p3, [B

    iput-object v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->N:[B

    const/4 p1, 0x0

    .line 5
    invoke-interface {p2, v0, p1, p3}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    :goto_1
    return-void
.end method

.method protected w(Lcom/google/android/exoplayer2/extractor/mkv/e$d;ILcom/google/android/exoplayer2/extractor/l;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->b:Ljava/lang/String;

    const-string p2, "V_VP9"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->q:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->q:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2, p4}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p3, p4}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    :goto_0
    return-void
.end method

.method protected x(IJ)V
    .locals 8
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x5031

    const/16 v1, 0x37

    const-string v2, " not supported"

    if-eq p1, v0, :cond_19

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_17

    const/16 v0, 0x32

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x7

    const/4 v1, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->C:I

    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->B:I

    goto/16 :goto_0

    .line 3
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->j(I)V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput-boolean v7, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->x:Z

    long-to-int p3, p2

    if-eq p3, v7, :cond_2

    const/16 p2, 0x9

    if-eq p3, p2, :cond_1

    const/4 p2, 0x4

    if-eq p3, p2, :cond_0

    const/4 p2, 0x5

    if-eq p3, p2, :cond_0

    if-eq p3, v1, :cond_0

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    iput v6, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->y:I

    goto/16 :goto_0

    .line 6
    :cond_1
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->y:I

    goto/16 :goto_0

    .line 7
    :cond_2
    iput v7, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->y:I

    goto/16 :goto_0

    .line 8
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->j(I)V

    long-to-int p1, p2

    if-eq p1, v7, :cond_5

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_3

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_5

    goto/16 :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput v0, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->z:I

    goto/16 :goto_0

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->z:I

    goto/16 :goto_0

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput v5, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->z:I

    goto/16 :goto_0

    .line 12
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->j(I)V

    long-to-int p1, p2

    if-eq p1, v7, :cond_7

    if-eq p1, v6, :cond_6

    goto/16 :goto_0

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput v7, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->A:I

    goto/16 :goto_0

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput v6, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->A:I

    goto/16 :goto_0

    .line 15
    :sswitch_0
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->u:J

    goto/16 :goto_0

    .line 16
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->e:I

    goto/16 :goto_0

    .line 17
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->j(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_b

    if-eq p1, v7, :cond_a

    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_8

    goto/16 :goto_0

    .line 18
    :cond_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput v5, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->r:I

    goto/16 :goto_0

    .line 19
    :cond_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput v6, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->r:I

    goto/16 :goto_0

    .line 20
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput v7, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->r:I

    goto/16 :goto_0

    .line 21
    :cond_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->r:I

    goto/16 :goto_0

    .line 22
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->P:I

    goto/16 :goto_0

    .line 23
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    iput-wide p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->S:J

    goto/16 :goto_0

    .line 24
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    iput-wide p2, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->R:J

    goto/16 :goto_0

    .line 25
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->f:I

    goto/16 :goto_0

    .line 26
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    cmp-long v0, p2, v3

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    iput-boolean v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->U:Z

    goto/16 :goto_0

    .line 27
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->p:I

    goto/16 :goto_0

    .line 28
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->q:I

    goto/16 :goto_0

    .line 29
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->o:I

    goto/16 :goto_0

    :sswitch_b
    long-to-int p3, p2

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->j(I)V

    if-eqz p3, :cond_10

    if-eq p3, v7, :cond_f

    if-eq p3, v5, :cond_e

    const/16 p1, 0xf

    if-eq p3, p1, :cond_d

    goto/16 :goto_0

    .line 31
    :cond_d
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput v5, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->w:I

    goto/16 :goto_0

    .line 32
    :cond_e
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput v7, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->w:I

    goto/16 :goto_0

    .line 33
    :cond_f
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput v6, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->w:I

    goto/16 :goto_0

    .line 34
    :cond_10
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->x:Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->w:I

    goto/16 :goto_0

    .line 35
    :sswitch_c
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->t:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->A:J

    goto/16 :goto_0

    :sswitch_d
    cmp-long p1, p2, v3

    if-nez p1, :cond_11

    goto/16 :goto_0

    .line 36
    :cond_11
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const/16 v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_12

    goto/16 :goto_0

    .line 37
    :cond_12
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    cmp-long p1, p2, v3

    if-nez p1, :cond_13

    goto/16 :goto_0

    .line 38
    :cond_13
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_10
    cmp-long p1, p2, v3

    if-ltz p1, :cond_14

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_14

    goto/16 :goto_0

    .line 39
    :cond_14
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_11
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_15

    goto/16 :goto_0

    .line 40
    :cond_15
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :sswitch_12
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->c(Lcom/google/android/exoplayer2/extractor/mkv/e$d;I)I

    goto/16 :goto_0

    .line 42
    :sswitch_13
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->T:Z

    goto/16 :goto_0

    .line 43
    :sswitch_14
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->H:Z

    if-nez v0, :cond_1a

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->i(I)V

    .line 45
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->G:Lcom/google/android/exoplayer2/util/x;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/x;->a(J)V

    .line 46
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->H:Z

    goto/16 :goto_0

    :sswitch_15
    long-to-int p1, p2

    .line 47
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->S:I

    goto/16 :goto_0

    .line 48
    :sswitch_16
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/e;->E(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->E:J

    goto/16 :goto_0

    .line 49
    :sswitch_17
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->c:I

    goto :goto_0

    .line 50
    :sswitch_18
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->n:I

    goto :goto_0

    .line 51
    :sswitch_19
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->i(I)V

    .line 52
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->F:Lcom/google/android/exoplayer2/util/x;

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/e;->E(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/x;->a(J)V

    goto :goto_0

    .line 53
    :sswitch_1a
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->m:I

    goto :goto_0

    .line 54
    :sswitch_1b
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->O:I

    goto :goto_0

    .line 55
    :sswitch_1c
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/e;->E(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e;->L:J

    goto :goto_0

    .line 56
    :sswitch_1d
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    cmp-long v0, p2, v3

    if-nez v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    iput-boolean v1, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->V:Z

    goto :goto_0

    .line 57
    :sswitch_1e
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)Lcom/google/android/exoplayer2/extractor/mkv/e$d;

    move-result-object p1

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/exoplayer2/extractor/mkv/e$d;->d:I

    goto :goto_0

    :cond_17
    cmp-long p1, p2, v3

    if-nez p1, :cond_18

    goto :goto_0

    .line 58
    :cond_18
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_1b

    :cond_1a
    :goto_0
    return-void

    .line 59
    :cond_1b
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1e
        0x88 -> :sswitch_1d
        0x9b -> :sswitch_1c
        0x9f -> :sswitch_1b
        0xb0 -> :sswitch_1a
        0xb3 -> :sswitch_19
        0xba -> :sswitch_18
        0xd7 -> :sswitch_17
        0xe7 -> :sswitch_16
        0xee -> :sswitch_15
        0xf1 -> :sswitch_14
        0xfb -> :sswitch_13
        0x41e7 -> :sswitch_12
        0x4254 -> :sswitch_11
        0x4285 -> :sswitch_10
        0x42f7 -> :sswitch_f
        0x47e1 -> :sswitch_e
        0x47e8 -> :sswitch_d
        0x53ac -> :sswitch_c
        0x53b8 -> :sswitch_b
        0x54b0 -> :sswitch_a
        0x54b2 -> :sswitch_9
        0x54ba -> :sswitch_8
        0x55aa -> :sswitch_7
        0x55ee -> :sswitch_6
        0x56aa -> :sswitch_5
        0x56bb -> :sswitch_4
        0x6264 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected z(I)Z
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const v0, 0x1549a966

    if-eq p1, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
