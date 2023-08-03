.class final Lcom/google/android/exoplayer2/offline/e0$d;
.super Lcom/google/android/exoplayer2/util/l0;
.source "SegmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/util/l0<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lcom/google/android/exoplayer2/offline/e0$c;

.field public final i:Lcom/google/android/exoplayer2/upstream/cache/b;

.field private final j:Lcom/google/android/exoplayer2/offline/e0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:[B

.field private final l:Lcom/google/android/exoplayer2/upstream/cache/k;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/offline/e0$c;Lcom/google/android/exoplayer2/upstream/cache/b;Lcom/google/android/exoplayer2/offline/e0$b;[B)V
    .locals 1
    .param p3    # Lcom/google/android/exoplayer2/offline/e0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/l0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/e0$d;->h:Lcom/google/android/exoplayer2/offline/e0$c;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/e0$d;->i:Lcom/google/android/exoplayer2/upstream/cache/b;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/e0$d;->j:Lcom/google/android/exoplayer2/offline/e0$b;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/e0$d;->k:[B

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/k;

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/e0$c;->b:Lcom/google/android/exoplayer2/upstream/o;

    invoke-direct {v0, p2, p1, p4, p3}, Lcom/google/android/exoplayer2/upstream/cache/k;-><init>(Lcom/google/android/exoplayer2/upstream/cache/b;Lcom/google/android/exoplayer2/upstream/o;[BLcom/google/android/exoplayer2/upstream/cache/k$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/e0$d;->l:Lcom/google/android/exoplayer2/upstream/cache/k;

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/e0$d;->l:Lcom/google/android/exoplayer2/upstream/cache/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/k;->b()V

    return-void
.end method

.method protected bridge synthetic e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/e0$d;->g()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected g()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/e0$d;->l:Lcom/google/android/exoplayer2/upstream/cache/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/k;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/e0$d;->j:Lcom/google/android/exoplayer2/offline/e0$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/e0$b;->c()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
