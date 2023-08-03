.class public final synthetic Lcom/google/android/exoplayer2/offline/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/o$a;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/offline/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/offline/j;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/offline/j;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/j;->a:Lcom/google/android/exoplayer2/offline/j;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-static {}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->d()V

    return-void
.end method
