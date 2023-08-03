.class final enum Lcom/google/common/cache/j$f$c;
.super Lcom/google/common/cache/j$f;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/j$f;-><init>(Ljava/lang/String;ILcom/google/common/cache/j$a;)V

    return-void
.end method


# virtual methods
.method b(Lcom/google/common/cache/j$r;Lcom/google/common/cache/n;Lcom/google/common/cache/n;)Lcom/google/common/cache/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/j$r<",
            "TK;TV;>;",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/cache/j$f;->b(Lcom/google/common/cache/j$r;Lcom/google/common/cache/n;Lcom/google/common/cache/n;)Lcom/google/common/cache/n;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/google/common/cache/j$f;->c(Lcom/google/common/cache/n;Lcom/google/common/cache/n;)V

    return-object p1
.end method

.method e(Lcom/google/common/cache/j$r;Ljava/lang/Object;ILcom/google/common/cache/n;)Lcom/google/common/cache/n;
    .locals 0
    .param p4    # Lcom/google/common/cache/n;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/j$r<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/n<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/common/cache/j$y;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/cache/j$y;-><init>(Ljava/lang/Object;ILcom/google/common/cache/n;)V

    return-object p1
.end method
