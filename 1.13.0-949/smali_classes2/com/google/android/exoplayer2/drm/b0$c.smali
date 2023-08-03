.class public final Lcom/google/android/exoplayer2/drm/b0$c;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/drm/b0$c;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/b0$c;->b:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/b0$c;->b:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/drm/b0$c;->a:I

    return v0
.end method
