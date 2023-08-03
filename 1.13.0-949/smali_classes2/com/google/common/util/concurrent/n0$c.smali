.class final Lcom/google/common/util/concurrent/n0$c;
.super Lcom/google/common/util/concurrent/d$j;
.source "ImmediateFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/d$j<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/d$j;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/d;->N(Ljava/lang/Throwable;)Z

    return-void
.end method
