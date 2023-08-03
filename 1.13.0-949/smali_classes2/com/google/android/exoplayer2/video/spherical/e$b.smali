.class public final Lcom/google/android/exoplayer2/video/spherical/e$b;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/spherical/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/video/spherical/e$c;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/video/spherical/e$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/e$b;->a:[Lcom/google/android/exoplayer2/video/spherical/e$c;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/video/spherical/e$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/e$b;->a:[Lcom/google/android/exoplayer2/video/spherical/e$c;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/e$b;->a:[Lcom/google/android/exoplayer2/video/spherical/e$c;

    array-length v0, v0

    return v0
.end method
