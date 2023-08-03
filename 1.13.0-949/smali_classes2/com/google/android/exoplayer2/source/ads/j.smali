.class public final synthetic Lcom/google/android/exoplayer2/source/ads/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/ads/c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;Lcom/google/android/exoplayer2/source/ads/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/j;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/j;->b:Lcom/google/android/exoplayer2/source/ads/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/j;->a:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/j;->b:Lcom/google/android/exoplayer2/source/ads/c;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;->e(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;Lcom/google/android/exoplayer2/source/ads/c;)V

    return-void
.end method
