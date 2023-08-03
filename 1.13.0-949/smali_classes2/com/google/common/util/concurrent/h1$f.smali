.class final Lcom/google/common/util/concurrent/h1$f;
.super Ljava/lang/Object;
.source "Striped.java"

# interfaces
.implements Lcom/google/common/base/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/i0<",
        "Ljava/util/concurrent/locks/ReadWriteLock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/h1$o;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/h1$o;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/h1$f;->a()Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    return-object v0
.end method
