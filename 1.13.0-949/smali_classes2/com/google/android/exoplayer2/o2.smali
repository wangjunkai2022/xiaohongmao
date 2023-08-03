.class public final synthetic Lcom/google/android/exoplayer2/o2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/n2;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/n2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/o2;->a:Lcom/google/android/exoplayer2/n2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/o2;->a:Lcom/google/android/exoplayer2/n2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/n2$c;->a(Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method
