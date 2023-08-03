.class public final Lcom/squareup/moshi/adapters/c;
.super Ljava/lang/Object;
.source "PolymorphicJsonAdapterFactory.java"

# interfaces
.implements Lcom/squareup/moshi/h$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/moshi/adapters/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/squareup/moshi/h$e;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/String;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lcom/squareup/moshi/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/squareup/moshi/h;)V
    .locals 0
    .param p5    # Lcom/squareup/moshi/h;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lcom/squareup/moshi/h<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/squareup/moshi/adapters/c;->a:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lcom/squareup/moshi/adapters/c;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/squareup/moshi/adapters/c;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/squareup/moshi/adapters/c;->d:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lcom/squareup/moshi/adapters/c;->e:Lcom/squareup/moshi/h;

    return-void
.end method

.method private a(Ljava/lang/Object;)Lcom/squareup/moshi/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/squareup/moshi/h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/moshi/adapters/c$a;

    invoke-direct {v0, p0, p1}, Lcom/squareup/moshi/adapters/c$a;-><init>(Lcom/squareup/moshi/adapters/c;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/moshi/adapters/c<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/c;
    .end annotation

    const-string v0, "baseType == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "labelKey == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/squareup/moshi/adapters/c;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/squareup/moshi/adapters/c;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/squareup/moshi/h;)V

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Lcom/squareup/moshi/adapters/c;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/squareup/moshi/adapters/c<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/squareup/moshi/adapters/c;->a(Ljava/lang/Object;)Lcom/squareup/moshi/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/adapters/c;->d(Lcom/squareup/moshi/h;)Lcom/squareup/moshi/adapters/c;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/u;)Lcom/squareup/moshi/h;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/u;",
            ")",
            "Lcom/squareup/moshi/h<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/squareup/moshi/z;->j(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/squareup/moshi/adapters/c;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/squareup/moshi/adapters/c;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p1, 0x0

    .line 3
    iget-object p2, p0, Lcom/squareup/moshi/adapters/c;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/squareup/moshi/adapters/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-virtual {p3, v0}, Lcom/squareup/moshi/u;->d(Ljava/lang/reflect/Type;)Lcom/squareup/moshi/h;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/squareup/moshi/adapters/c$b;

    iget-object v1, p0, Lcom/squareup/moshi/adapters/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/squareup/moshi/adapters/c;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/squareup/moshi/adapters/c;->d:Ljava/util/List;

    iget-object v5, p0, Lcom/squareup/moshi/adapters/c;->e:Lcom/squareup/moshi/h;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/moshi/adapters/c$b;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/squareup/moshi/h;)V

    .line 6
    invoke-virtual {p1}, Lcom/squareup/moshi/h;->nullSafe()Lcom/squareup/moshi/h;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lcom/squareup/moshi/h;)Lcom/squareup/moshi/adapters/c;
    .locals 7
    .param p1    # Lcom/squareup/moshi/h;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/h<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/squareup/moshi/adapters/c<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lcom/squareup/moshi/adapters/c;

    iget-object v1, p0, Lcom/squareup/moshi/adapters/c;->a:Ljava/lang/Class;

    iget-object v2, p0, Lcom/squareup/moshi/adapters/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/squareup/moshi/adapters/c;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/squareup/moshi/adapters/c;->d:Ljava/util/List;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/moshi/adapters/c;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/squareup/moshi/h;)V

    return-object v6
.end method

.method public e(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/moshi/adapters/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subtype == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "label == null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/squareup/moshi/adapters/c;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/squareup/moshi/adapters/c;->c:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/squareup/moshi/adapters/c;->d:Ljava/util/List;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p1, Lcom/squareup/moshi/adapters/c;

    iget-object v2, p0, Lcom/squareup/moshi/adapters/c;->a:Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/moshi/adapters/c;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/squareup/moshi/adapters/c;->e:Lcom/squareup/moshi/h;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/squareup/moshi/adapters/c;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/squareup/moshi/h;)V

    return-object p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Labels must be unique."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
