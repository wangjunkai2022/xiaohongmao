.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/mediacodec/h;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/mediacodec/h;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/g;->a:Lcom/google/android/exoplayer2/mediacodec/h;

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/g;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/g;->a:Lcom/google/android/exoplayer2/mediacodec/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/g;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/h;->a(Lcom/google/android/exoplayer2/mediacodec/h;Ljava/lang/Runnable;)V

    return-void
.end method
