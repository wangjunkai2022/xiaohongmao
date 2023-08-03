.class public Lcom/google/android/exoplayer2/video/f;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/f$b;,
        Lcom/google/android/exoplayer2/video/f$a;
    }
.end annotation


# static fields
.field private static final f4:Ljava/lang/String; = "MediaCodecVideoRenderer"

.field private static final g4:Ljava/lang/String; = "crop-left"

.field private static final h4:Ljava/lang/String; = "crop-right"

.field private static final i4:Ljava/lang/String; = "crop-bottom"

.field private static final j4:Ljava/lang/String; = "crop-top"

.field private static final k4:[I

.field private static final l4:F = 1.5f

.field private static final m4:J = 0x7fffffffffffffffL

.field private static n4:Z

.field private static o4:Z


# instance fields
.field private final A3:I

.field private final B3:Z

.field private C3:Lcom/google/android/exoplayer2/video/f$a;

.field private D3:Z

.field private E3:Z

.field private F3:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private G3:Lcom/google/android/exoplayer2/video/DummySurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private H3:Z

.field private I3:I

.field private J3:Z

.field private K3:Z

.field private L3:Z

.field private M3:J

.field private N3:J

.field private O3:J

.field private P3:I

.field private Q3:I

.field private R3:I

.field private S3:J

.field private T3:J

.field private U3:J

.field private V3:I

.field private W3:I

.field private X3:I

.field private Y3:I

.field private Z3:F

.field private a4:Lcom/google/android/exoplayer2/video/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b4:Z

.field private c4:I

.field d4:Lcom/google/android/exoplayer2/video/f$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e4:Lcom/google/android/exoplayer2/video/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final w3:Landroid/content/Context;

.field private final x3:Lcom/google/android/exoplayer2/video/l;

.field private final y3:Lcom/google/android/exoplayer2/video/z$a;

.field private final z3:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/video/f;->k4:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/k$b;Lcom/google/android/exoplayer2/mediacodec/n;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/z;I)V
    .locals 6
    .param p7    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/exoplayer2/video/z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x2

    const/high16 v5, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/k$b;Lcom/google/android/exoplayer2/mediacodec/n;ZF)V

    .line 6
    iput-wide p4, p0, Lcom/google/android/exoplayer2/video/f;->z3:J

    .line 7
    iput p9, p0, Lcom/google/android/exoplayer2/video/f;->A3:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/f;->w3:Landroid/content/Context;

    .line 9
    new-instance p2, Lcom/google/android/exoplayer2/video/l;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/video/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/f;->x3:Lcom/google/android/exoplayer2/video/l;

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/video/z$a;

    invoke-direct {p1, p7, p8}, Lcom/google/android/exoplayer2/video/z$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/z;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    .line 11
    invoke-static {}, Lcom/google/android/exoplayer2/video/f;->A1()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/f;->B3:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/f;->N3:J

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/google/android/exoplayer2/video/f;->W3:I

    .line 14
    iput p1, p0, Lcom/google/android/exoplayer2/video/f;->X3:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 15
    iput p1, p0, Lcom/google/android/exoplayer2/video/f;->Z3:F

    const/4 p1, 0x1

    .line 16
    iput p1, p0, Lcom/google/android/exoplayer2/video/f;->I3:I

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/google/android/exoplayer2/video/f;->c4:I

    .line 18
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->x1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/f;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;J)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/video/f;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/z;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/z;I)V
    .locals 10
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/video/z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/k$b;->a:Lcom/google/android/exoplayer2/mediacodec/k$b;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/video/f;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/k$b;Lcom/google/android/exoplayer2/mediacodec/n;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/z;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/z;I)V
    .locals 10
    .param p6    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/exoplayer2/video/z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/k$b;->a:Lcom/google/android/exoplayer2/mediacodec/k$b;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/video/f;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/k$b;Lcom/google/android/exoplayer2/mediacodec/n;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/z;I)V

    return-void
.end method

