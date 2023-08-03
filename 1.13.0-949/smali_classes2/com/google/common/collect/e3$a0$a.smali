.class final Lcom/google/common/collect/e3$a0$a;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/e3$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3$a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/e3$k<",
        "TK;",
        "Lcom/google/common/collect/d3$a;",
        "Lcom/google/common/collect/e3$a0<",
        "TK;>;",
        "Lcom/google/common/collect/e3$b0<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/e3$a0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e3$a0$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/e3$a0$a;

    invoke-direct {v0}, Lcom/google/common/collect/e3$a0$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/e3$a0$a;->a:Lcom/google/common/collect/e3$a0$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h()Lcom/google/common/collect/e3$a0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/e3$a0$a<",
            "TK;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/e3$a0$a;->a:Lcom/google/common/collect/e3$a0$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/e3$o;Lcom/google/common/collect/e3$j;Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$j;
    .locals 0
    .param p3    # Lcom/google/common/collect/e3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    check-cast p1, Lcom/google/common/collect/e3$b0;

    check-cast p2, Lcom/google/common/collect/e3$a0;

    check-cast p3, Lcom/google/common/collect/e3$a0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e3$a0$a;->g(Lcom/google/common/collect/e3$b0;Lcom/google/common/collect/e3$a0;Lcom/google/common/collect/e3$a0;)Lcom/google/common/collect/e3$a0;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/common/collect/e3$q;
    .locals 1

    sget-object v0, Lcom/google/common/collect/e3$q;->a:Lcom/google/common/collect/e3$q;

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/common/collect/e3$o;Lcom/google/common/collect/e3$j;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/e3$b0;

    check-cast p2, Lcom/google/common/collect/e3$a0;

    check-cast p3, Lcom/google/common/collect/d3$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e3$a0$a;->k(Lcom/google/common/collect/e3$b0;Lcom/google/common/collect/e3$a0;Lcom/google/common/collect/d3$a;)V

    return-void
.end method

.method public bridge synthetic d(Lcom/google/common/collect/e3$o;Ljava/lang/Object;ILcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$j;
    .locals 0
    .param p4    # Lcom/google/common/collect/e3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    check-cast p1, Lcom/google/common/collect/e3$b0;

    check-cast p4, Lcom/google/common/collect/e3$a0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/e3$a0$a;->i(Lcom/google/common/collect/e3$b0;Ljava/lang/Object;ILcom/google/common/collect/e3$a0;)Lcom/google/common/collect/e3$a0;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/google/common/collect/e3$q;
    .locals 1

    sget-object v0, Lcom/google/common/collect/e3$q;->b:Lcom/google/common/collect/e3$q;

    return-object v0
.end method

.method public bridge synthetic f(Lcom/google/common/collect/e3;II)Lcom/google/common/collect/e3$o;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e3$a0$a;->j(Lcom/google/common/collect/e3;II)Lcom/google/common/collect/e3$b0;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/e3$b0;Lcom/google/common/collect/e3$a0;Lcom/google/common/collect/e3$a0;)Lcom/google/common/collect/e3$a0;
    .locals 1
    .param p3    # Lcom/google/common/collect/e3$a0;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$b0<",
            "TK;>;",
            "Lcom/google/common/collect/e3$a0<",
            "TK;>;",
            "Lcom/google/common/collect/e3$a0<",
            "TK;>;)",
            "Lcom/google/common/collect/e3$a0<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/common/collect/e3$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/e3$b0;->Y(Lcom/google/common/collect/e3$b0;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/e3$a0;->e(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e3$a0;)Lcom/google/common/collect/e3$a0;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/e3$b0;Ljava/lang/Object;ILcom/google/common/collect/e3$a0;)Lcom/google/common/collect/e3$a0;
    .locals 1
    .param p4    # Lcom/google/common/collect/e3$a0;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$b0<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/e3$a0<",
            "TK;>;)",
            "Lcom/google/common/collect/e3$a0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e3$a0;

    invoke-static {p1}, Lcom/google/common/collect/e3$b0;->Y(Lcom/google/common/collect/e3$b0;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/e3$a0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/e3$a0;)V

    return-object v0
.end method

.method public j(Lcom/google/common/collect/e3;II)Lcom/google/common/collect/e3$b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3<",
            "TK;",
            "Lcom/google/common/collect/d3$a;",
            "Lcom/google/common/collect/e3$a0<",
            "TK;>;",
            "Lcom/google/common/collect/e3$b0<",
            "TK;>;>;II)",
            "Lcom/google/common/collect/e3$b0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e3$b0;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/e3$b0;-><init>(Lcom/google/common/collect/e3;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/e3$b0;Lcom/google/common/collect/e3$a0;Lcom/google/common/collect/d3$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$b0<",
            "TK;>;",
            "Lcom/google/common/collect/e3$a0<",
            "TK;>;",
            "Lcom/google/common/collect/d3$a;",
            ")V"
        }
    .end annotation

    return-void
.end method
