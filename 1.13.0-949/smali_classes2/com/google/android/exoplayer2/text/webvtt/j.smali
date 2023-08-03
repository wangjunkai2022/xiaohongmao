.class public final synthetic Lcom/google/android/exoplayer2/text/webvtt/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/text/webvtt/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/j;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/j;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/j;->a:Lcom/google/android/exoplayer2/text/webvtt/j;

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

    check-cast p1, Lcom/google/android/exoplayer2/text/webvtt/e;

    check-cast p2, Lcom/google/android/exoplayer2/text/webvtt/e;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/k;->e(Lcom/google/android/exoplayer2/text/webvtt/e;Lcom/google/android/exoplayer2/text/webvtt/e;)I

    move-result p1

    return p1
.end method
