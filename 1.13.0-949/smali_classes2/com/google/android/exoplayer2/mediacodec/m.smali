.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/n;


# static fields
.field public static final synthetic b:Lcom/google/android/exoplayer2/mediacodec/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/m;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/mediacodec/m;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/m;->b:Lcom/google/android/exoplayer2/mediacodec/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->s(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
