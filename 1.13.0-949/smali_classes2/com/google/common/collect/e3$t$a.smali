.class final Lcom/google/common/collect/e3$t$a;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/e3$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/e3$k<",
        "TK;TV;",
        "Lcom/google/common/collect/e3$t<",
        "TK;TV;>;",
        "Lcom/google/common/collect/e3$u<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/e3$t$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e3$t$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/e3$t$a;

    invoke-direct {v0}, Lcom/google/common/collect/e3$t$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/e3$t$a;->a:Lcom/google/common/collect/e3$t$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h()Lcom/google/common/collect/e3$t$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/e3$t$a<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/e3$t$a;->a:Lcom/google/common/collect/e3$t$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/e3$o;Lcom/google/common/collect/e3$j;Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$j;
    .locals 0
    .param p3    # Lcom/google/common/collect/e3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    check-cast p1, Lcom/google/common/collect/e3$u;

    check-cast p2, Lcom/google/common/collect/e3$t;

    check-cast p3, Lcom/google/common/collect/e3$t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e3$t$a;->g(Lcom/google/common/collect/e3$u;Lcom/google/common/collect/e3$t;Lcom/google/common/collect/e3$t;)Lcom/google/common/collect/e3$t;

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

    check-cast p1, Lcom/google/common/collect/e3$u;

    check-cast p2, Lcom/google/common/collect/e3$t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e3$t$a;->k(Lcom/google/common/collect/e3$u;Lcom/google/common/collect/e3$t;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Lcom/google/common/collect/e3$o;Ljava/lang/Object;ILcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$j;
    .locals 0
    .param p4    # Lcom/google/common/collect/e3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    check-cast p1, Lcom/google/common/collect/e3$u;

    check-cast p4, Lcom/google/common/collect/e3$t;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/e3$t$a;->i(Lcom/google/common/collect/e3$u;Ljava/lang/Object;ILcom/google/common/collect/e3$t;)Lcom/google/common/collect/e3$t;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/google/common/collect/e3$q;
    .locals 1

    sget-object v0, Lcom/google/common/collect/e3$q;->a:Lcom/google/common/collect/e3$q;

    return-object v0
.end method

.method public bridge synthetic f(Lcom/google/common/collect/e3;II)Lcom/google/common/collect/e3$o;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e3$t$a;->j(Lcom/google/common/collect/e3;II)Lcom/google/common/collect/e3$u;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/e3$u;Lcom/google/common/collect/e3$t;Lcom/google/common/collect/e3$t;)Lcom/google/common/collect/e3$t;
    .locals 0
    .param p3    # Lcom/google/common/collect/e3$t;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$u<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e3$t<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e3$t<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e3$t<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p2, p3}, Lcom/google/common/collect/e3$t;->e(Lcom/google/common/collect/e3$t;)Lcom/google/common/collect/e3$t;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/e3$u;Ljava/lang/Object;ILcom/google/common/collect/e3$t;)Lcom/google/common/collect/e3$t;
    .locals 0
    .param p4    # Lcom/google/common/collect/e3$t;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$u<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/e3$t<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e3$t<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/common/collect/e3$t;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/e3$t;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e3$t;)V

    return-object p1
.end method

.method public j(Lcom/google/common/collect/e3;II)Lcom/google/common/collect/e3$u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3<",
            "TK;TV;",
            "Lcom/google/common/collect/e3$t<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e3$u<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/e3$u<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e3$u;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/e3$u;-><init>(Lcom/google/common/collect/e3;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/e3$u;Lcom/google/common/collect/e3$t;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$u<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e3$t<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    invoke-virtual {p2, p3}, Lcom/google/common/collect/e3$t;->f(Ljava/lang/Object;)V

    return-void
.end method
