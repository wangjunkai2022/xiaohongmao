.class final Lcom/google/common/collect/e3$v$a;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/e3$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3$v;
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
        "Lcom/google/common/collect/e3$v<",
        "TK;TV;>;",
        "Lcom/google/common/collect/e3$w<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/e3$v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e3$v$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/e3$v$a;

    invoke-direct {v0}, Lcom/google/common/collect/e3$v$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/e3$v$a;->a:Lcom/google/common/collect/e3$v$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h()Lcom/google/common/collect/e3$v$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/e3$v$a<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/e3$v$a;->a:Lcom/google/common/collect/e3$v$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/e3$o;Lcom/google/common/collect/e3$j;Lcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$j;
    .locals 0
    .param p3    # Lcom/google/common/collect/e3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    check-cast p1, Lcom/google/common/collect/e3$w;

    check-cast p2, Lcom/google/common/collect/e3$v;

    check-cast p3, Lcom/google/common/collect/e3$v;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e3$v$a;->g(Lcom/google/common/collect/e3$w;Lcom/google/common/collect/e3$v;Lcom/google/common/collect/e3$v;)Lcom/google/common/collect/e3$v;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/common/collect/e3$q;
    .locals 1

    sget-object v0, Lcom/google/common/collect/e3$q;->b:Lcom/google/common/collect/e3$q;

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/common/collect/e3$o;Lcom/google/common/collect/e3$j;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/e3$w;

    check-cast p2, Lcom/google/common/collect/e3$v;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e3$v$a;->k(Lcom/google/common/collect/e3$w;Lcom/google/common/collect/e3$v;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Lcom/google/common/collect/e3$o;Ljava/lang/Object;ILcom/google/common/collect/e3$j;)Lcom/google/common/collect/e3$j;
    .locals 0
    .param p4    # Lcom/google/common/collect/e3$j;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    check-cast p1, Lcom/google/common/collect/e3$w;

    check-cast p4, Lcom/google/common/collect/e3$v;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/e3$v$a;->i(Lcom/google/common/collect/e3$w;Ljava/lang/Object;ILcom/google/common/collect/e3$v;)Lcom/google/common/collect/e3$v;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/e3$v$a;->j(Lcom/google/common/collect/e3;II)Lcom/google/common/collect/e3$w;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/e3$w;Lcom/google/common/collect/e3$v;Lcom/google/common/collect/e3$v;)Lcom/google/common/collect/e3$v;
    .locals 1
    .param p3    # Lcom/google/common/collect/e3$v;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$w<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/e3$o;->x(Lcom/google/common/collect/e3$j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/e3$w;->Y(Lcom/google/common/collect/e3$w;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/e3$v;->g(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e3$v;)Lcom/google/common/collect/e3$v;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/e3$w;Ljava/lang/Object;ILcom/google/common/collect/e3$v;)Lcom/google/common/collect/e3$v;
    .locals 0
    .param p4    # Lcom/google/common/collect/e3$v;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$w<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/common/collect/e3$v;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/e3$v;-><init>(Ljava/lang/Object;ILcom/google/common/collect/e3$v;)V

    return-object p1
.end method

.method public j(Lcom/google/common/collect/e3;II)Lcom/google/common/collect/e3$w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3<",
            "TK;TV;",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e3$w<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/e3$w<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e3$w;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/e3$w;-><init>(Lcom/google/common/collect/e3;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/e3$w;Lcom/google/common/collect/e3$v;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3$w<",
            "TK;TV;>;",
            "Lcom/google/common/collect/e3$v<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/e3$w;->Y(Lcom/google/common/collect/e3$w;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/common/collect/e3$v;->h(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
