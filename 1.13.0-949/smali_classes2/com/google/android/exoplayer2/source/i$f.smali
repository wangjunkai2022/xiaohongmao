.class final Lcom/google/android/exoplayer2/source/i$f;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/android/exoplayer2/source/i$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;Lcom/google/android/exoplayer2/source/i$d;)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/source/i$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Lcom/google/android/exoplayer2/source/i$d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/source/i$f;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/i$f;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/i$f;->c:Lcom/google/android/exoplayer2/source/i$d;

    return-void
.end method
