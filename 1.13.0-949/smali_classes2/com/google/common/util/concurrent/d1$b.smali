.class final Lcom/google/common/util/concurrent/d1$b;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lcom/google/common/util/concurrent/t0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/t0$a<",
        "Lcom/google/common/util/concurrent/d1$d;",
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
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/d1$d;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/d1$b;->b(Lcom/google/common/util/concurrent/d1$d;)V

    return-void
.end method

.method public b(Lcom/google/common/util/concurrent/d1$d;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/d1$d;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "stopped()"

    return-object v0
.end method
