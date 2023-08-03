.class final Lcom/google/android/exoplayer2/source/e$b;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
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
.field public final a:Lcom/google/android/exoplayer2/source/z;

.field public final b:Lcom/google/android/exoplayer2/source/z$b;

.field public final c:Lcom/google/android/exoplayer2/source/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/e<",
            "TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/source/z$b;Lcom/google/android/exoplayer2/source/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/z;",
            "Lcom/google/android/exoplayer2/source/z$b;",
            "Lcom/google/android/exoplayer2/source/e<",
            "TT;>.a;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/e$b;->a:Lcom/google/android/exoplayer2/source/z;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/e$b;->b:Lcom/google/android/exoplayer2/source/z$b;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/e$b;->c:Lcom/google/android/exoplayer2/source/e$a;

    return-void
.end method
