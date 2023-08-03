.class public final synthetic Lcom/google/android/exoplayer2/source/f0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/h0$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/h0;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/s;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/f0;->a:Lcom/google/android/exoplayer2/source/h0$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/f0;->b:Lcom/google/android/exoplayer2/source/h0;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/f0;->c:Lcom/google/android/exoplayer2/source/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/f0;->a:Lcom/google/android/exoplayer2/source/h0$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/f0;->b:Lcom/google/android/exoplayer2/source/h0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/f0;->c:Lcom/google/android/exoplayer2/source/s;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->d(Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/h0;Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method
