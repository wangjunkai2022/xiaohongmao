.class public Lcom/googlecode/mp4parser/authoring/tracks/a;
.super Lcom/googlecode/mp4parser/authoring/a;
.source "AACTrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/a$b;
    }
.end annotation


# static fields
.field static n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field d:Lcom/googlecode/mp4parser/authoring/i;

.field e:Lcom/coremedia/iso/boxes/s0;

.field f:[J

.field g:Lcom/googlecode/mp4parser/authoring/tracks/a$b;

.field h:I

.field i:J

.field j:J

.field private k:Lcom/googlecode/mp4parser/e;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AAC Main"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AAC LC (Low Complexity)"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "AAC SSR (Scalable Sample Rate)"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "AAC LTP (Long Term Prediction)"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "SBR (Spectral Band Replication)"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "AAC Scalable"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "TwinVQ"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "CELP (Code Excited Linear Prediction)"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "HXVC (Harmonic Vector eXcitation Coding)"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "Reserved"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v12, 0xb

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v13, 0xc

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "TTSI (Text-To-Speech Interface)"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v13, 0xd

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Main Synthesis"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v13, 0xe

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Wavetable Synthesis"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v13, 0xf

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "General MIDI"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v13, 0x10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "Algorithmic Synthesis and Audio Effects"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v13, 0x11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "ER (Error Resilient) AAC LC"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v13, 0x12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "ER AAC LTP"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "ER AAC Scalable"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x15

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "ER TwinVQ"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "ER BSAC (Bit-Sliced Arithmetic Coding)"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "ER AAC LD (Low Delay)"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "ER CELP"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x19

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "ER HVXC"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x1a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "ER HILN (Harmonic and Individual Lines plus Noise)"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x1b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "ER Parametric"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x1c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "SSC (SinuSoidal Coding)"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x1d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "PS (Parametric Stereo)"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x1e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "MPEG Surround"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x1f

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "(Escape value)"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "Layer-1"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x21

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "Layer-2"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x22

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "Layer-3"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x23

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "DST (Direct Stream Transfer)"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x24

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "ALS (Audio Lossless)"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x25

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "SLS (Scalable LosslesS)"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x26

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "SLS non-core"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x27

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "ER AAC ELD (Enhanced Low Delay)"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x28

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "SMR (Symbolic Music Representation) Simple"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x29

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "SMR Main"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x2a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "USAC (Unified Speech and Audio Coding) (no SBR)"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x2b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "SAOC (Spatial Audio Object Coding)"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x2c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "LD MPEG Surround"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->n:Ljava/util/Map;

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "USAC"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const v11, 0x17700

    .line 48
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const v14, 0x15888

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const v15, 0xfa00

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const v16, 0xbb80

    move-object/from16 v17, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const v2, 0xac44

    move-object/from16 v18, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const/16 v3, 0x7d00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const/16 v2, 0x5dc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const/16 v3, 0x5622

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const/16 v2, 0x3e80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const/16 v3, 0x2ee0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const/16 v3, 0x2b11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const/16 v3, 0x1f40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    invoke-interface {v0, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v3, v18

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const v1, 0xac44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const/16 v1, 0x7d00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const/16 v1, 0x5dc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const/16 v1, 0x5622

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const/16 v1, 0x2ee0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const/16 v1, 0x2b11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    const/16 v1, 0x1f40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "eng"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/googlecode/mp4parser/authoring/tracks/a;-><init>(Lcom/googlecode/mp4parser/e;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/e;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/a;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/googlecode/mp4parser/authoring/i;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/i;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->d:Lcom/googlecode/mp4parser/authoring/i;

    .line 4
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->m:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->k:Lcom/googlecode/mp4parser/e;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->l:Ljava/util/List;

    .line 7
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/a;->d(Lcom/googlecode/mp4parser/e;)Lcom/googlecode/mp4parser/authoring/tracks/a$b;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->g:Lcom/googlecode/mp4parser/authoring/tracks/a$b;

    .line 8
    iget p1, p1, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->f:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    .line 9
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v2, v0

    .line 10
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 11
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    const-wide/16 v0, 0x8

    mul-long v5, v5, v0

    long-to-double v0, v5

    div-double/2addr v0, v2

    double-to-int p1, v0

    int-to-long v0, p1

    .line 12
    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->j:J

    const/16 p1, 0x600

    .line 13
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->h:I

    .line 14
    new-instance p1, Lcom/coremedia/iso/boxes/s0;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/s0;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->e:Lcom/coremedia/iso/boxes/s0;

    .line 15
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/c;

    const-string v0, "mp4a"

    invoke-direct {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/c;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->g:Lcom/googlecode/mp4parser/authoring/tracks/a$b;

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->g:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    .line 17
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/c;->s0(I)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/c;->s0(I)V

    .line 19
    :goto_1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->g:Lcom/googlecode/mp4parser/authoring/tracks/a$b;

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->f:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/c;->x0(J)V

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;->d(I)V

    const/16 v0, 0x10

    .line 21
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/c;->y0(I)V

    .line 22
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/b;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/b;-><init>()V

    .line 23
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;-><init>()V

    .line 24
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;->x(I)V

    .line 25
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/o;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/o;-><init>()V

    const/4 v3, 0x2

    .line 26
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/o;->j(I)V

    .line 27
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;->z(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/o;)V

    .line 28
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;-><init>()V

    const/16 v4, 0x40

    .line 29
    invoke-virtual {v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->v(I)V

    const/4 v4, 0x5

    .line 30
    invoke-virtual {v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->w(I)V

    .line 31
    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->h:I

    invoke-virtual {v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->t(I)V

    .line 32
    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->i:J

    invoke-virtual {v2, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->u(J)V

    .line 33
    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->j:J

    invoke-virtual {v2, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->s(J)V

    .line 34
    new-instance v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;-><init>()V

    .line 35
    invoke-virtual {v4, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;->v(I)V

    .line 36
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->g:Lcom/googlecode/mp4parser/authoring/tracks/a$b;

    iget v3, v3, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->a:I

    invoke-virtual {v4, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;->y(I)V

    .line 37
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->g:Lcom/googlecode/mp4parser/authoring/tracks/a$b;

    iget v3, v3, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->g:I

    invoke-virtual {v4, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;->w(I)V

    .line 38
    invoke-virtual {v2, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->r(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;)V

    .line 39
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;->v(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;)V

    .line 40
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;->t()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/b;->B(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;)V

    .line 42
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/a;->y(Ljava/nio/ByteBuffer;)V

    .line 43
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 44
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->e:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 45
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->d:Lcom/googlecode/mp4parser/authoring/i;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/i;->l(Ljava/util/Date;)V

    .line 46
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->d:Lcom/googlecode/mp4parser/authoring/i;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/i;->r(Ljava/util/Date;)V

    .line 47
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->d:Lcom/googlecode/mp4parser/authoring/i;

    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/authoring/i;->o(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->d:Lcom/googlecode/mp4parser/authoring/i;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/authoring/i;->u(F)V

    .line 49
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->d:Lcom/googlecode/mp4parser/authoring/i;

    iget-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->g:Lcom/googlecode/mp4parser/authoring/tracks/a$b;

    iget p2, p2, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->f:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/authoring/i;->s(J)V

    .line 50
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->f:[J

    const-wide/16 v0, 0x400

    .line 51
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void

    .line 52
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/mp4parser/authoring/f;

    .line 53
    invoke-interface {v7}, Lcom/googlecode/mp4parser/authoring/f;->getSize()J

    move-result-wide v9

    long-to-int v7, v9

    int-to-long v9, v7

    add-long/2addr v5, v9

    .line 54
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    :goto_2
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v7

    int-to-double v9, v7

    cmpl-double v7, v9, v0

    if-gtz v7, :cond_4

    .line 56
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v7

    double-to-int v9, v0

    if-ne v7, v9, :cond_0

    .line 57
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    int-to-double v7, v8

    mul-double v7, v7, v9

    .line 58
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    mul-double v7, v7, v0

    .line 59
    iget-wide v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->i:J

    long-to-double v9, v9

    cmpl-double v11, v7, v9

    if-lez v11, :cond_0

    double-to-int v7, v7

    int-to-long v7, v7

    .line 60
    iput-wide v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->i:J

    goto/16 :goto_0

    .line 61
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 62
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_3

    .line 63
    :cond_4
    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_2
.end method

.method static synthetic a(Lcom/googlecode/mp4parser/authoring/tracks/a;)Lcom/googlecode/mp4parser/e;
    .locals 0

    iget-object p0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->k:Lcom/googlecode/mp4parser/e;

    return-object p0
.end method

.method private b(Lcom/googlecode/mp4parser/e;)Lcom/googlecode/mp4parser/authoring/tracks/a$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;

    invoke-direct {v0, p0}, Lcom/googlecode/mp4parser/authoring/tracks/a$b;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/a;)V

    const/4 v1, 0x7

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-lt v3, v1, :cond_4

    .line 4
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-direct {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 v2, 0xc

    .line 5
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v2

    const/16 v3, 0xfff

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->b:I

    const/4 v3, 0x2

    .line 7
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v4

    iput v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->c:I

    .line 8
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v4

    iput v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->d:I

    .line 9
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->e:I

    const/4 v4, 0x4

    .line 10
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v4

    iput v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->a:I

    .line 11
    sget-object v5, Lcom/googlecode/mp4parser/authoring/tracks/a;->o:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->f:I

    .line 12
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    const/4 v4, 0x3

    .line 13
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v4

    iput v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->g:I

    .line 14
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v4

    iput v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->h:I

    .line 15
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v4

    iput v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->i:I

    .line 16
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v4

    iput v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->j:I

    .line 17
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v4

    iput v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->k:I

    const/16 v4, 0xd

    .line 18
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v4

    iput v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->l:I

    const/16 v4, 0xb

    .line 19
    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v4

    iput v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->m:I

    .line 20
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->n:I

    if-ne v1, v2, :cond_2

    .line 21
    iget v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->d:I

    if-nez v1, :cond_1

    .line 22
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    :cond_1
    return-object v0

    .line 23
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "This muxer can only work with 1 AAC frame per ADTS frame"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Expected Start Word 0xfff"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_4
    invoke-interface {p1, v2}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Lcom/googlecode/mp4parser/e;)Lcom/googlecode/mp4parser/authoring/tracks/a$b;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/a;->b(Lcom/googlecode/mp4parser/e;)Lcom/googlecode/mp4parser/authoring/tracks/a$b;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    move-object v0, v1

    .line 2
    :cond_1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->C()J

    move-result-wide v4

    .line 3
    iget v2, v1, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->l:I

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->a()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v6, v2

    .line 4
    iget-object v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->l:Ljava/util/List;

    new-instance v9, Lcom/googlecode/mp4parser/authoring/tracks/a$a;

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/googlecode/mp4parser/authoring/tracks/a$a;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/a;JJ)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->C()J

    move-result-wide v2

    iget v4, v1, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->l:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->a()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Lcom/googlecode/mp4parser/e;->S(J)V

    goto :goto_0
.end method


# virtual methods
.method public B()Lcom/coremedia/iso/boxes/a1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->l:Ljava/util/List;

    return-object v0
.end method

.method public a0()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->d:Lcom/googlecode/mp4parser/authoring/i;

    return-object v0
.end method

.method public c0()[J
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->f:[J

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->k:Lcom/googlecode/mp4parser/e;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/e;->close()V

    return-void
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string v0, "soun"

    return-object v0
.end method

.method public m0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/r0$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/i$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AACTrackImpl{sampleRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->g:Lcom/googlecode/mp4parser/authoring/tracks/a$b;

    iget v1, v1, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelconfig="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->g:Lcom/googlecode/mp4parser/authoring/tracks/a$b;

    iget v1, v1, Lcom/googlecode/mp4parser/authoring/tracks/a$b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/a;->e:Lcom/coremedia/iso/boxes/s0;

    return-object v0
.end method

.method public z()[J
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
