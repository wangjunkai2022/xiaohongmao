.class final Lcom/google/android/exoplayer2/text/cea/e$c;
.super Lcom/google/android/exoplayer2/text/i;
.source "CeaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private f:Lcom/google/android/exoplayer2/decoder/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/f$a<",
            "Lcom/google/android/exoplayer2/text/cea/e$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/decoder/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/decoder/f$a<",
            "Lcom/google/android/exoplayer2/text/cea/e$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/i;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/e$c;->f:Lcom/google/android/exoplayer2/decoder/f$a;

    return-void
.end method


# virtual methods
.method public final o()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e$c;->f:Lcom/google/android/exoplayer2/decoder/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/decoder/f$a;->a(Lcom/google/android/exoplayer2/decoder/f;)V

    return-void
.end method