.method private static A1()Z
    .locals 2

    sget-object v0, Lcom/google/android/exoplayer2/util/z0;->c:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static C1()Z
    .locals 13

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0x1c

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gt v0, v5, :cond_7

    .line 2
    sget-object v10, Lcom/google/android/exoplayer2/util/z0;->b:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_0
    const/4 v10, -0x1

    goto :goto_1

    :sswitch_0
    const-string v11, "machuca"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x6

    goto :goto_1

    :sswitch_1
    const-string v11, "once"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    const/4 v10, 0x5

    goto :goto_1

    :sswitch_2
    const-string v11, "magnolia"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x4

    goto :goto_1

    :sswitch_3
    const-string v11, "oneday"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x3

    goto :goto_1

    :sswitch_4
    const-string v11, "dangalUHD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_0

    :cond_4
    const/4 v10, 0x2

    goto :goto_1

    :sswitch_5
    const-string v11, "dangalFHD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_0

    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    :sswitch_6
    const-string v11, "dangal"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    :goto_1
    packed-switch v10, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return v9

    :cond_7
    :goto_2
    const/16 v10, 0x1b

    if-gt v0, v10, :cond_8

    .line 3
    sget-object v11, Lcom/google/android/exoplayer2/util/z0;->b:Ljava/lang/String;

    const-string v12, "HWEML"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    return v9

    :cond_8
    const/16 v11, 0x1a

    if-gt v0, v11, :cond_98

    .line 4
    sget-object v0, Lcom/google/android/exoplayer2/util/z0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    :goto_3
    const/4 v1, -0x1

    goto/16 :goto_4

    :sswitch_7
    const-string v1, "HWWAS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    const/16 v1, 0x8b

    goto/16 :goto_4

    :sswitch_8
    const-string v1, "HWVNS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    const/16 v1, 0x8a

    goto/16 :goto_4

    :sswitch_9
    const-string v1, "ELUGA_Prim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    const/16 v1, 0x89

    goto/16 :goto_4

    :sswitch_a
    const-string v1, "ELUGA_Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    const/16 v1, 0x88

    goto/16 :goto_4

    :sswitch_b
    const-string v1, "ASUS_X00AD_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    const/16 v1, 0x87

    goto/16 :goto_4

    :sswitch_c
    const-string v1, "HWCAM-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3

    :cond_e
    const/16 v1, 0x86

    goto/16 :goto_4

    :sswitch_d
    const-string v1, "HWBLN-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3

    :cond_f
    const/16 v1, 0x85

    goto/16 :goto_4

    :sswitch_e
    const-string v1, "DM-01K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_3

    :cond_10
    const/16 v1, 0x84

    goto/16 :goto_4

    :sswitch_f
    const-string v1, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3

    :cond_11
    const/16 v1, 0x83

    goto/16 :goto_4

    :sswitch_10
    const-string v1, "Infinix-X572"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_3

    :cond_12
    const/16 v1, 0x82

    goto/16 :goto_4

    :sswitch_11
    const-string v1, "PB2-670M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_3

    :cond_13
    const/16 v1, 0x81

    goto/16 :goto_4

    :sswitch_12
    const-string v1, "santoni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_3

    :cond_14
    const/16 v1, 0x80

    goto/16 :goto_4

    :sswitch_13
    const-string v1, "iball8735_9806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_3

    :cond_15
    const/16 v1, 0x7f

    goto/16 :goto_4

    :sswitch_14
    const-string v1, "CPH1715"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_3

    :cond_16
    const/16 v1, 0x7e

    goto/16 :goto_4

    :sswitch_15
    const-string v1, "CPH1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_3

    :cond_17
    const/16 v1, 0x7d

    goto/16 :goto_4

    :sswitch_16
    const-string v1, "woods_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_3

    :cond_18
    const/16 v1, 0x7c

    goto/16 :goto_4

    :sswitch_17
    const-string v1, "htc_e56ml_dtul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_3

    :cond_19
    const/16 v1, 0x7b

    goto/16 :goto_4

    :sswitch_18
    const-string v1, "EverStar_S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_3

    :cond_1a
    const/16 v1, 0x7a

    goto/16 :goto_4

    :sswitch_19
    const-string v1, "hwALE-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_3

    :cond_1b
    const/16 v1, 0x79

    goto/16 :goto_4

    :sswitch_1a
    const-string v1, "itel_S41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_3

    :cond_1c
    const/16 v1, 0x78

    goto/16 :goto_4

    :sswitch_1b
    const-string v1, "LS-5017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_3

    :cond_1d
    const/16 v1, 0x77

    goto/16 :goto_4

    :sswitch_1c
    const-string v1, "panell_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_3

    :cond_1e
    const/16 v1, 0x76

    goto/16 :goto_4

    :sswitch_1d
    const-string v1, "j2xlteins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_3

    :cond_1f
    const/16 v1, 0x75

    goto/16 :goto_4

    :sswitch_1e
    const-string v1, "A7000plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_3

    :cond_20
    const/16 v1, 0x74

    goto/16 :goto_4

    :sswitch_1f
    const-string v1, "manning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_3

    :cond_21
    const/16 v1, 0x73

    goto/16 :goto_4

    :sswitch_20
    const-string v1, "GIONEE_WBL7519"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_3

    :cond_22
    const/16 v1, 0x72

    goto/16 :goto_4

    :sswitch_21
    const-string v1, "GIONEE_WBL7365"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_3

    :cond_23
    const/16 v1, 0x71

    goto/16 :goto_4

    :sswitch_22
    const-string v1, "GIONEE_WBL5708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_3

    :cond_24
    const/16 v1, 0x70

    goto/16 :goto_4

    :sswitch_23
    const-string v1, "QM16XE_U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_3

    :cond_25
    const/16 v1, 0x6f

    goto/16 :goto_4

    :sswitch_24
    const-string v1, "Pixi5-10_4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_3

    :cond_26
    const/16 v1, 0x6e

    goto/16 :goto_4

    :sswitch_25
    const-string v1, "TB3-850M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_3

    :cond_27
    const/16 v1, 0x6d

    goto/16 :goto_4

    :sswitch_26
    const-string v1, "TB3-850F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_3

    :cond_28
    const/16 v1, 0x6c

    goto/16 :goto_4

    :sswitch_27
    const-string v1, "TB3-730X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_3

    :cond_29
    const/16 v1, 0x6b

    goto/16 :goto_4

    :sswitch_28
    const-string v1, "TB3-730F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_3

    :cond_2a
    const/16 v1, 0x6a

    goto/16 :goto_4

    :sswitch_29
    const-string v1, "A7020a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_3

    :cond_2b
    const/16 v1, 0x69

    goto/16 :goto_4

    :sswitch_2a
    const-string v1, "A7010a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_3

    :cond_2c
    const/16 v1, 0x68

    goto/16 :goto_4

    :sswitch_2b
    const-string v1, "griffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_3

    :cond_2d
    const/16 v1, 0x67

    goto/16 :goto_4

    :sswitch_2c
    const-string v1, "marino_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_3

    :cond_2e
    const/16 v1, 0x66

    goto/16 :goto_4

    :sswitch_2d
    const-string v1, "CPY83_I00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_3

    :cond_2f
    const/16 v1, 0x65

    goto/16 :goto_4

    :sswitch_2e
    const-string v1, "A2016a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_3

    :cond_30
    const/16 v1, 0x64

    goto/16 :goto_4

    :sswitch_2f
    const-string v1, "le_x6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_3

    :cond_31
    const/16 v1, 0x63

    goto/16 :goto_4

    :sswitch_30
    const-string v1, "l5460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_3

    :cond_32
    const/16 v1, 0x62

    goto/16 :goto_4

    :sswitch_31
    const-string v1, "i9031"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_3

    :cond_33
    const/16 v1, 0x61

    goto/16 :goto_4

    :sswitch_32
    const-string v1, "X3_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_3

    :cond_34
    const/16 v1, 0x60

    goto/16 :goto_4

    :sswitch_33
    const-string v1, "V23GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_3

    :cond_35
    const/16 v1, 0x5f

    goto/16 :goto_4

    :sswitch_34
    const-string v1, "Q4310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_3

    :cond_36
    const/16 v1, 0x5e

    goto/16 :goto_4

    :sswitch_35
    const-string v1, "Q4260"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_3

    :cond_37
    const/16 v1, 0x5d

    goto/16 :goto_4

    :sswitch_36
    const-string v1, "PRO7S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_3

    :cond_38
    const/16 v1, 0x5c

    goto/16 :goto_4

    :sswitch_37
    const-string v1, "F3311"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_3

    :cond_39
    const/16 v1, 0x5b

    goto/16 :goto_4

    :sswitch_38
    const-string v1, "F3215"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_3

    :cond_3a
    const/16 v1, 0x5a

    goto/16 :goto_4

    :sswitch_39
    const-string v1, "F3213"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_3

    :cond_3b
    const/16 v1, 0x59

    goto/16 :goto_4

    :sswitch_3a
    const-string v1, "F3211"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_3

    :cond_3c
    const/16 v1, 0x58

    goto/16 :goto_4

    :sswitch_3b
    const-string v1, "F3116"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_3

    :cond_3d
    const/16 v1, 0x57

    goto/16 :goto_4

    :sswitch_3c
    const-string v1, "F3113"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_3

    :cond_3e
    const/16 v1, 0x56

    goto/16 :goto_4

    :sswitch_3d
    const-string v1, "F3111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_3

    :cond_3f
    const/16 v1, 0x55

    goto/16 :goto_4

    :sswitch_3e
    const-string v1, "E5643"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_3

    :cond_40
    const/16 v1, 0x54

    goto/16 :goto_4

    :sswitch_3f
    const-string v1, "A1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_3

    :cond_41
    const/16 v1, 0x53

    goto/16 :goto_4

    :sswitch_40
    const-string v1, "Aura_Note_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_3

    :cond_42
    const/16 v1, 0x52

    goto/16 :goto_4

    :sswitch_41
    const-string v1, "602LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_3

    :cond_43
    const/16 v1, 0x51

    goto/16 :goto_4

    :sswitch_42
    const-string v1, "601LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_3

    :cond_44
    const/16 v1, 0x50

    goto/16 :goto_4

    :sswitch_43
    const-string v1, "MEIZU_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_3

    :cond_45
    const/16 v1, 0x4f

    goto/16 :goto_4

    :sswitch_44
    const-string v1, "p212"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_3

    :cond_46
    const/16 v1, 0x4e

    goto/16 :goto_4

    :sswitch_45
    const-string v1, "mido"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_3

    :cond_47
    const/16 v1, 0x4d

    goto/16 :goto_4

    :sswitch_46
    const-string v1, "kate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_3

    :cond_48
    const/16 v1, 0x4c

    goto/16 :goto_4

    :sswitch_47
    const-string v1, "fugu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_3

    :cond_49
    const/16 v1, 0x4b

    goto/16 :goto_4

    :sswitch_48
    const-string v1, "XE2X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_3

    :cond_4a
    const/16 v1, 0x4a

    goto/16 :goto_4

    :sswitch_49
    const-string v1, "Q427"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_3

    :cond_4b
    const/16 v1, 0x49

    goto/16 :goto_4

    :sswitch_4a
    const-string v1, "Q350"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_3

    :cond_4c
    const/16 v1, 0x48

    goto/16 :goto_4

    :sswitch_4b
    const-string v1, "P681"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_3

    :cond_4d
    const/16 v1, 0x47

    goto/16 :goto_4

    :sswitch_4c
    const-string v1, "F04J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_3

    :cond_4e
    const/16 v1, 0x46

    goto/16 :goto_4

    :sswitch_4d
    const-string v1, "F04H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_3

    :cond_4f
    const/16 v1, 0x45

    goto/16 :goto_4

    :sswitch_4e
    const-string v1, "F03H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_3

    :cond_50
    const/16 v1, 0x44

    goto/16 :goto_4

    :sswitch_4f
    const-string v1, "F02H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_3

    :cond_51
    const/16 v1, 0x43

    goto/16 :goto_4

    :sswitch_50
    const-string v1, "F01J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_3

    :cond_52
    const/16 v1, 0x42

    goto/16 :goto_4

    :sswitch_51
    const-string v1, "F01H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_3

    :cond_53
    const/16 v1, 0x41

    goto/16 :goto_4

    :sswitch_52
    const-string v1, "1714"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_3

    :cond_54
    const/16 v1, 0x40

    goto/16 :goto_4

    :sswitch_53
    const-string v1, "1713"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_3

    :cond_55
    const/16 v1, 0x3f

    goto/16 :goto_4

    :sswitch_54
    const-string v1, "1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_3

    :cond_56
    const/16 v1, 0x3e

    goto/16 :goto_4

    :sswitch_55
    const-string v1, "flo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_3

    :cond_57
    const/16 v1, 0x3d

    goto/16 :goto_4

    :sswitch_56
    const-string v1, "deb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_3

    :cond_58
    const/16 v1, 0x3c

    goto/16 :goto_4

    :sswitch_57
    const-string v1, "cv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_3

    :cond_59
    const/16 v1, 0x3b

    goto/16 :goto_4

    :sswitch_58
    const-string v1, "cv1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_3

    :cond_5a
    const/16 v1, 0x3a

    goto/16 :goto_4

    :sswitch_59
    const-string v1, "Z80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_3

    :cond_5b
    const/16 v1, 0x39

    goto/16 :goto_4

    :sswitch_5a
    const-string v1, "QX1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_3

    :cond_5c
    const/16 v1, 0x38

    goto/16 :goto_4

    :sswitch_5b
    const-string v1, "PLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_3

    :cond_5d
    const/16 v1, 0x37

    goto/16 :goto_4

    :sswitch_5c
    const-string v1, "P85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_3

    :cond_5e
    const/16 v1, 0x36

    goto/16 :goto_4

    :sswitch_5d
    const-string v1, "MX6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_3

    :cond_5f
    const/16 v1, 0x35

    goto/16 :goto_4

    :sswitch_5e
    const-string v1, "M5c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_3

    :cond_60
    const/16 v1, 0x34

    goto/16 :goto_4

    :sswitch_5f
    const-string v1, "M04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_3

    :cond_61
    const/16 v1, 0x33

    goto/16 :goto_4

    :sswitch_60
    const-string v1, "JGZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_3

    :cond_62
    const/16 v1, 0x32

    goto/16 :goto_4

    :sswitch_61
    const-string v1, "mh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_3

    :cond_63
    const/16 v1, 0x31

    goto/16 :goto_4

    :sswitch_62
    const-string v1, "b5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_3

    :cond_64
    const/16 v1, 0x30

    goto/16 :goto_4

    :sswitch_63
    const-string v1, "V5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_3

    :cond_65
    const/16 v1, 0x2f

    goto/16 :goto_4

    :sswitch_64
    const-string v1, "V1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_3

    :cond_66
    const/16 v1, 0x2e

    goto/16 :goto_4

    :sswitch_65
    const-string v1, "Q5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_3

    :cond_67
    const/16 v1, 0x2d

    goto/16 :goto_4

    :sswitch_66
    const-string v1, "C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_3

    :cond_68
    const/16 v1, 0x2c

    goto/16 :goto_4

    :sswitch_67
    const-string v1, "woods_fn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_3

    :cond_69
    const/16 v1, 0x2b

    goto/16 :goto_4

    :sswitch_68
    const-string v1, "ELUGA_A3_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_3

    :cond_6a
    const/16 v1, 0x2a

    goto/16 :goto_4

    :sswitch_69
    const-string v1, "Z12_PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_3

    :cond_6b
    const/16 v1, 0x29

    goto/16 :goto_4

    :sswitch_6a
    const-string v1, "BLACK-1X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_3

    :cond_6c
    const/16 v1, 0x28

    goto/16 :goto_4

    :sswitch_6b
    const-string v1, "taido_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_3

    :cond_6d
    const/16 v1, 0x27

    goto/16 :goto_4

    :sswitch_6c
    const-string v1, "Pixi4-7_3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_3

    :cond_6e
    const/16 v1, 0x26

    goto/16 :goto_4

    :sswitch_6d
    const-string v1, "GIONEE_GBL7360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_3

    :cond_6f
    const/16 v1, 0x25

    goto/16 :goto_4

    :sswitch_6e
    const-string v1, "GiONEE_CBL7513"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_3

    :cond_70
    const/16 v1, 0x24

    goto/16 :goto_4

    :sswitch_6f
    const-string v1, "OnePlus5T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_3

    :cond_71
    const/16 v1, 0x23

    goto/16 :goto_4

    :sswitch_70
    const-string v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_3

    :cond_72
    const/16 v1, 0x22

    goto/16 :goto_4

    :sswitch_71
    const-string v1, "watson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto/16 :goto_3

    :cond_73
    const/16 v1, 0x21

    goto/16 :goto_4

    :sswitch_72
    const-string v1, "SVP-DTV15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_3

    :cond_74
    const/16 v1, 0x20

    goto/16 :goto_4

    :sswitch_73
    const-string v1, "A7000-a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_3

    :cond_75
    const/16 v1, 0x1f

    goto/16 :goto_4

    :sswitch_74
    const-string v1, "nicklaus_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto/16 :goto_3

    :cond_76
    const/16 v1, 0x1e

    goto/16 :goto_4

    :sswitch_75
    const-string v1, "tcl_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_3

    :cond_77
    const/16 v1, 0x1d

    goto/16 :goto_4

    :sswitch_76
    const-string v1, "ELUGA_Ray_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto/16 :goto_3

    :cond_78
    const/16 v1, 0x1c

    goto/16 :goto_4

    :sswitch_77
    const-string v1, "s905x018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_3

    :cond_79
    const/16 v1, 0x1b

    goto/16 :goto_4

    :sswitch_78
    const-string v1, "A10-70L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_3

    :cond_7a
    const/16 v1, 0x1a

    goto/16 :goto_4

    :sswitch_79
    const-string v1, "A10-70F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_3

    :cond_7b
    const/16 v1, 0x19

    goto/16 :goto_4

    :sswitch_7a
    const-string v1, "namath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_3

    :cond_7c
    const/16 v1, 0x18

    goto/16 :goto_4

    :sswitch_7b
    const-string v1, "Slate_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_3

    :cond_7d
    const/16 v1, 0x17

    goto/16 :goto_4

    :sswitch_7c
    const-string v1, "iris60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_3

    :cond_7e
    const/16 v1, 0x16

    goto/16 :goto_4

    :sswitch_7d
    const-string v1, "BRAVIA_ATV2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_3

    :cond_7f
    const/16 v1, 0x15

    goto/16 :goto_4

    :sswitch_7e
    const-string v1, "GiONEE_GBL7319"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_3

    :cond_80
    const/16 v1, 0x14

    goto/16 :goto_4

    :sswitch_7f
    const-string v1, "panell_dt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_3

    :cond_81
    const/16 v1, 0x13

    goto/16 :goto_4

    :sswitch_80
    const-string v1, "panell_ds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_3

    :cond_82
    const/16 v1, 0x12

    goto/16 :goto_4

    :sswitch_81
    const-string v1, "panell_dl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_3

    :cond_83
    const/16 v1, 0x11

    goto/16 :goto_4

    :sswitch_82
    const-string v1, "vernee_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto/16 :goto_3

    :cond_84
    const/16 v1, 0x10

    goto/16 :goto_4

    :sswitch_83
    const-string v1, "pacificrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto/16 :goto_3

    :cond_85
    const/16 v1, 0xf

    goto/16 :goto_4

    :sswitch_84
    const-string v1, "Phantom6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_3

    :cond_86
    const/16 v1, 0xe

    goto/16 :goto_4

    :sswitch_85
    const-string v1, "ComioS1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto/16 :goto_3

    :cond_87
    const/16 v1, 0xd

    goto/16 :goto_4

    :sswitch_86
    const-string v1, "XT1663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_3

    :cond_88
    const/16 v1, 0xc

    goto/16 :goto_4

    :sswitch_87
    const-string v1, "RAIJIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_3

    :cond_89
    const/16 v1, 0xb

    goto/16 :goto_4

    :sswitch_88
    const-string v1, "AquaPowerM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_3

    :cond_8a
    const/16 v1, 0xa

    goto/16 :goto_4

    :sswitch_89
    const-string v1, "PGN611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_3

    :cond_8b
    const/16 v1, 0x9

    goto/16 :goto_4

    :sswitch_8a
    const-string v1, "PGN610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_3

    :cond_8c
    const/16 v1, 0x8

    goto :goto_4

    :sswitch_8b
    const-string v1, "PGN528"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_3

    :cond_8d
    const/4 v1, 0x7

    goto :goto_4

    :sswitch_8c
    const-string v2, "NX573J"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto/16 :goto_3

    :sswitch_8d
    const-string v1, "NX541J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_3

    :cond_8e
    const/4 v1, 0x5

    goto :goto_4

    :sswitch_8e
    const-string v1, "CP8676_I02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_3

    :cond_8f
    const/4 v1, 0x4

    goto :goto_4

    :sswitch_8f
    const-string v1, "K50a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_3

    :cond_90
    const/4 v1, 0x3

    goto :goto_4

    :sswitch_90
    const-string v1, "GIONEE_SWW1631"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_3

    :cond_91
    const/4 v1, 0x2

    goto :goto_4

    :sswitch_91
    const-string v1, "GIONEE_SWW1627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto/16 :goto_3

    :cond_92
    const/4 v1, 0x1

    goto :goto_4

    :sswitch_92
    const-string v1, "GIONEE_SWW1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_3

    :cond_93
    const/4 v1, 0x0

    :cond_94
    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 5
    sget-object v0, Lcom/google/android/exoplayer2/util/z0;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_5
    const/4 v6, -0x1

    goto :goto_6

    :sswitch_93
    const-string v1, "AFTN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto :goto_5

    :sswitch_94
    const-string v1, "AFTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_5

    :cond_95
    const/4 v6, 0x1

    goto :goto_6

    :sswitch_95
    const-string v1, "JSN-L21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_5

    :cond_96
    const/4 v6, 0x0

    :cond_97
    :goto_6
    packed-switch v6, :pswitch_data_2

    goto :goto_7

    :pswitch_1
    return v9

    :cond_98
    :goto_7
    return v8

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_6
        -0x48b8f57f -> :sswitch_5
        -0x48b8bd30 -> :sswitch_4
        -0x3c588c8a -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
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
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_92
        -0x7fd6c381 -> :sswitch_91
        -0x7fd6c368 -> :sswitch_90
        -0x7d026749 -> :sswitch_8f
        -0x78929d6a -> :sswitch_8e
        -0x75f50a1e -> :sswitch_8d
        -0x75f4fe9d -> :sswitch_8c
        -0x736f875c -> :sswitch_8b
        -0x736f83c2 -> :sswitch_8a
        -0x736f83c1 -> :sswitch_89
        -0x7327ce1c -> :sswitch_88
        -0x705c574b -> :sswitch_87
        -0x651ebb62 -> :sswitch_86
        -0x6423293b -> :sswitch_85
        -0x604f5117 -> :sswitch_84
        -0x5f691e13 -> :sswitch_83
        -0x5ca40cc4 -> :sswitch_82
        -0x58520ec1 -> :sswitch_81
        -0x58520eba -> :sswitch_80
        -0x58520eb9 -> :sswitch_7f
        -0x4eaed329 -> :sswitch_7e
        -0x4892fb4f -> :sswitch_7d
        -0x465b3df3 -> :sswitch_7c
        -0x43e6c939 -> :sswitch_7b
        -0x3ec0fcc5 -> :sswitch_7a
        -0x3b33cca0 -> :sswitch_79
        -0x3b33cc9a -> :sswitch_78
        -0x398ae3f6 -> :sswitch_77
        -0x391f0fb4 -> :sswitch_76
        -0x346837ae -> :sswitch_75
        -0x323788e3 -> :sswitch_74
        -0x30f57652 -> :sswitch_73
        -0x2f88a116 -> :sswitch_72
        -0x2f61ed98 -> :sswitch_71
        -0x2efd0837 -> :sswitch_70
        -0x2e9e9441 -> :sswitch_6f
        -0x2247b8b1 -> :sswitch_6e
        -0x1f0fa2b7 -> :sswitch_6d
        -0x19af3b41 -> :sswitch_6c
        -0x114fad3e -> :sswitch_6b
        -0x10dae90b -> :sswitch_6a
        -0x1084b7b7 -> :sswitch_69
        -0xa5988e9 -> :sswitch_68
        -0x35f9fbf -> :sswitch_67
        0x84e -> :sswitch_66
        0xa04 -> :sswitch_65
        0xa9b -> :sswitch_64
        0xa9f -> :sswitch_63
        0xc13 -> :sswitch_62
        0xd9b -> :sswitch_61
        0x11ebd -> :sswitch_60
        0x12711 -> :sswitch_5f
        0x127db -> :sswitch_5e
        0x12beb -> :sswitch_5d
        0x1334d -> :sswitch_5c
        0x135c9 -> :sswitch_5b
        0x13aea -> :sswitch_5a
        0x158d2 -> :sswitch_59
        0x1821e -> :sswitch_58
        0x18220 -> :sswitch_57
        0x18401 -> :sswitch_56
        0x18c69 -> :sswitch_55
        0x1716e6 -> :sswitch_54
        0x171ac8 -> :sswitch_53
        0x171ac9 -> :sswitch_52
        0x208c61 -> :sswitch_51
        0x208c63 -> :sswitch_50
        0x208c80 -> :sswitch_4f
        0x208c9f -> :sswitch_4e
        0x208cbe -> :sswitch_4d
        0x208cc0 -> :sswitch_4c
        0x252f5f -> :sswitch_4b
        0x25981d -> :sswitch_4a
        0x259b88 -> :sswitch_49
        0x290a13 -> :sswitch_48
        0x3021fd -> :sswitch_47
        0x321e47 -> :sswitch_46
        0x332327 -> :sswitch_45
        0x33ab63 -> :sswitch_44
        0x27691fb -> :sswitch_43
        0x30f8881 -> :sswitch_42
        0x30f8c42 -> :sswitch_41
        0x349f581 -> :sswitch_40
        0x3ab0ea7 -> :sswitch_3f
        0x3e53ea5 -> :sswitch_3e
        0x3f25a44 -> :sswitch_3d
        0x3f25a46 -> :sswitch_3c
        0x3f25a49 -> :sswitch_3b
        0x3f25e05 -> :sswitch_3a
        0x3f25e07 -> :sswitch_39
        0x3f25e09 -> :sswitch_38
        0x3f261c6 -> :sswitch_37
        0x48dce49 -> :sswitch_36
        0x48dd589 -> :sswitch_35
        0x48dd8af -> :sswitch_34
        0x4d36832 -> :sswitch_33
        0x4f0b0e7 -> :sswitch_32
        0x5e2479e -> :sswitch_31
        0x60acc05 -> :sswitch_30
        0x6214744 -> :sswitch_2f
        0x9d91379 -> :sswitch_2e
        0xadc0551 -> :sswitch_2d
        0xea056b3 -> :sswitch_2c
        0x1121dbc3 -> :sswitch_2b
        0x1255818c -> :sswitch_2a
        0x1263990d -> :sswitch_29
        0x12d90f3a -> :sswitch_28
        0x12d90f4c -> :sswitch_27
        0x12d98b1b -> :sswitch_26
        0x12d98b22 -> :sswitch_25
        0x1844c711 -> :sswitch_24
        0x1e3e8044 -> :sswitch_23
        0x2f5336ed -> :sswitch_22
        0x2f54115e -> :sswitch_21
        0x2f541849 -> :sswitch_20
        0x31cf010e -> :sswitch_1f
        0x36ad82f4 -> :sswitch_1e
        0x391a0b61 -> :sswitch_1d
        0x3f3728cd -> :sswitch_1c
        0x448ec687 -> :sswitch_1b
        0x46260f63 -> :sswitch_1a
        0x4c505106 -> :sswitch_19
        0x4de67084 -> :sswitch_18
        0x506ac5a9 -> :sswitch_17
        0x5abad9cd -> :sswitch_16
        0x64d2e6e9 -> :sswitch_15
        0x64d2eac5 -> :sswitch_14
        0x65e4085b -> :sswitch_13
        0x6f373556 -> :sswitch_12
        0x719f1dcb -> :sswitch_11
        0x75d9a0f0 -> :sswitch_10
        0x7796d144 -> :sswitch_f
        0x785bcb26 -> :sswitch_e
        0x78fc0e50 -> :sswitch_d
        0x790521fb -> :sswitch_c
        0x7933207f -> :sswitch_b
        0x7a05a409 -> :sswitch_a
        0x7a0696bd -> :sswitch_9
        0x7a16dfe7 -> :sswitch_8
        0x7a1f0e95 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x236fe21d -> :sswitch_95
        0x1e9d52 -> :sswitch_94
        0x1e9d5f -> :sswitch_93
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static D1(Lcom/google/android/exoplayer2/mediacodec/l;Ljava/lang/String;II)I
    .locals 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    if-ne p3, v0, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v1, "video/avc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "video/mp4v-es"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "video/hevc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v1, "video/dolby-vision"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    mul-int p2, p2, p3

    goto :goto_3

    :pswitch_1
    mul-int p2, p2, p3

    :goto_2
    const/4 v2, 0x2

    goto :goto_3

    .line 2
    :pswitch_2
    sget-object p1, Lcom/google/android/exoplayer2/util/z0;->d:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/google/android/exoplayer2/util/z0;->c:Ljava/lang/String;

    const-string v2, "Amazon"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "KFSOWI"

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "AFTS"

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/l;->g:Z

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    const/16 p0, 0x10

    .line 6
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/z0;->m(II)I

    move-result p1

    invoke-static {p3, p0}, Lcom/google/android/exoplayer2/util/z0;->m(II)I

    move-result p2

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x10

    mul-int/lit8 p2, p1, 0x10

    goto :goto_2

    :goto_3
    mul-int/lit8 p2, p2, 0x3

    mul-int/lit8 v2, v2, 0x2

    .line 7
    div-int/2addr p2, v2

    return p2

    :cond_9
    :goto_4
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_6
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static E1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;
    .locals 13

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    int-to-float v1, v0

    int-to-float v5, v4

    div-float/2addr v1, v5

    .line 2
    sget-object v5, Lcom/google/android/exoplayer2/video/f;->k4:[I

    array-length v6, v5

    :goto_2
    const/4 v7, 0x0

    if-ge v2, v6, :cond_a

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float v9, v9, v1

    float-to-int v9, v9

    if-le v8, v4, :cond_a

    if-gt v9, v0, :cond_3

    goto :goto_7

    .line 3
    :cond_3
    sget v10, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_6

    if-eqz v3, :cond_4

    move v7, v9

    goto :goto_3

    :cond_4
    move v7, v8

    :goto_3
    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move v8, v9

    .line 4
    :goto_4
    invoke-virtual {p0, v7, v8}, Lcom/google/android/exoplayer2/mediacodec/l;->b(II)Landroid/graphics/Point;

    move-result-object v7

    .line 5
    iget v8, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 6
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/mediacodec/l;->w(IID)Z

    move-result v8

    if-eqz v8, :cond_9

    return-object v7

    :cond_6
    const/16 v10, 0x10

    .line 7
    :try_start_0
    invoke-static {v8, v10}, Lcom/google/android/exoplayer2/util/z0;->m(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 8
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/z0;->m(II)I

    move-result v9

    mul-int/lit8 v9, v9, 0x10

    mul-int v10, v8, v9

    .line 9
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->N()I

    move-result v11

    if-gt v10, v11, :cond_9

    .line 10
    new-instance p0, Landroid/graphics/Point;

    if-eqz v3, :cond_7

    move p1, v9

    goto :goto_5

    :cond_7
    move p1, v8

    :goto_5
    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    move v8, v9

    .line 11
    :goto_6
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    :cond_a
    :goto_7
    return-object v7
.end method

.method private static G1(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/n;",
            "Lcom/google/android/exoplayer2/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/l;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/n;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->u(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;

    move-result-object v1

    const-string v2, "video/dolby-vision"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->q(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    if-ne p1, v0, :cond_3

    const-string p1, "video/avc"

    .line 8
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/n;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 9
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "video/hevc"

    .line 10
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/n;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 11
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_3
    :goto_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected static H1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;)I
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 3
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    add-int/2addr p0, v1

    return p0

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/video/f;->D1(Lcom/google/android/exoplayer2/mediacodec/l;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static K1(J)Z
    .locals 3

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static L1(J)Z
    .locals 3

    const-wide/32 v0, -0x7a120

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private N1()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/video/f;->P3:I

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/f;->O3:J

    sub-long v2, v0, v2

    .line 4
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    iget v5, p0, Lcom/google/android/exoplayer2/video/f;->P3:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/z$a;->n(IJ)V

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/google/android/exoplayer2/video/f;->P3:I

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/f;->O3:J

    :cond_0
    return-void
.end method

.method private P1()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/video/f;->V3:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/f;->U3:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/video/z$a;->B(JI)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/f;->U3:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/video/f;->V3:I

    :cond_0
    return-void
.end method

.method private Q1()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/video/f;->W3:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/video/f;->X3:I

    if-eq v2, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/f;->a4:Lcom/google/android/exoplayer2/video/b0;

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/google/android/exoplayer2/video/b0;->a:I

    if-ne v2, v0, :cond_1

    iget v0, v1, Lcom/google/android/exoplayer2/video/b0;->b:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/f;->X3:I

    if-ne v0, v2, :cond_1

    iget v0, v1, Lcom/google/android/exoplayer2/video/b0;->c:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/f;->Y3:I

    if-ne v0, v2, :cond_1

    iget v0, v1, Lcom/google/android/exoplayer2/video/b0;->d:F

    iget v1, p0, Lcom/google/android/exoplayer2/video/f;->Z3:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/video/b0;

    iget v1, p0, Lcom/google/android/exoplayer2/video/f;->W3:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/f;->X3:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/f;->Y3:I

    iget v4, p0, Lcom/google/android/exoplayer2/video/f;->Z3:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/b0;-><init>(IIIF)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/f;->a4:Lcom/google/android/exoplayer2/video/b0;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/z$a;->D(Lcom/google/android/exoplayer2/video/b0;)V

    :cond_2
    return-void
.end method

.method private R1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->H3:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/z$a;->A(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private S1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->a4:Lcom/google/android/exoplayer2/video/b0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/z$a;->D(Lcom/google/android/exoplayer2/video/b0;)V

    :cond_0
    return-void
.end method

.method private T1(JJLcom/google/android/exoplayer2/Format;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->e4:Lcom/google/android/exoplayer2/video/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v0()Landroid/media/MediaFormat;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 3
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/j;->a(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method private V1()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h1()V

    return-void
.end method

.method private static Y1(Lcom/google/android/exoplayer2/mediacodec/k;[B)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hdr10-plus-info"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/k;->g(Landroid/os/Bundle;)V

    return-void
.end method

.method private Z1()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/f;->z3:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/f;->z3:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/f;->N3:J

    return-void
.end method

.method private a2(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/view/Surface;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/Surface;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r0()Lcom/google/android/exoplayer2/mediacodec/l;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/f;->f2(Lcom/google/android/exoplayer2/mediacodec/l;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/f;->w3:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/mediacodec/l;->g:Z

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 6
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    if-eq v0, p1, :cond_6

    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->x3:Lcom/google/android/exoplayer2/video/l;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/l;->o(Landroid/view/Surface;)V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->H3:Z

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->getState()I

    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q0()Lcom/google/android/exoplayer2/mediacodec/k;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12
    sget v2, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/f;->D3:Z

    if-nez v2, :cond_3

    .line 13
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/video/f;->b2(Lcom/google/android/exoplayer2/mediacodec/k;Landroid/view/Surface;)V

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1()V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K0()V

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eq p1, v1, :cond_5

    .line 17
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->S1()V

    .line 18
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->w1()V

    const/4 p1, 0x2

    if-ne v0, p1, :cond_7

    .line 19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->Z1()V

    goto :goto_3

    .line 20
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->x1()V

    .line 21
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->w1()V

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eq p1, v0, :cond_7

    .line 23
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->S1()V

    .line 24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->R1()V

    :cond_7
    :goto_3
    return-void
.end method

.method private f2(Lcom/google/android/exoplayer2/mediacodec/l;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->b4:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/l;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/f;->y1(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/l;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/f;->w3:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic u1(Lcom/google/android/exoplayer2/video/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->V1()V

    return-void
.end method

.method static synthetic v1(Lcom/google/android/exoplayer2/video/f;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i1(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method private w1()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->J3:Z

    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->b4:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q0()Lcom/google/android/exoplayer2/mediacodec/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/video/f$b;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/video/f$b;-><init>(Lcom/google/android/exoplayer2/video/f;Lcom/google/android/exoplayer2/mediacodec/k;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/f;->d4:Lcom/google/android/exoplayer2/video/f$b;

    :cond_0
    return-void
.end method

.method private x1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/f;->a4:Lcom/google/android/exoplayer2/video/b0;

    return-void
.end method

.method private static z1(Landroid/media/MediaFormat;I)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const-string v0, "tunneled-playback"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v0, "audio-session-id"

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected B0(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->E3:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 9
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_1

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_1

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 11
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q0()Lcom/google/android/exoplayer2/mediacodec/k;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/f;->Y1(Lcom/google/android/exoplayer2/mediacodec/k;[B)V

    :cond_1
    return-void
.end method

.method protected B1(Lcom/google/android/exoplayer2/mediacodec/k;IJ)V
    .locals 0

    const-string p3, "dropVideoBuffer"

    .line 1
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/v0;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/k;->k(IZ)V

    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/util/v0;->c()V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/f;->h2(I)V

    return-void
.end method

.method protected F()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->x1()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->w1()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->H3:Z

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->x3:Lcom/google/android/exoplayer2/video/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/l;->g()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/f;->d4:Lcom/google/android/exoplayer2/video/f$b;

    .line 6
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/z$a;->m(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/z$a;->m(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 8
    throw v0
.end method

.method protected F1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/f$a;
    .locals 12

    .line 1
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->width:I

    .line 2
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->height:I

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/f;->H1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    .line 4
    array-length v3, p3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v3, v4, :cond_1

    if-eq v2, v5, :cond_0

    .line 5
    iget-object p3, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget v3, p2, Lcom/google/android/exoplayer2/Format;->width:I

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->height:I

    .line 6
    invoke-static {p1, p3, v3, p2}, Lcom/google/android/exoplayer2/video/f;->D1(Lcom/google/android/exoplayer2/mediacodec/l;Ljava/lang/String;II)I

    move-result p1

    if-eq p1, v5, :cond_0

    int-to-float p2, v2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float p2, p2, p3

    float-to-int p2, p2

    .line 7
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/video/f$a;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/video/f$a;-><init>(III)V

    return-object p1

    .line 9
    :cond_1
    array-length v3, p3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v3, :cond_6

    aget-object v9, p3, v7

    .line 10
    iget-object v10, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v10, :cond_2

    iget-object v10, v9, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-nez v10, :cond_2

    .line 11
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$b;

    move-result-object v9

    iget-object v10, p2, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/Format$b;->J(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    .line 12
    :cond_2
    invoke-virtual {p1, p2, v9}, Lcom/google/android/exoplayer2/mediacodec/l;->e(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v10

    iget v10, v10, Lcom/google/android/exoplayer2/decoder/e;->d:I

    if-eqz v10, :cond_5

    .line 13
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v10, v5, :cond_4

    iget v11, v9, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v11, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v11, 0x1

    :goto_2
    or-int/2addr v8, v11

    .line 14
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 15
    iget v10, v9, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 16
    invoke-static {p1, v9}, Lcom/google/android/exoplayer2/video/f;->H1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    if-eqz v8, :cond_7

    const/16 p3, 0x42

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaCodecVideoRenderer"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/f;->E1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 19
    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 20
    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 21
    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 22
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/f;->D1(Lcom/google/android/exoplayer2/mediacodec/l;Ljava/lang/String;II)I

    move-result p1

    .line 23
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 p1, 0x39

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Codec max resolution adjusted to: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/video/f$a;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/video/f$a;-><init>(III)V

    return-object p1
.end method

.method protected G(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G(ZZ)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->z()Lcom/google/android/exoplayer2/h2;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/h2;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/video/f;->c4:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 4
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/f;->b4:Z

    if-eq v1, p1, :cond_2

    .line 5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/f;->b4:Z

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1()V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/video/z$a;->o(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/f;->x3:Lcom/google/android/exoplayer2/video/l;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/l;->h()V

    .line 9
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/video/f;->K3:Z

    .line 10
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->L3:Z

    return-void
.end method

.method protected H(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H(JZ)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->w1()V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/f;->x3:Lcom/google/android/exoplayer2/video/l;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/l;->l()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/f;->S3:J

    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/f;->M3:J

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/video/f;->Q3:I

    if-eqz p3, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->Z1()V

    goto :goto_0

    .line 8
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/f;->N3:J

    :goto_0
    return-void
.end method

.method protected I()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/DummySurface;->release()V

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    if-ne v2, v3, :cond_2

    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    .line 10
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/video/DummySurface;->release()V

    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 12
    :cond_3
    throw v1
.end method

.method protected I1(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/video/f$a;FZI)Landroid/media/MediaFormat;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    const-string v1, "width"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    const-string v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 5
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/z;->j(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 6
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const-string v1, "frame-rate"

    invoke-static {v0, v1, p2}, Lcom/google/android/exoplayer2/util/z;->d(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 7
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const-string v1, "rotation-degrees"

    invoke-static {v0, v1, p2}, Lcom/google/android/exoplayer2/util/z;->e(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 8
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/z;->c(Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/video/ColorInfo;)V

    .line 9
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->q(Lcom/google/android/exoplayer2/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "profile"

    .line 13
    invoke-static {v0, p2, p1}, Lcom/google/android/exoplayer2/util/z;->e(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 14
    :cond_0
    iget p1, p3, Lcom/google/android/exoplayer2/video/f$a;->a:I

    const-string p2, "max-width"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 15
    iget p1, p3, Lcom/google/android/exoplayer2/video/f$a;->b:I

    const-string p2, "max-height"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 16
    iget p1, p3, Lcom/google/android/exoplayer2/video/f$a;->c:I

    const-string p2, "max-input-size"

    invoke-static {v0, p2, p1}, Lcom/google/android/exoplayer2/util/z;->e(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 17
    sget p1, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 p2, 0x17

    const/4 p3, 0x0

    if-lt p1, p2, :cond_1

    const-string p1, "priority"

    .line 18
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_1

    const-string p1, "operating-rate"

    .line 19
    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_1
    if-eqz p5, :cond_2

    const/4 p1, 0x1

    const-string p2, "no-post-process"

    .line 20
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "auto-frc"

    .line 21
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    if-eqz p6, :cond_3

    .line 22
    invoke-static {v0, p6}, Lcom/google/android/exoplayer2/video/f;->z1(Landroid/media/MediaFormat;I)V

    :cond_3
    return-object v0
.end method

.method protected J()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/video/f;->P3:I

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/f;->O3:J

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/f;->T3:J

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/google/android/exoplayer2/video/f;->U3:J

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/video/f;->V3:I

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->x3:Lcom/google/android/exoplayer2/video/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/l;->m()V

    return-void
.end method

.method protected J1()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    return-object v0
.end method

.method protected K()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/f;->N3:J

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->N1()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->P1()V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->x3:Lcom/google/android/exoplayer2/video/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/l;->n()V

    .line 5
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K()V

    return-void
.end method

.method protected M1(JZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->N(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    iget v0, p2, Lcom/google/android/exoplayer2/decoder/d;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/exoplayer2/decoder/d;->i:I

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/video/f;->R3:I

    add-int/2addr v0, p1

    if-eqz p3, :cond_1

    .line 4
    iget p1, p2, Lcom/google/android/exoplayer2/decoder/d;->f:I

    add-int/2addr p1, v0

    iput p1, p2, Lcom/google/android/exoplayer2/decoder/d;->f:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/f;->h2(I)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n0()Z

    return v1
.end method

.method protected N0(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/w;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/z$a;->C(Ljava/lang/Exception;)V

    return-void
.end method

.method protected O0(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/z$a;->k(Ljava/lang/String;JJ)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/f;->y1(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/f;->D3:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r0()Lcom/google/android/exoplayer2/mediacodec/l;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/l;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/mediacodec/l;->p()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/f;->E3:Z

    .line 4
    sget p1, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/f;->b4:Z

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/video/f$b;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q0()Lcom/google/android/exoplayer2/mediacodec/k;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/mediacodec/k;

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/video/f$b;-><init>(Lcom/google/android/exoplayer2/video/f;Lcom/google/android/exoplayer2/mediacodec/k;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/f;->d4:Lcom/google/android/exoplayer2/video/f$b;

    :cond_0
    return-void
.end method

.method O1()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->L3:Z

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/f;->J3:Z

    if-nez v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->J3:Z

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/z$a;->A(Ljava/lang/Object;)V

    .line 5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->H3:Z

    :cond_0
    return-void
.end method

.method protected P0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/z$a;->l(Ljava/lang/String;)V

    return-void
.end method

.method protected Q(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 8

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/l;->e(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/google/android/exoplayer2/decoder/e;->e:I

    .line 3
    iget v2, p3, Lcom/google/android/exoplayer2/Format;->width:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/f;->C3:Lcom/google/android/exoplayer2/video/f$a;

    iget v4, v3, Lcom/google/android/exoplayer2/video/f$a;->a:I

    if-gt v2, v4, :cond_0

    iget v2, p3, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, v3, Lcom/google/android/exoplayer2/video/f$a;->b:I

    if-le v2, v3, :cond_1

    :cond_0
    or-int/lit16 v1, v1, 0x100

    .line 4
    :cond_1
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/video/f;->H1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/f;->C3:Lcom/google/android/exoplayer2/video/f$a;

    iget v3, v3, Lcom/google/android/exoplayer2/video/f$a;->c:I

    if-le v2, v3, :cond_2

    or-int/lit8 v1, v1, 0x40

    :cond_2
    move v7, v1

    .line 5
    new-instance v1, Lcom/google/android/exoplayer2/decoder/e;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/l;->a:Ljava/lang/String;

    if-eqz v7, :cond_3

    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 6
    :cond_3
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/e;->d:I

    move v6, p1

    :goto_0
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/e;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v1
.end method

.method protected Q0(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q0(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/f;->y3:Lcom/google/android/exoplayer2/video/z$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/v0;->b:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/video/z$a;->p(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-object v0
.end method

.method protected R0(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .locals 6
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q0()Lcom/google/android/exoplayer2/mediacodec/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/video/f;->I3:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/k;->p(I)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->b4:Z

    if-eqz v0, :cond_1

    .line 4
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/f;->W3:I

    .line 5
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/f;->X3:I

    goto :goto_3

    .line 6
    :cond_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crop-right"

    .line 7
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_1

    :cond_3
    const-string v0, "width"

    .line 12
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer2/video/f;->W3:I

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v5

    goto :goto_2

    :cond_4
    const-string v0, "height"

    .line 14
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/android/exoplayer2/video/f;->X3:I

    .line 15
    :goto_3
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iput p2, p0, Lcom/google/android/exoplayer2/video/f;->Z3:F

    .line 16
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    .line 17
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_7

    .line 18
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/video/f;->W3:I

    .line 19
    iget v1, p0, Lcom/google/android/exoplayer2/video/f;->X3:I

    iput v1, p0, Lcom/google/android/exoplayer2/video/f;->W3:I

    .line 20
    iput v0, p0, Lcom/google/android/exoplayer2/video/f;->X3:I

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    .line 21
    iput v0, p0, Lcom/google/android/exoplayer2/video/f;->Z3:F

    goto :goto_4

    .line 22
    :cond_6
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/f;->Y3:I

    .line 23
    :cond_7
    :goto_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/f;->x3:Lcom/google/android/exoplayer2/video/l;

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/video/l;->i(F)V

    return-void
.end method

.method protected S0(J)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->S0(J)V

    .line 2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/f;->b4:Z

    if-nez p1, :cond_0

    .line 3
    iget p1, p0, Lcom/google/android/exoplayer2/video/f;->R3:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/f;->R3:I

    :cond_0
    return-void
.end method

.method protected T0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T0()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->w1()V

    return-void
.end method

.method protected U0(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->b4:Z

    if-nez v0, :cond_0

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/video/f;->R3:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/video/f;->R3:I

    .line 3
    :cond_0
    sget v1, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 4
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/video/f;->U1(J)V

    :cond_1
    return-void
.end method

.method protected U1(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t1(J)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->Q1()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/d;->e:I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/f;->O1()V

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/f;->S0(J)V

    return-void
.end method

.method protected W0(JJLcom/google/android/exoplayer2/mediacodec/k;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
    .locals 21
    .param p5    # Lcom/google/android/exoplayer2/mediacodec/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p5

    move/from16 v10, p7

    move-wide/from16 v0, p10

    .line 1
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-wide v2, v6, Lcom/google/android/exoplayer2/video/f;->M3:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v2, v4

    if-nez v11, :cond_0

    .line 3
    iput-wide v7, v6, Lcom/google/android/exoplayer2/video/f;->M3:J

    .line 4
    :cond_0
    iget-wide v2, v6, Lcom/google/android/exoplayer2/video/f;->S3:J

    cmp-long v11, v0, v2

    if-eqz v11, :cond_1

    .line 5
    iget-object v2, v6, Lcom/google/android/exoplayer2/video/f;->x3:Lcom/google/android/exoplayer2/video/l;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/video/l;->j(J)V

    .line 6
    iput-wide v0, v6, Lcom/google/android/exoplayer2/video/f;->S3:J

    .line 7
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z0()J

    move-result-wide v2

    sub-long v11, v0, v2

    const/4 v13, 0x1

    if-eqz p12, :cond_2

    if-nez p13, :cond_2

    .line 8
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/f;->g2(Lcom/google/android/exoplayer2/mediacodec/k;IJ)V

    return v13

    .line 9
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A0()F

    move-result v14

    float-to-double v14, v14

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/f;->getState()I

    move-result v4

    const/4 v5, 0x2

    const/16 v16, 0x0

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 11
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    sub-long/2addr v0, v7

    long-to-double v0, v0

    div-double/2addr v0, v14

    double-to-long v0, v0

    if-eqz v4, :cond_4

    sub-long v14, v17, p3

    sub-long/2addr v0, v14

    .line 12
    :cond_4
    iget-object v5, v6, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    iget-object v14, v6, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    if-ne v5, v14, :cond_6

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/f;->K1(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/f;->g2(Lcom/google/android/exoplayer2/mediacodec/k;IJ)V

    .line 15
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/f;->i2(J)V

    return v13

    :cond_5
    return v16

    .line 16
    :cond_6
    iget-wide v14, v6, Lcom/google/android/exoplayer2/video/f;->T3:J

    sub-long v14, v17, v14

    .line 17
    iget-boolean v5, v6, Lcom/google/android/exoplayer2/video/f;->L3:Z

    if-nez v5, :cond_7

    if-nez v4, :cond_8

    .line 18
    iget-boolean v5, v6, Lcom/google/android/exoplayer2/video/f;->K3:Z

    if-eqz v5, :cond_9

    goto :goto_1

    .line 19
    :cond_7
    iget-boolean v5, v6, Lcom/google/android/exoplayer2/video/f;->J3:Z

    if-nez v5, :cond_9

    :cond_8
    :goto_1
    move-wide/from16 p10, v14

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    move-wide/from16 p10, v14

    const/4 v5, 0x0

    .line 20
    :goto_2
    iget-wide v13, v6, Lcom/google/android/exoplayer2/video/f;->N3:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v15, v13, v17

    if-nez v15, :cond_b

    cmp-long v13, v7, v2

    if-ltz v13, :cond_b

    if-nez v5, :cond_a

    if-eqz v4, :cond_b

    move-wide/from16 v2, p10

    .line 21
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/video/f;->e2(JJ)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const/4 v2, 0x1

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    :goto_3
    const/16 v13, 0x15

    if-eqz v2, :cond_d

    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v2

    move-object/from16 p13, p14

    .line 23
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/f;->T1(JJLcom/google/android/exoplayer2/Format;)V

    .line 24
    sget v4, Lcom/google/android/exoplayer2/util/z0;->a:I

    if-lt v4, v13, :cond_c

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v2

    .line 25
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/exoplayer2/video/f;->X1(Lcom/google/android/exoplayer2/mediacodec/k;IJJ)V

    goto :goto_4

    .line 26
    :cond_c
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/f;->W1(Lcom/google/android/exoplayer2/mediacodec/k;IJ)V

    .line 27
    :goto_4
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/f;->i2(J)V

    :goto_5
    const/4 v0, 0x1

    return v0

    :cond_d
    if-eqz v4, :cond_15

    .line 28
    iget-wide v2, v6, Lcom/google/android/exoplayer2/video/f;->M3:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_e

    goto/16 :goto_9

    .line 29
    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    mul-long v0, v0, v19

    add-long/2addr v0, v2

    .line 30
    iget-object v4, v6, Lcom/google/android/exoplayer2/video/f;->x3:Lcom/google/android/exoplayer2/video/l;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/video/l;->b(J)J

    move-result-wide v14

    sub-long v0, v14, v2

    .line 31
    div-long v3, v0, v19

    .line 32
    iget-wide v0, v6, Lcom/google/android/exoplayer2/video/f;->N3:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v17

    if-eqz v2, :cond_f

    const/4 v5, 0x1

    goto :goto_6

    :cond_f
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide/from16 v17, v3

    move-wide/from16 v3, p3

    move v13, v5

    move/from16 v5, p13

    .line 33
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/f;->c2(JJZ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 34
    invoke-virtual {v6, v7, v8, v13}, Lcom/google/android/exoplayer2/video/f;->M1(JZ)Z

    move-result v0

    if-eqz v0, :cond_10

    return v16

    :cond_10
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-wide/from16 v3, p3

    move/from16 v5, p13

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/f;->d2(JJZ)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v13, :cond_11

    .line 36
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/f;->g2(Lcom/google/android/exoplayer2/mediacodec/k;IJ)V

    goto :goto_7

    .line 37
    :cond_11
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/f;->B1(Lcom/google/android/exoplayer2/mediacodec/k;IJ)V

    :goto_7
    move-wide/from16 v0, v17

    .line 38
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/f;->i2(J)V

    goto :goto_5

    :cond_12
    move-wide/from16 v0, v17

    .line 39
    sget v2, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_13

    const-wide/32 v2, 0xc350

    cmp-long v4, v0, v2

    if-gez v4, :cond_15

    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v14

    move-object/from16 p13, p14

    .line 40
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/f;->T1(JJLcom/google/android/exoplayer2/Format;)V

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v14

    .line 41
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/exoplayer2/video/f;->X1(Lcom/google/android/exoplayer2/mediacodec/k;IJJ)V

    .line 42
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/f;->i2(J)V

    goto/16 :goto_5

    :cond_13
    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gez v4, :cond_15

    const-wide/16 v2, 0x2af8

    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    const-wide/16 v2, 0x2710

    sub-long v3, v0, v2

    .line 43
    :try_start_0
    div-long v3, v3, v19

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 44
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return v16

    :cond_14
    :goto_8
    move-object/from16 p8, p0

    move-wide/from16 p9, v11

    move-wide/from16 p11, v14

    move-object/from16 p13, p14

    .line 45
    invoke-direct/range {p8 .. p13}, Lcom/google/android/exoplayer2/video/f;->T1(JJLcom/google/android/exoplayer2/Format;)V

    .line 46
    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/video/f;->W1(Lcom/google/android/exoplayer2/mediacodec/k;IJ)V

    .line 47
    invoke-virtual {v6, v0, v1}, Lcom/google/android/exoplayer2/video/f;->i2(J)V

    goto/16 :goto_5

    :cond_15
    :goto_9
    return v16
.end method

.method protected W1(Lcom/google/android/exoplayer2/mediacodec/k;IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->Q1()V

    const-string p3, "releaseOutputBuffer"

    .line 2
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/v0;->a(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/k;->k(IZ)V

    .line 4
    invoke-static {}, Lcom/google/android/exoplayer2/util/v0;->c()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/f;->T3:J

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/video/f;->Q3:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/f;->O1()V

    return-void
.end method

.method protected X1(Lcom/google/android/exoplayer2/mediacodec/k;IJJ)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->Q1()V

    const-string p3, "releaseOutputBuffer"

    .line 2
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/v0;->a(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p2, p5, p6}, Lcom/google/android/exoplayer2/mediacodec/k;->h(IJ)V

    .line 4
    invoke-static {}, Lcom/google/android/exoplayer2/util/v0;->c()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/f;->T3:J

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/video/f;->Q3:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/f;->O1()V

    return-void
.end method

.method protected a0(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/l;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecDecoderException;
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/mediacodec/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/l;Landroid/view/Surface;)V

    return-object v0
.end method

.method protected b2(Lcom/google/android/exoplayer2/mediacodec/k;Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/k;->e(Landroid/view/Surface;)V

    return-void
.end method

.method protected c1()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c1()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/video/f;->R3:I

    return-void
.end method

.method protected c2(JJZ)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/f;->L1(J)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->d(ILjava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget p2, p0, Lcom/google/android/exoplayer2/video/f;->c4:I

    if-eq p2, p1, :cond_4

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/video/f;->c4:I

    .line 5
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/f;->b4:Z

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a1()V

    goto :goto_0

    .line 7
    :cond_1
    check-cast p2, Lcom/google/android/exoplayer2/video/j;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/f;->e4:Lcom/google/android/exoplayer2/video/j;

    goto :goto_0

    .line 8
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/video/f;->I3:I

    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q0()Lcom/google/android/exoplayer2/mediacodec/k;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    iget p2, p0, Lcom/google/android/exoplayer2/video/f;->I3:I

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/k;->p(I)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/video/f;->a2(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected d2(JJZ)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/f;->K1(J)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected e2(JJ)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/f;->K1(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 p1, 0x186a0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Z
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->J3:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q0()Lcom/google/android/exoplayer2/mediacodec/k;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->b4:Z

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/f;->N3:J

    return v1

    .line 4
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/f;->N3:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 5
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/f;->N3:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    .line 6
    :cond_4
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/f;->N3:J

    return v0
.end method

.method protected g2(Lcom/google/android/exoplayer2/mediacodec/k;IJ)V
    .locals 0

    const-string p3, "skipVideoBuffer"

    .line 1
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/v0;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/k;->k(IZ)V

    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/util/v0;->c()V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/d;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/d;->f:I

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method protected h2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/d;->g:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/d;->g:I

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/video/f;->P3:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/video/f;->P3:I

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/video/f;->Q3:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/video/f;->Q3:I

    .line 4
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/d;->h:I

    .line 5
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/google/android/exoplayer2/decoder/d;->h:I

    .line 6
    iget p1, p0, Lcom/google/android/exoplayer2/video/f;->A3:I

    if-lez p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/f;->P3:I

    if-lt v0, p1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/f;->N1()V

    :cond_0
    return-void
.end method

.method protected i2(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/decoder/d;->a(J)V

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/f;->U3:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/f;->U3:J

    .line 3
    iget p1, p0, Lcom/google/android/exoplayer2/video/f;->V3:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/f;->V3:I

    return-void
.end method

.method protected m1(Lcom/google/android/exoplayer2/mediacodec/l;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/f;->f2(Lcom/google/android/exoplayer2/mediacodec/l;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method protected o1(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/Format;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a0;->s(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/f;->G1(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-static {p1, p2, v1, v1}, Lcom/google/android/exoplayer2/video/f;->G1(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object v3

    .line 8
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-static {v2}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1

    .line 10
    :cond_3
    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p1(Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 p1, 0x2

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1

    .line 12
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/mediacodec/l;

    .line 13
    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/mediacodec/l;->o(Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    .line 14
    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/mediacodec/l;->q(Lcom/google/android/exoplayer2/Format;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x10

    goto :goto_1

    :cond_5
    const/16 v3, 0x8

    :goto_1
    if-eqz v4, :cond_6

    .line 15
    invoke-static {p1, p2, v0, v2}, Lcom/google/android/exoplayer2/video/f;->G1(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/l;

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/l;->o(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/l;->q(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v1, 0x20

    :cond_6
    if-eqz v4, :cond_7

    const/4 p1, 0x4

    goto :goto_2

    :cond_7
    const/4 p1, 0x3

    .line 20
    :goto_2
    invoke-static {p1, v3, v1}, Lcom/google/android/exoplayer2/f2;->b(III)I

    move-result p1

    return p1
.end method

.method public p(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p(FF)V

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/f;->x3:Lcom/google/android/exoplayer2/video/l;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/video/l;->k(F)V

    return-void
.end method

.method protected s0()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->b4:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected u0(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
    .locals 5

    .line 1
    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 2
    iget v3, v3, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p2, v2, v0

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    mul-float v0, v2, p1

    :goto_1
    return v0
.end method

.method protected w0(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/n;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/l;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->b4:Z

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/video/f;->G1(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/Format;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected y0(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/k$a;
    .locals 8
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/video/DummySurface;->secure:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/mediacodec/l;->g:Z

    if-eq v1, v2, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/DummySurface;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 4
    :cond_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/mediacodec/l;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->D()[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/video/f;->F1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/f$a;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/video/f;->C3:Lcom/google/android/exoplayer2/video/f$a;

    .line 6
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/video/f;->B3:Z

    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/f;->b4:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/video/f;->c4:I

    move v6, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p2

    move v4, p4

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/f;->I1(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/video/f$a;FZI)Landroid/media/MediaFormat;

    move-result-object v2

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    if-nez v0, :cond_4

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/f;->f2(Lcom/google/android/exoplayer2/mediacodec/l;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->w3:Landroid/content/Context;

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/mediacodec/l;->g:Z

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/DummySurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/f;->G3:Lcom/google/android/exoplayer2/video/DummySurface;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    goto :goto_1

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 15
    :cond_4
    :goto_1
    new-instance v7, Lcom/google/android/exoplayer2/mediacodec/k$a;

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/f;->F3:Landroid/view/Surface;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/k$a;-><init>(Lcom/google/android/exoplayer2/mediacodec/l;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object v7
.end method

.method protected y1(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "OMX.google"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    const-class p1, Lcom/google/android/exoplayer2/video/f;

    monitor-enter p1

    .line 3
    :try_start_0
    sget-boolean v0, Lcom/google/android/exoplayer2/video/f;->n4:Z

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/exoplayer2/video/f;->C1()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/exoplayer2/video/f;->o4:Z

    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/google/android/exoplayer2/video/f;->n4:Z

    .line 6
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-boolean p1, Lcom/google/android/exoplayer2/video/f;->o4:Z

    return p1

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
