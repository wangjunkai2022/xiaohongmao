.class public final synthetic Lcom/google/android/exoplayer2/drm/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/b0$g;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/drm/g0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/g0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/g0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/g0;->a:Lcom/google/android/exoplayer2/drm/g0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/b0;
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/h0;->t(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/b0;

    move-result-object p1

    return-object p1
.end method
