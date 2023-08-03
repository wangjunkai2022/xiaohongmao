.class public final synthetic Lcom/google/android/exoplayer2/scheduler/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/scheduler/b$d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/scheduler/b$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/scheduler/d;->a:Lcom/google/android/exoplayer2/scheduler/b$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/d;->a:Lcom/google/android/exoplayer2/scheduler/b$d;

    invoke-static {v0}, Lcom/google/android/exoplayer2/scheduler/b$d;->b(Lcom/google/android/exoplayer2/scheduler/b$d;)V

    return-void
.end method
