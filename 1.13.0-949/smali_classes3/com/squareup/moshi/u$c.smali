.class public final Lcom/squareup/moshi/u$c;
.super Ljava/lang/Object;
.source "Moshi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/moshi/h$e;",
            ">;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/moshi/u$c;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/squareup/moshi/u$c;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/moshi/h$e;)Lcom/squareup/moshi/u$c;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/squareup/moshi/u$c;->a:Ljava/util/List;

    iget v1, p0, Lcom/squareup/moshi/u$c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/moshi/u$c;->b:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/Object;)Lcom/squareup/moshi/u$c;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/squareup/moshi/a;->c(Ljava/lang/Object;)Lcom/squareup/moshi/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/u$c;->a(Lcom/squareup/moshi/h$e;)Lcom/squareup/moshi/u$c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adapter == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/reflect/Type;Lcom/squareup/moshi/h;)Lcom/squareup/moshi/u$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/squareup/moshi/h<",
            "TT;>;)",
            "Lcom/squareup/moshi/u$c;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/squareup/moshi/u;->j(Ljava/lang/reflect/Type;Lcom/squareup/moshi/h;)Lcom/squareup/moshi/h$e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/u$c;->a(Lcom/squareup/moshi/h$e;)Lcom/squareup/moshi/u$c;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/squareup/moshi/h;)Lcom/squareup/moshi/u$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/h<",
            "TT;>;)",
            "Lcom/squareup/moshi/u$c;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/squareup/moshi/u;->k(Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/squareup/moshi/h;)Lcom/squareup/moshi/h$e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/u$c;->a(Lcom/squareup/moshi/h$e;)Lcom/squareup/moshi/u$c;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/squareup/moshi/h$e;)Lcom/squareup/moshi/u$c;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/squareup/moshi/u$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/lang/Object;)Lcom/squareup/moshi/u$c;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/squareup/moshi/a;->c(Ljava/lang/Object;)Lcom/squareup/moshi/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/u$c;->e(Lcom/squareup/moshi/h$e;)Lcom/squareup/moshi/u$c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adapter == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ljava/lang/reflect/Type;Lcom/squareup/moshi/h;)Lcom/squareup/moshi/u$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/squareup/moshi/h<",
            "TT;>;)",
            "Lcom/squareup/moshi/u$c;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/squareup/moshi/u;->j(Ljava/lang/reflect/Type;Lcom/squareup/moshi/h;)Lcom/squareup/moshi/h$e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/u$c;->e(Lcom/squareup/moshi/h$e;)Lcom/squareup/moshi/u$c;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/squareup/moshi/h;)Lcom/squareup/moshi/u$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/h<",
            "TT;>;)",
            "Lcom/squareup/moshi/u$c;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/squareup/moshi/u;->k(Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/squareup/moshi/h;)Lcom/squareup/moshi/h$e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/u$c;->e(Lcom/squareup/moshi/h$e;)Lcom/squareup/moshi/u$c;

    move-result-object p1

    return-object p1
.end method

.method public i()Lcom/squareup/moshi/u;
    .locals 1
    .annotation runtime Lr7/c;
    .end annotation

    new-instance v0, Lcom/squareup/moshi/u;

    invoke-direct {v0, p0}, Lcom/squareup/moshi/u;-><init>(Lcom/squareup/moshi/u$c;)V

    return-object v0
.end method
