.class final Lcom/google/common/hash/u$b;
.super Ljava/lang/Object;
.source "LongAddables.java"

# interfaces
.implements Lcom/google/common/base/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/i0<",
        "Lcom/google/common/hash/t;",
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
.method public a()Lcom/google/common/hash/t;
    .locals 2

    new-instance v0, Lcom/google/common/hash/u$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/u$c;-><init>(Lcom/google/common/hash/u$a;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/hash/u$b;->a()Lcom/google/common/hash/t;

    move-result-object v0

    return-object v0
.end method
