.class public final synthetic Lcom/google/android/exoplayer2/offline/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/offline/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/offline/s;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/offline/s;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/s;->a:Lcom/google/android/exoplayer2/offline/s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/offline/e;

    check-cast p2, Lcom/google/android/exoplayer2/offline/e;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/offline/r$c;->a(Lcom/google/android/exoplayer2/offline/e;Lcom/google/android/exoplayer2/offline/e;)I

    move-result p1

    return p1
.end method
