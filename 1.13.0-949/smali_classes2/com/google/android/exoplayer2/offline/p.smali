.class public final synthetic Lcom/google/android/exoplayer2/offline/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/offline/r;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/p;->a:Lcom/google/android/exoplayer2/offline/r;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/p;->a:Lcom/google/android/exoplayer2/offline/r;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/offline/r;->b(Lcom/google/android/exoplayer2/offline/r;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
