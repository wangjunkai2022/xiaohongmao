.class public final synthetic Lcom/google/android/exoplayer2/offline/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/e;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/offline/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/offline/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/offline/h;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/h;->a:Lcom/google/android/exoplayer2/offline/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final o(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method
