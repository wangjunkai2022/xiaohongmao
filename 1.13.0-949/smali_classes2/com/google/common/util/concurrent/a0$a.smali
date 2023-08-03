.class public abstract Lcom/google/common/util/concurrent/a0$a;
.super Lcom/google/common/util/concurrent/a0;
.source "ForwardingCheckedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/a0<",
        "TV;TX;>;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/q<",
            "TV;TX;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/common/util/concurrent/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/q<",
            "TV;TX;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a0;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/q;

    iput-object p1, p0, Lcom/google/common/util/concurrent/a0$a;->a:Lcom/google/common/util/concurrent/q;

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a0$a;->O()Lcom/google/common/util/concurrent/q;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Ljava/util/concurrent/Future;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a0$a;->O()Lcom/google/common/util/concurrent/q;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic N()Lcom/google/common/util/concurrent/q0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a0$a;->O()Lcom/google/common/util/concurrent/q;

    move-result-object v0

    return-object v0
.end method

.method protected final O()Lcom/google/common/util/concurrent/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/q<",
            "TV;TX;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/a0$a;->a:Lcom/google/common/util/concurrent/q;

    return-object v0
.end method
