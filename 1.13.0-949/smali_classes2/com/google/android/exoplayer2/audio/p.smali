.class public final synthetic Lcom/google/android/exoplayer2/audio/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/u$a;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/u$a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/p;->a:Lcom/google/android/exoplayer2/audio/u$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/p;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/p;->a:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/p;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/u$a;->c(Lcom/google/android/exoplayer2/audio/u$a;Ljava/lang/Exception;)V

    return-void
.end method
