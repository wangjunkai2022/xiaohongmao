.class public final Lcom/google/android/exoplayer2/upstream/k0$a;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/m$a;

.field private final b:Lcom/google/android/exoplayer2/upstream/k0$b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/upstream/k0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/k0$a;->a:Lcom/google/android/exoplayer2/upstream/m$a;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/k0$a;->b:Lcom/google/android/exoplayer2/upstream/k0$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/android/exoplayer2/upstream/m;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/k0$a;->d()Lcom/google/android/exoplayer2/upstream/k0;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/exoplayer2/upstream/k0;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/upstream/k0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/k0$a;->a:Lcom/google/android/exoplayer2/upstream/m$a;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/m$a;->a()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/k0$a;->b:Lcom/google/android/exoplayer2/upstream/k0$b;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/k0;-><init>(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/k0$b;)V

    return-object v0
.end method
