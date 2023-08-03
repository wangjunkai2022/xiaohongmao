.class public final synthetic Lcom/google/android/exoplayer2/source/ads/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/z$a;

.field public final synthetic c:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;Lcom/google/android/exoplayer2/source/z$a;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/i;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/i;->b:Lcom/google/android/exoplayer2/source/z$a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/i;->c:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/i;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/i;->b:Lcom/google/android/exoplayer2/source/z$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/i;->c:Ljava/io/IOException;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;->c(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$b;Lcom/google/android/exoplayer2/source/z$a;Ljava/io/IOException;)V

    return-void
.end method
